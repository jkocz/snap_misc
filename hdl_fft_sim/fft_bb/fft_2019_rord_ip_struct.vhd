--
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fft_2019_rord_ip_struct is
  port (
    fft_shift : in std_logic_vector( 32-1 downto 0 );
    pol1_in1 : in std_logic_vector( 18-1 downto 0 );
    pol1_in10 : in std_logic_vector( 18-1 downto 0 );
    pol1_in11 : in std_logic_vector( 18-1 downto 0 );
    pol1_in12 : in std_logic_vector( 18-1 downto 0 );
    pol1_in13 : in std_logic_vector( 18-1 downto 0 );
    pol1_in14 : in std_logic_vector( 18-1 downto 0 );
    pol1_in15 : in std_logic_vector( 18-1 downto 0 );
    pol1_in16 : in std_logic_vector( 18-1 downto 0 );
    pol1_in17 : in std_logic_vector( 18-1 downto 0 );
    pol1_in18 : in std_logic_vector( 18-1 downto 0 );
    pol1_in19 : in std_logic_vector( 18-1 downto 0 );
    pol1_in2 : in std_logic_vector( 18-1 downto 0 );
    pol1_in20 : in std_logic_vector( 18-1 downto 0 );
    pol1_in21 : in std_logic_vector( 18-1 downto 0 );
    pol1_in22 : in std_logic_vector( 18-1 downto 0 );
    pol1_in23 : in std_logic_vector( 18-1 downto 0 );
    pol1_in24 : in std_logic_vector( 18-1 downto 0 );
    pol1_in25 : in std_logic_vector( 18-1 downto 0 );
    pol1_in26 : in std_logic_vector( 18-1 downto 0 );
    pol1_in27 : in std_logic_vector( 18-1 downto 0 );
    pol1_in28 : in std_logic_vector( 18-1 downto 0 );
    pol1_in29 : in std_logic_vector( 18-1 downto 0 );
    pol1_in3 : in std_logic_vector( 18-1 downto 0 );
    pol1_in30 : in std_logic_vector( 18-1 downto 0 );
    pol1_in31 : in std_logic_vector( 18-1 downto 0 );
    pol1_in32 : in std_logic_vector( 18-1 downto 0 );
    pol1_in33 : in std_logic_vector( 18-1 downto 0 );
    pol1_in34 : in std_logic_vector( 18-1 downto 0 );
    pol1_in35 : in std_logic_vector( 18-1 downto 0 );
    pol1_in36 : in std_logic_vector( 18-1 downto 0 );
    pol1_in37 : in std_logic_vector( 18-1 downto 0 );
    pol1_in38 : in std_logic_vector( 18-1 downto 0 );
    pol1_in39 : in std_logic_vector( 18-1 downto 0 );
    pol1_in4 : in std_logic_vector( 18-1 downto 0 );
    pol1_in40 : in std_logic_vector( 18-1 downto 0 );
    pol1_in41 : in std_logic_vector( 18-1 downto 0 );
    pol1_in42 : in std_logic_vector( 18-1 downto 0 );
    pol1_in43 : in std_logic_vector( 18-1 downto 0 );
    pol1_in44 : in std_logic_vector( 18-1 downto 0 );
    pol1_in45 : in std_logic_vector( 18-1 downto 0 );
    pol1_in46 : in std_logic_vector( 18-1 downto 0 );
    pol1_in47 : in std_logic_vector( 18-1 downto 0 );
    pol1_in48 : in std_logic_vector( 18-1 downto 0 );
    pol1_in49 : in std_logic_vector( 18-1 downto 0 );
    pol1_in5 : in std_logic_vector( 18-1 downto 0 );
    pol1_in50 : in std_logic_vector( 18-1 downto 0 );
    pol1_in51 : in std_logic_vector( 18-1 downto 0 );
    pol1_in52 : in std_logic_vector( 18-1 downto 0 );
    pol1_in53 : in std_logic_vector( 18-1 downto 0 );
    pol1_in54 : in std_logic_vector( 18-1 downto 0 );
    pol1_in55 : in std_logic_vector( 18-1 downto 0 );
    pol1_in56 : in std_logic_vector( 18-1 downto 0 );
    pol1_in57 : in std_logic_vector( 18-1 downto 0 );
    pol1_in58 : in std_logic_vector( 18-1 downto 0 );
    pol1_in59 : in std_logic_vector( 18-1 downto 0 );
    pol1_in6 : in std_logic_vector( 18-1 downto 0 );
    pol1_in60 : in std_logic_vector( 18-1 downto 0 );
    pol1_in61 : in std_logic_vector( 18-1 downto 0 );
    pol1_in62 : in std_logic_vector( 18-1 downto 0 );
    pol1_in63 : in std_logic_vector( 18-1 downto 0 );
    pol1_in64 : in std_logic_vector( 18-1 downto 0 );
    pol1_in7 : in std_logic_vector( 18-1 downto 0 );
    pol1_in8 : in std_logic_vector( 18-1 downto 0 );
    pol1_in9 : in std_logic_vector( 18-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    fft_of : out std_logic_vector( 16-1 downto 0 );
    pol0_out0 : out std_logic_vector( 36-1 downto 0 );
    pol0_out1 : out std_logic_vector( 36-1 downto 0 );
    pol0_out10 : out std_logic_vector( 36-1 downto 0 );
    pol0_out11 : out std_logic_vector( 36-1 downto 0 );
    pol0_out12 : out std_logic_vector( 36-1 downto 0 );
    pol0_out13 : out std_logic_vector( 36-1 downto 0 );
    pol0_out14 : out std_logic_vector( 36-1 downto 0 );
    pol0_out15 : out std_logic_vector( 36-1 downto 0 );
    pol0_out16 : out std_logic_vector( 36-1 downto 0 );
    pol0_out17 : out std_logic_vector( 36-1 downto 0 );
    pol0_out18 : out std_logic_vector( 36-1 downto 0 );
    pol0_out19 : out std_logic_vector( 36-1 downto 0 );
    pol0_out2 : out std_logic_vector( 36-1 downto 0 );
    pol0_out20 : out std_logic_vector( 36-1 downto 0 );
    pol0_out21 : out std_logic_vector( 36-1 downto 0 );
    pol0_out22 : out std_logic_vector( 36-1 downto 0 );
    pol0_out23 : out std_logic_vector( 36-1 downto 0 );
    pol0_out24 : out std_logic_vector( 36-1 downto 0 );
    pol0_out25 : out std_logic_vector( 36-1 downto 0 );
    pol0_out26 : out std_logic_vector( 36-1 downto 0 );
    pol0_out27 : out std_logic_vector( 36-1 downto 0 );
    pol0_out28 : out std_logic_vector( 36-1 downto 0 );
    pol0_out29 : out std_logic_vector( 36-1 downto 0 );
    pol0_out3 : out std_logic_vector( 36-1 downto 0 );
    pol0_out30 : out std_logic_vector( 36-1 downto 0 );
    pol0_out31 : out std_logic_vector( 36-1 downto 0 );
    pol0_out4 : out std_logic_vector( 36-1 downto 0 );
    pol0_out5 : out std_logic_vector( 36-1 downto 0 );
    pol0_out6 : out std_logic_vector( 36-1 downto 0 );
    pol0_out7 : out std_logic_vector( 36-1 downto 0 );
    pol0_out8 : out std_logic_vector( 36-1 downto 0 );
    pol0_out9 : out std_logic_vector( 36-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end fft_2019_rord_ip_struct;

architecture structural of fft_2019_rord_ip_struct is 
  component fft_2019_rord_ip
   port (
    fft_shift : in std_logic_vector( 32-1 downto 0 );
    pol1_in1 : in std_logic_vector( 18-1 downto 0 );
    pol1_in10 : in std_logic_vector( 18-1 downto 0 );
    pol1_in11 : in std_logic_vector( 18-1 downto 0 );
    pol1_in12 : in std_logic_vector( 18-1 downto 0 );
    pol1_in13 : in std_logic_vector( 18-1 downto 0 );
    pol1_in14 : in std_logic_vector( 18-1 downto 0 );
    pol1_in15 : in std_logic_vector( 18-1 downto 0 );
    pol1_in16 : in std_logic_vector( 18-1 downto 0 );
    pol1_in17 : in std_logic_vector( 18-1 downto 0 );
    pol1_in18 : in std_logic_vector( 18-1 downto 0 );
    pol1_in19 : in std_logic_vector( 18-1 downto 0 );
    pol1_in2 : in std_logic_vector( 18-1 downto 0 );
    pol1_in20 : in std_logic_vector( 18-1 downto 0 );
    pol1_in21 : in std_logic_vector( 18-1 downto 0 );
    pol1_in22 : in std_logic_vector( 18-1 downto 0 );
    pol1_in23 : in std_logic_vector( 18-1 downto 0 );
    pol1_in24 : in std_logic_vector( 18-1 downto 0 );
    pol1_in25 : in std_logic_vector( 18-1 downto 0 );
    pol1_in26 : in std_logic_vector( 18-1 downto 0 );
    pol1_in27 : in std_logic_vector( 18-1 downto 0 );
    pol1_in28 : in std_logic_vector( 18-1 downto 0 );
    pol1_in29 : in std_logic_vector( 18-1 downto 0 );
    pol1_in3 : in std_logic_vector( 18-1 downto 0 );
    pol1_in30 : in std_logic_vector( 18-1 downto 0 );
    pol1_in31 : in std_logic_vector( 18-1 downto 0 );
    pol1_in32 : in std_logic_vector( 18-1 downto 0 );
    pol1_in33 : in std_logic_vector( 18-1 downto 0 );
    pol1_in34 : in std_logic_vector( 18-1 downto 0 );
    pol1_in35 : in std_logic_vector( 18-1 downto 0 );
    pol1_in36 : in std_logic_vector( 18-1 downto 0 );
    pol1_in37 : in std_logic_vector( 18-1 downto 0 );
    pol1_in38 : in std_logic_vector( 18-1 downto 0 );
    pol1_in39 : in std_logic_vector( 18-1 downto 0 );
    pol1_in4 : in std_logic_vector( 18-1 downto 0 );
    pol1_in40 : in std_logic_vector( 18-1 downto 0 );
    pol1_in41 : in std_logic_vector( 18-1 downto 0 );
    pol1_in42 : in std_logic_vector( 18-1 downto 0 );
    pol1_in43 : in std_logic_vector( 18-1 downto 0 );
    pol1_in44 : in std_logic_vector( 18-1 downto 0 );
    pol1_in45 : in std_logic_vector( 18-1 downto 0 );
    pol1_in46 : in std_logic_vector( 18-1 downto 0 );
    pol1_in47 : in std_logic_vector( 18-1 downto 0 );
    pol1_in48 : in std_logic_vector( 18-1 downto 0 );
    pol1_in49 : in std_logic_vector( 18-1 downto 0 );
    pol1_in5 : in std_logic_vector( 18-1 downto 0 );
    pol1_in50 : in std_logic_vector( 18-1 downto 0 );
    pol1_in51 : in std_logic_vector( 18-1 downto 0 );
    pol1_in52 : in std_logic_vector( 18-1 downto 0 );
    pol1_in53 : in std_logic_vector( 18-1 downto 0 );
    pol1_in54 : in std_logic_vector( 18-1 downto 0 );
    pol1_in55 : in std_logic_vector( 18-1 downto 0 );
    pol1_in56 : in std_logic_vector( 18-1 downto 0 );
    pol1_in57 : in std_logic_vector( 18-1 downto 0 );
    pol1_in58 : in std_logic_vector( 18-1 downto 0 );
    pol1_in59 : in std_logic_vector( 18-1 downto 0 );
    pol1_in6 : in std_logic_vector( 18-1 downto 0 );
    pol1_in60 : in std_logic_vector( 18-1 downto 0 );
    pol1_in61 : in std_logic_vector( 18-1 downto 0 );
    pol1_in62 : in std_logic_vector( 18-1 downto 0 );
    pol1_in63 : in std_logic_vector( 18-1 downto 0 );
    pol1_in64 : in std_logic_vector( 18-1 downto 0 );
    pol1_in7 : in std_logic_vector( 18-1 downto 0 );
    pol1_in8 : in std_logic_vector( 18-1 downto 0 );
    pol1_in9 : in std_logic_vector( 18-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    fft_of : out std_logic_vector( 16-1 downto 0 );
    pol0_out0 : out std_logic_vector( 36-1 downto 0 );
    pol0_out1 : out std_logic_vector( 36-1 downto 0 );
    pol0_out10 : out std_logic_vector( 36-1 downto 0 );
    pol0_out11 : out std_logic_vector( 36-1 downto 0 );
    pol0_out12 : out std_logic_vector( 36-1 downto 0 );
    pol0_out13 : out std_logic_vector( 36-1 downto 0 );
    pol0_out14 : out std_logic_vector( 36-1 downto 0 );
    pol0_out15 : out std_logic_vector( 36-1 downto 0 );
    pol0_out16 : out std_logic_vector( 36-1 downto 0 );
    pol0_out17 : out std_logic_vector( 36-1 downto 0 );
    pol0_out18 : out std_logic_vector( 36-1 downto 0 );
    pol0_out19 : out std_logic_vector( 36-1 downto 0 );
    pol0_out2 : out std_logic_vector( 36-1 downto 0 );
    pol0_out20 : out std_logic_vector( 36-1 downto 0 );
    pol0_out21 : out std_logic_vector( 36-1 downto 0 );
    pol0_out22 : out std_logic_vector( 36-1 downto 0 );
    pol0_out23 : out std_logic_vector( 36-1 downto 0 );
    pol0_out24 : out std_logic_vector( 36-1 downto 0 );
    pol0_out25 : out std_logic_vector( 36-1 downto 0 );
    pol0_out26 : out std_logic_vector( 36-1 downto 0 );
    pol0_out27 : out std_logic_vector( 36-1 downto 0 );
    pol0_out28 : out std_logic_vector( 36-1 downto 0 );
    pol0_out29 : out std_logic_vector( 36-1 downto 0 );
    pol0_out3 : out std_logic_vector( 36-1 downto 0 );
    pol0_out30 : out std_logic_vector( 36-1 downto 0 );
    pol0_out31 : out std_logic_vector( 36-1 downto 0 );
    pol0_out4 : out std_logic_vector( 36-1 downto 0 );
    pol0_out5 : out std_logic_vector( 36-1 downto 0 );
    pol0_out6 : out std_logic_vector( 36-1 downto 0 );
    pol0_out7 : out std_logic_vector( 36-1 downto 0 );
    pol0_out8 : out std_logic_vector( 36-1 downto 0 );
    pol0_out9 : out std_logic_vector( 36-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
   );
  end component;
begin
  fft_2019_rord_ip_inst : fft_2019_rord_ip 
  port map (
    fft_shift => fft_shift,
    pol1_in1 => pol1_in1,
    pol1_in10 => pol1_in10,
    pol1_in11 => pol1_in11,
    pol1_in12 => pol1_in12,
    pol1_in13 => pol1_in13,
    pol1_in14 => pol1_in14,
    pol1_in15 => pol1_in15,
    pol1_in16 => pol1_in16,
    pol1_in17 => pol1_in17,
    pol1_in18 => pol1_in18,
    pol1_in19 => pol1_in19,
    pol1_in2 => pol1_in2,
    pol1_in20 => pol1_in20,
    pol1_in21 => pol1_in21,
    pol1_in22 => pol1_in22,
    pol1_in23 => pol1_in23,
    pol1_in24 => pol1_in24,
    pol1_in25 => pol1_in25,
    pol1_in26 => pol1_in26,
    pol1_in27 => pol1_in27,
    pol1_in28 => pol1_in28,
    pol1_in29 => pol1_in29,
    pol1_in3 => pol1_in3,
    pol1_in30 => pol1_in30,
    pol1_in31 => pol1_in31,
    pol1_in32 => pol1_in32,
    pol1_in33 => pol1_in33,
    pol1_in34 => pol1_in34,
    pol1_in35 => pol1_in35,
    pol1_in36 => pol1_in36,
    pol1_in37 => pol1_in37,
    pol1_in38 => pol1_in38,
    pol1_in39 => pol1_in39,
    pol1_in4 => pol1_in4,
    pol1_in40 => pol1_in40,
    pol1_in41 => pol1_in41,
    pol1_in42 => pol1_in42,
    pol1_in43 => pol1_in43,
    pol1_in44 => pol1_in44,
    pol1_in45 => pol1_in45,
    pol1_in46 => pol1_in46,
    pol1_in47 => pol1_in47,
    pol1_in48 => pol1_in48,
    pol1_in49 => pol1_in49,
    pol1_in5 => pol1_in5,
    pol1_in50 => pol1_in50,
    pol1_in51 => pol1_in51,
    pol1_in52 => pol1_in52,
    pol1_in53 => pol1_in53,
    pol1_in54 => pol1_in54,
    pol1_in55 => pol1_in55,
    pol1_in56 => pol1_in56,
    pol1_in57 => pol1_in57,
    pol1_in58 => pol1_in58,
    pol1_in59 => pol1_in59,
    pol1_in6 => pol1_in6,
    pol1_in60 => pol1_in60,
    pol1_in61 => pol1_in61,
    pol1_in62 => pol1_in62,
    pol1_in63 => pol1_in63,
    pol1_in64 => pol1_in64,
    pol1_in7 => pol1_in7,
    pol1_in8 => pol1_in8,
    pol1_in9 => pol1_in9,
    sync => sync,
    clk => clk_1,
    fft_of => fft_of,
    pol0_out0 => pol0_out0,
    pol0_out1 => pol0_out1,
    pol0_out10 => pol0_out10,
    pol0_out11 => pol0_out11,
    pol0_out12 => pol0_out12,
    pol0_out13 => pol0_out13,
    pol0_out14 => pol0_out14,
    pol0_out15 => pol0_out15,
    pol0_out16 => pol0_out16,
    pol0_out17 => pol0_out17,
    pol0_out18 => pol0_out18,
    pol0_out19 => pol0_out19,
    pol0_out2 => pol0_out2,
    pol0_out20 => pol0_out20,
    pol0_out21 => pol0_out21,
    pol0_out22 => pol0_out22,
    pol0_out23 => pol0_out23,
    pol0_out24 => pol0_out24,
    pol0_out25 => pol0_out25,
    pol0_out26 => pol0_out26,
    pol0_out27 => pol0_out27,
    pol0_out28 => pol0_out28,
    pol0_out29 => pol0_out29,
    pol0_out3 => pol0_out3,
    pol0_out30 => pol0_out30,
    pol0_out31 => pol0_out31,
    pol0_out4 => pol0_out4,
    pol0_out5 => pol0_out5,
    pol0_out6 => pol0_out6,
    pol0_out7 => pol0_out7,
    pol0_out8 => pol0_out8,
    pol0_out9 => pol0_out9,
    sync_out => sync_out
  );
end structural;
