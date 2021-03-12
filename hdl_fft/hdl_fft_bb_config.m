
function hdl_fft_bb_ip_struct_config(this_block)

  % Revision History:
  %
  %   11-Mar-2021  (12:48 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /data/home/kocz/casper/dev/models/hdl_fft_bb.vhd
  %
  %

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('hdl_fft_bb_ip_struct');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  #this_block.tagAsCombinational;

  this_block.addSimulinkInport('rst');
  this_block.addSimulinkInport('in_sync');
  this_block.addSimulinkInport('in_valid');
  this_block.addSimulinkInport('shiftreg');
  this_block.addSimulinkInport('in_im_0');
  this_block.addSimulinkInport('in_re_0');

  this_block.addSimulinkOutport('out_sync');
  this_block.addSimulinkOutport('out_valid');
  this_block.addSimulinkOutport('ovflw');
  this_block.addSimulinkOutport('out_im_0');
  this_block.addSimulinkOutport('out_re_0');

  out_sync_port = this_block.port('out_sync');
  out_sync_port.setType('UFix_1_0');
  out_sync_port.useHDLVector(false);
  out_valid_port = this_block.port('out_valid');
  out_valid_port.setType('UFix_1_0');
  out_valid_port.useHDLVector(false);
  ovflw_port = this_block.port('ovflw');
  ovflw_port.setType('UFix_1_0');
  ovflw_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    % (!) Port 'rst' appeared to have dynamic type in the HDL -- please add type checking as appropriate;

    % (!) Port 'in_sync' appeared to have dynamic type in the HDL -- please add type checking as appropriate;

    % (!) Port 'in_valid' appeared to have dynamic type in the HDL -- please add type checking as appropriate;

    % (!) Port 'shiftreg' appeared to have dynamic type in the HDL -- please add type checking as appropriate;

    % (!) Port 'in_im_0' appeared to have dynamic type in the HDL -- please add type checking as appropriate;

    % (!) Port 'in_re_0' appeared to have dynamic type in the HDL -- please add type checking as appropriate;

  % (!) Port 'out_im_0' appeared to have dynamic type in the HDL
  % --- you must add an appropriate type setting for this port
  % (!) Port 'out_re_0' appeared to have dynamic type in the HDL
  % --- you must add an appropriate type setting for this port
  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk_1','ce_1')
   end  % if(inputRatesKnown)
  % -----------------------------

    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('hdl_fft_bb.vhd');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

