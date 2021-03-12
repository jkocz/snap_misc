
function fft_2019_rord_config(this_block)


  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('fft_2019_rord_ip_struct');

  this_block.addSimulinkInport('sync');
  this_block.addSimulinkInport('fft_shift');
  this_block.addSimulinkInport('pol1_in1');
  this_block.addSimulinkInport('pol1_in2');
  this_block.addSimulinkInport('pol1_in3');
  this_block.addSimulinkInport('pol1_in4');
  this_block.addSimulinkInport('pol1_in5');
  this_block.addSimulinkInport('pol1_in6');
  this_block.addSimulinkInport('pol1_in7');
  this_block.addSimulinkInport('pol1_in8');
  this_block.addSimulinkInport('pol1_in9');
  this_block.addSimulinkInport('pol1_in10');
  this_block.addSimulinkInport('pol1_in11');
  this_block.addSimulinkInport('pol1_in12');
  this_block.addSimulinkInport('pol1_in13');
  this_block.addSimulinkInport('pol1_in14');
  this_block.addSimulinkInport('pol1_in15');
  this_block.addSimulinkInport('pol1_in16');
  this_block.addSimulinkInport('pol1_in17');
  this_block.addSimulinkInport('pol1_in18');
  this_block.addSimulinkInport('pol1_in19');
  this_block.addSimulinkInport('pol1_in20');
  this_block.addSimulinkInport('pol1_in21');
  this_block.addSimulinkInport('pol1_in22');
  this_block.addSimulinkInport('pol1_in23');
  this_block.addSimulinkInport('pol1_in24');
  this_block.addSimulinkInport('pol1_in25');
  this_block.addSimulinkInport('pol1_in26');
  this_block.addSimulinkInport('pol1_in27');
  this_block.addSimulinkInport('pol1_in28');
  this_block.addSimulinkInport('pol1_in29');
  this_block.addSimulinkInport('pol1_in30');
  this_block.addSimulinkInport('pol1_in31');
  this_block.addSimulinkInport('pol1_in32');
  this_block.addSimulinkInport('pol1_in33');
  this_block.addSimulinkInport('pol1_in34');
  this_block.addSimulinkInport('pol1_in35');
  this_block.addSimulinkInport('pol1_in36');
  this_block.addSimulinkInport('pol1_in37');
  this_block.addSimulinkInport('pol1_in38');
  this_block.addSimulinkInport('pol1_in39');
  this_block.addSimulinkInport('pol1_in40');
  this_block.addSimulinkInport('pol1_in41');
  this_block.addSimulinkInport('pol1_in42');
  this_block.addSimulinkInport('pol1_in43');
  this_block.addSimulinkInport('pol1_in44');
  this_block.addSimulinkInport('pol1_in45');
  this_block.addSimulinkInport('pol1_in46');
  this_block.addSimulinkInport('pol1_in47');
  this_block.addSimulinkInport('pol1_in48');
  this_block.addSimulinkInport('pol1_in49');
  this_block.addSimulinkInport('pol1_in50');
  this_block.addSimulinkInport('pol1_in51');
  this_block.addSimulinkInport('pol1_in52');
  this_block.addSimulinkInport('pol1_in53');
  this_block.addSimulinkInport('pol1_in54');
  this_block.addSimulinkInport('pol1_in55');
  this_block.addSimulinkInport('pol1_in56');
  this_block.addSimulinkInport('pol1_in57');
  this_block.addSimulinkInport('pol1_in58');
  this_block.addSimulinkInport('pol1_in59');
  this_block.addSimulinkInport('pol1_in60');
  this_block.addSimulinkInport('pol1_in61');
  this_block.addSimulinkInport('pol1_in62');
  this_block.addSimulinkInport('pol1_in63');
  this_block.addSimulinkInport('pol1_in64');

  this_block.addSimulinkOutport('sync_out');
  this_block.addSimulinkOutport('pol0_out0');
  this_block.addSimulinkOutport('pol0_out1');
  this_block.addSimulinkOutport('pol0_out2');
  this_block.addSimulinkOutport('pol0_out3');
  this_block.addSimulinkOutport('pol0_out4');
  this_block.addSimulinkOutport('pol0_out5');
  this_block.addSimulinkOutport('pol0_out6');
  this_block.addSimulinkOutport('pol0_out7');
  this_block.addSimulinkOutport('pol0_out8');
  this_block.addSimulinkOutport('pol0_out9');
  this_block.addSimulinkOutport('pol0_out10');
  this_block.addSimulinkOutport('pol0_out11');
  this_block.addSimulinkOutport('pol0_out12');
  this_block.addSimulinkOutport('pol0_out13');
  this_block.addSimulinkOutport('pol0_out14');
  this_block.addSimulinkOutport('pol0_out15');
  this_block.addSimulinkOutport('pol0_out16');
  this_block.addSimulinkOutport('pol0_out17');
  this_block.addSimulinkOutport('pol0_out18');
  this_block.addSimulinkOutport('pol0_out19');
  this_block.addSimulinkOutport('pol0_out20');
  this_block.addSimulinkOutport('pol0_out21');
  this_block.addSimulinkOutport('pol0_out22');
  this_block.addSimulinkOutport('pol0_out23');
  this_block.addSimulinkOutport('pol0_out24');
  this_block.addSimulinkOutport('pol0_out25');
  this_block.addSimulinkOutport('pol0_out26');
  this_block.addSimulinkOutport('pol0_out27');
  this_block.addSimulinkOutport('pol0_out28');
  this_block.addSimulinkOutport('pol0_out29');
  this_block.addSimulinkOutport('pol0_out30');
  this_block.addSimulinkOutport('pol0_out31');
  this_block.addSimulinkOutport('fft_of');


  overflow_port = this_block.port('fft_of');
  overflow_port.setType('UFix_16_0');
  out0_port = this_block.port('pol0_out0');
  out0_port.setType('UFix_36_0');
  out1_port = this_block.port('pol0_out1');
  out1_port.setType('UFix_36_0');
  out2_port = this_block.port('pol0_out2');
  out2_port.setType('UFix_36_0');
  out3_port = this_block.port('pol0_out3');
  out3_port.setType('UFix_36_0');
  out4_port = this_block.port('pol0_out4');
  out4_port.setType('UFix_36_0');
  out5_port = this_block.port('pol0_out5');
  out5_port.setType('UFix_36_0');
  out6_port = this_block.port('pol0_out6');
  out6_port.setType('UFix_36_0');
  out7_port = this_block.port('pol0_out7');
  out7_port.setType('UFix_36_0');
  out8_port = this_block.port('pol0_out8');
  out8_port.setType('UFix_36_0');
  out9_port = this_block.port('pol0_out9');
  out9_port.setType('UFix_36_0');
  out10_port = this_block.port('pol0_out10');
  out10_port.setType('UFix_36_0');
  out11_port = this_block.port('pol0_out11');
  out11_port.setType('UFix_36_0');
  out12_port = this_block.port('pol0_out12');
  out12_port.setType('UFix_36_0');
  out13_port = this_block.port('pol0_out13');
  out13_port.setType('UFix_36_0');
  out14_port = this_block.port('pol0_out14');
  out14_port.setType('UFix_36_0');
  out15_port = this_block.port('pol0_out15');
  out15_port.setType('UFix_36_0');
  out16_port = this_block.port('pol0_out16');
  out16_port.setType('UFix_36_0');
  out17_port = this_block.port('pol0_out17');
  out17_port.setType('UFix_36_0');
  out18_port = this_block.port('pol0_out18');
  out18_port.setType('UFix_36_0');
  out19_port = this_block.port('pol0_out19');
  out19_port.setType('UFix_36_0');
  out20_port = this_block.port('pol0_out20');
  out20_port.setType('UFix_36_0');
  out21_port = this_block.port('pol0_out21');
  out21_port.setType('UFix_36_0');
  out22_port = this_block.port('pol0_out22');
  out22_port.setType('UFix_36_0');
  out23_port = this_block.port('pol0_out23');
  out23_port.setType('UFix_36_0');
  out24_port = this_block.port('pol0_out24');
  out24_port.setType('UFix_36_0');
  out25_port = this_block.port('pol0_out25');
  out25_port.setType('UFix_36_0');
  out26_port = this_block.port('pol0_out26');
  out26_port.setType('UFix_36_0');
  out27_port = this_block.port('pol0_out27');
  out27_port.setType('UFix_36_0');
  out28_port = this_block.port('pol0_out28');
  out28_port.setType('UFix_36_0');
  out29_port = this_block.port('pol0_out29');
  out29_port.setType('UFix_36_0');
  out30_port = this_block.port('pol0_out30');
  out30_port.setType('UFix_36_0');
  out31_port = this_block.port('pol0_out31');
  out31_port.setType('UFix_36_0');
  sync_out_port = this_block.port('sync_out');
  sync_out_port.setType('UFix_1_0');
  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.
    
    if (this_block.port('pol1_in1').width ~= 18;
      this_block.setError('Input data type for port "pol1_in1" must have width=18.');
    end
    if (this_block.port('pol1_in2').width ~= 18;
      this_block.setError('Input data type for port "pol1_in2" must have width=18.');
    end
    if (this_block.port('pol1_in3').width ~= 18;
      this_block.setError('Input data type for port "pol1_in3" must have width=18.');
    end
    if (this_block.port('pol1_in4').width ~= 18;
      this_block.setError('Input data type for port "pol1_in4" must have width=18.');
    end
    if (this_block.port('pol1_in5').width ~= 18;
      this_block.setError('Input data type for port "pol1_in5" must have width=18.');
    end
    if (this_block.port('pol1_in6').width ~= 18;
      this_block.setError('Input data type for port "pol1_in6" must have width=18.');
    end
    if (this_block.port('pol1_in7').width ~= 18;
      this_block.setError('Input data type for port "pol1_in7" must have width=18.');
    end
    if (this_block.port('pol1_in8').width ~= 18;
      this_block.setError('Input data type for port "pol1_in8" must have width=18.');
    end
    if (this_block.port('pol1_in9').width ~= 18;
      this_block.setError('Input data type for port "pol1_in9" must have width=18.');
    end
    if (this_block.port('pol1_in10').width ~= 18;
      this_block.setError('Input data type for port "pol1_in10" must have width=18.');
    end
    if (this_block.port('pol1_in11').width ~= 18;
      this_block.setError('Input data type for port "pol1_in11" must have width=18.');
    end
    if (this_block.port('pol1_in12').width ~= 18;
      this_block.setError('Input data type for port "pol1_in12" must have width=18.');
    end
    if (this_block.port('pol1_in13').width ~= 18;
      this_block.setError('Input data type for port "pol1_in13" must have width=18.');
    end
    if (this_block.port('pol1_in14').width ~= 18;
      this_block.setError('Input data type for port "pol1_in14" must have width=18.');
    end
    if (this_block.port('pol1_in15').width ~= 18;
      this_block.setError('Input data type for port "pol1_in15" must have width=18.');
    end
    if (this_block.port('pol1_in16').width ~= 18;
      this_block.setError('Input data type for port "pol1_in16" must have width=18.');
    end
    if (this_block.port('pol1_in17').width ~= 18;
      this_block.setError('Input data type for port "pol1_in17" must have width=18.');
    end
    if (this_block.port('pol1_in18').width ~= 18;
      this_block.setError('Input data type for port "pol1_in18" must have width=18.');
    end
    if (this_block.port('pol1_in19').width ~= 18;
      this_block.setError('Input data type for port "pol1_in19" must have width=18.');
    end
    if (this_block.port('pol1_in20').width ~= 18;
      this_block.setError('Input data type for port "pol1_in20" must have width=18.');
    end
    if (this_block.port('pol1_in21').width ~= 18;
      this_block.setError('Input data type for port "pol1_in21" must have width=18.');
    end
    if (this_block.port('pol1_in22').width ~= 18;
      this_block.setError('Input data type for port "pol1_in22" must have width=18.');
    end
    if (this_block.port('pol1_in23').width ~= 18;
      this_block.setError('Input data type for port "pol1_in23" must have width=18.');
    end
    if (this_block.port('pol1_in24').width ~= 18;
      this_block.setError('Input data type for port "pol1_in24" must have width=18.');
    end
    if (this_block.port('pol1_in25').width ~= 18;
      this_block.setError('Input data type for port "pol1_in25" must have width=18.');
    end
    if (this_block.port('pol1_in26').width ~= 18;
      this_block.setError('Input data type for port "pol1_in26" must have width=18.');
    end
    if (this_block.port('pol1_in27').width ~= 18;
      this_block.setError('Input data type for port "pol1_in27" must have width=18.');
    end
    if (this_block.port('pol1_in28').width ~= 18;
      this_block.setError('Input data type for port "pol1_in28" must have width=18.');
    end
    if (this_block.port('pol1_in29').width ~= 18;
      this_block.setError('Input data type for port "pol1_in29" must have width=18.');
    end
    if (this_block.port('pol1_in30').width ~= 18;
      this_block.setError('Input data type for port "pol1_in30" must have width=18.');
    end
    if (this_block.port('pol1_in31').width ~= 18;
      this_block.setError('Input data type for port "pol1_in31" must have width=18.');
    end
    if (this_block.port('pol1_in32').width ~= 18;
      this_block.setError('Input data type for port "pol1_in32" must have width=18.');
    end
    if (this_block.port('pol1_in33').width ~= 18;
      this_block.setError('Input data type for port "pol1_in33" must have width=18.');
    end
    if (this_block.port('pol1_in34').width ~= 18;
      this_block.setError('Input data type for port "pol1_in34" must have width=18.');
    end
    if (this_block.port('pol1_in35').width ~= 18;
      this_block.setError('Input data type for port "pol1_in35" must have width=18.');
    end
    if (this_block.port('pol1_in36').width ~= 18;
      this_block.setError('Input data type for port "pol1_in36" must have width=18.');
    end
    if (this_block.port('pol1_in37').width ~= 18;
      this_block.setError('Input data type for port "pol1_in37" must have width=18.');
    end
    if (this_block.port('pol1_in38').width ~= 18;
      this_block.setError('Input data type for port "pol1_in38" must have width=18.');
    end
    if (this_block.port('pol1_in39').width ~= 18;
      this_block.setError('Input data type for port "pol1_in39" must have width=18.');
    end
    if (this_block.port('pol1_in40').width ~= 18;
      this_block.setError('Input data type for port "pol1_in40" must have width=18.');
    end
    if (this_block.port('pol1_in41').width ~= 18;
      this_block.setError('Input data type for port "pol1_in41" must have width=18.');
    end
    if (this_block.port('pol1_in42').width ~= 18;
      this_block.setError('Input data type for port "pol1_in42" must have width=18.');
    end
    if (this_block.port('pol1_in43').width ~= 18;
      this_block.setError('Input data type for port "pol1_in43" must have width=18.');
    end
    if (this_block.port('pol1_in44').width ~= 18;
      this_block.setError('Input data type for port "pol1_in44" must have width=18.');
    end
    if (this_block.port('pol1_in45').width ~= 18;
      this_block.setError('Input data type for port "pol1_in45" must have width=18.');
    end
    if (this_block.port('pol1_in46').width ~= 18;
      this_block.setError('Input data type for port "pol1_in46" must have width=18.');
    end
    if (this_block.port('pol1_in47').width ~= 18;
      this_block.setError('Input data type for port "pol1_in47" must have width=18.');
    end
    if (this_block.port('pol1_in48').width ~= 18;
      this_block.setError('Input data type for port "pol1_in48" must have width=18.');
    end
    if (this_block.port('pol1_in49').width ~= 18;
      this_block.setError('Input data type for port "pol1_in49" must have width=18.');
    end
    if (this_block.port('pol1_in50').width ~= 18;
      this_block.setError('Input data type for port "pol1_in50" must have width=18.');
    end
    if (this_block.port('pol1_in51').width ~= 18;
      this_block.setError('Input data type for port "pol1_in51" must have width=18.');
    end
    if (this_block.port('pol1_in52').width ~= 18;
      this_block.setError('Input data type for port "pol1_in52" must have width=18.');
    end
    if (this_block.port('pol1_in53').width ~= 18;
      this_block.setError('Input data type for port "pol1_in53" must have width=18.');
    end
    if (this_block.port('pol1_in54').width ~= 18;
      this_block.setError('Input data type for port "pol1_in54" must have width=18.');
    end
    if (this_block.port('pol1_in55').width ~= 18;
      this_block.setError('Input data type for port "pol1_in55" must have width=18.');
    end
    if (this_block.port('pol1_in56').width ~= 18;
      this_block.setError('Input data type for port "pol1_in56" must have width=18.');
    end
    if (this_block.port('pol1_in57').width ~= 18;
      this_block.setError('Input data type for port "pol1_in57" must have width=18.');
    end
    if (this_block.port('pol1_in58').width ~= 18;
      this_block.setError('Input data type for port "pol1_in58" must have width=18.');
    end
    if (this_block.port('pol1_in59').width ~= 18;
      this_block.setError('Input data type for port "pol1_in59" must have width=18.');
    end
    if (this_block.port('pol1_in60').width ~= 18;
      this_block.setError('Input data type for port "pol1_in60" must have width=18.');
    end
    if (this_block.port('pol1_in61').width ~= 18;
      this_block.setError('Input data type for port "pol1_in61" must have width=18.');
    end
    if (this_block.port('pol1_in62').width ~= 18;
      this_block.setError('Input data type for port "pol1_in62" must have width=18.');
    end
    if (this_block.port('pol1_in63').width ~= 18;
      this_block.setError('Input data type for port "pol1_in63" must have width=18.');
    end
    if (this_block.port('pol1_in64').width ~= 18;
      this_block.setError('Input data type for port "pol1_in64" must have width=18.');
    end


    if (this_block.port('fft_shift').width ~= 32);
      this_block.setError('Input data type for port "fft_shift" must have width=32.');
    end
    if (this_block.port('sync').width ~= 1);
      this_block.setError('Input data type for port "sync" must have width=1');
    end
%
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
  this_block.addFile('fft_2019_rord_ip_struct.vhd');

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

