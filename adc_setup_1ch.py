import casperfpga,casperfpga.snapadc,numpy,struct,time
import matplotlib.pyplot as plt

fpga = casperfpga.CasperFpga('192.168.10.26',port=69,timeout=10)
time.sleep(0.2)

adc = casperfpga.snapadc.SNAPADC(fpga,ref=50)

for i in range(3):
    # num Channel refers to the ADC mode. Can be 1 (1GHz), 2(500MHz) or 4(250MHz). 
    if adc.init(samplingRate=250,numChannel=1,resolution=8) == 0:
        done = True
        break
    print 'done (took %d attempts)' % (i+1)
    if not done:
        print 'Failed to calibrate ADC'
        exit_clean()

adc.selectADC(0)
# related to the ADC mode. Can be [1,1,1,1] (1GHz), [1,1,2,2] (500MHz) ,[1,2,3,4] (250MHz)
# !!! 500MHz might be [1,2,1,2], need to test to refer to data sheet to confirm.
adc.adc.selectInput([1,1,1,1])

