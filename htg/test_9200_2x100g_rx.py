#!/usr/bin/env python

import casperfpga, time, struct, sys, logging, socket, numpy

fabric_port= 10000         
mac_base= (2<<40) + (2<<32)
mac_base = 2423812259840
mac_base = 281474976710655
ip_base = 192*(2**24) + 168*(2**16) + 100*(2**8)

tx_core_name = 'onehundred_gbe'
rx_core_name = 'onehundred_gbe1'

fpgfile = 'testing.fpg'
fpga=[]

def exit_fail():
    sys.exit()

def exit_clean():
    try:
        for f in fpgas: f.stop()
    except: pass
    sys.exit()

if __name__ == '__main__':

    fpga_address = sys.argv[1]


try:
    print('Connecting to server %s... '%(fpga_address)),
    fpga = casperfpga.CasperFpga(fpga_address)
    time.sleep(10)

    if fpga.is_connected():
        print ('ok\n')
    else:
        print ('ERROR connecting to server %s.\n'%(snap))
        exit_fail()
    
    print ('------------------------')
    print ('Reading FPGA fpg file...',
    fpga.get_system_information(fpgfile))
    print ('ok')

    print ('---------------------------')
    print ('Configuring receiver core...')
    gbe_rx = fpga.gbes[rx_core_name]
    #gbe_rx.set_arp_table(mac_base+numpy.arange(256))
    #gbe_rx.configure_core(mac_base+21,ip_base+21,fabric_port+1)
    gbe_rx.configure_core(mac_base,ip_base+21,fabric_port+1)
    print ('done')

    print ('Configuring transmitter core...')
    #Set IP address of snap and set arp-table
    gbe_tx = fpga.gbes[tx_core_name]
    #gbe_tx.set_arp_table(mac_base+numpy.arange(256))
    #gbe_tx.configure_core(mac_base+20,ip_base+20,fabric_port)
    gbe_tx.configure_core(mac_base,ip_base+20,fabric_port)
    print ('done')

    print ('Setting-up destination addresses...')
    fpga.write_int('dest_ip1',ip_base+21)
    fpga.write_int('dest_port1',fabric_port+1)
    print ('done')


    #print ('\n\n===============================')
    #print ('100GbE Transmitter core details:')
    #print ('===============================')
    #print ("Note that for some IP address values, only the lower 8 bits are valid!")
    #gbe_tx.print_gbe_core_details()
    #print ('\n\n============================')
    #print ('100GbE Receiver core details:')
    #print ('============================')
    #print ("Note that for some IP address values, only the lower 8 bits are valid!")
    #gbe_rx.print_gbe_core_details()


except KeyboardInterrupt:
    exit_clean()
except Exception as inst:
    raise

exit_clean()

