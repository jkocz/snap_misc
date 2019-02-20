import casperfpga,casperfpga.snapadc,numpy,struct,time

fpga = casperfpga.CasperFpga('192.168.10.26', port=69, timeout=10)
time.sleep(0.2)

adc = casperfpga.snapadc.SNAPADC(fpga,ref=None)

done = False

for i in range(3):
    # num Channel refers to the ADC mode. Can be 1 (1GHz), 2(500MHz) or 4(250MHz). 
    if adc.init(samplingRate=250,numChannel=4,resolution=8) == 0:
        done = True
        break
    print 'done (took %d attempts)' % (i+1)
    if not done:
        print 'Failed to calibrate ADC'
        exit_clean()

adc.selectADC(0)
# related to the ADC mode. Can be [1,1,1,1] (1GHz), [1,1,2,2] (500MHz) ,[1,2,3,4] (250MHz)

adc.adc.selectInput([1,2,3,4])

