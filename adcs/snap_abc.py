import struct
import numpy as np


SNAPSHOT_SAMPLES_PER_POL = 65536 

def get_adcA(fpga):
        """
        Get a block of samples from both pols of `antenna`
        returns samples_x, samples_y
        """
        fpga.write_int('snapA_ctrl', 0)
        fpga.write_int('snapA_ctrl', 1)
        fpga.write_int('snapA_ctrl', 3)
        d = struct.unpack('>%db' % (2*SNAPSHOT_SAMPLES_PER_POL), fpga.read('snapA_bram', 2*SNAPSHOT_SAMPLES_PER_POL))
        x = []
        y = []
        for i in range(SNAPSHOT_SAMPLES_PER_POL // 2):
            x += [d[4*i]]
            x += [d[4*i + 1]]
            y += [d[4*i + 2]]
            y += [d[4*i + 3]]
        return np.array(x), np.array(y)

def get_adcB(fpga):
        """
        Get a block of samples from both pols of `antenna`
        returns samples_x, samples_y
        """
        fpga.write_int('snapB_ctrl', 0)
        fpga.write_int('snapB_ctrl', 1)
        fpga.write_int('snapB_ctrl', 3)
        d = struct.unpack('>%db' % (2*SNAPSHOT_SAMPLES_PER_POL), fpga.read('snapB_bram', 2*SNAPSHOT_SAMPLES_PER_POL))
        x = []
        y = []
        for i in range(SNAPSHOT_SAMPLES_PER_POL // 2):
            x += [d[4*i]]
            x += [d[4*i + 1]]
            y += [d[4*i + 2]]
            y += [d[4*i + 3]]
        return np.array(x), np.array(y)

def get_adcC(fpga):
        """
        Get a block of samples from both pols of `antenna`
        returns samples_x, samples_y
        """
        fpga.write_int('snapC_ctrl', 0)
        fpga.write_int('snapC_ctrl', 1)
        fpga.write_int('snapC_ctrl', 3)
        d = struct.unpack('>%db' % (2*SNAPSHOT_SAMPLES_PER_POL), fpga.read('snapC_bram', 2*SNAPSHOT_SAMPLES_PER_POL))
        x = []
        y = []
        for i in range(SNAPSHOT_SAMPLES_PER_POL // 2):
            x += [d[4*i]]
            x += [d[4*i + 1]]
            y += [d[4*i + 2]]
            y += [d[4*i + 3]]
        return np.array(x), np.array(y)
