-- Generated from Simulink block Fourwing_Hardware/Fourwing derivatives1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_fourwing_derivatives1 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    in2 : in std_logic_vector( 32-1 downto 0 );
    in3 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 65-1 downto 0 );
    out2 : out std_logic_vector( 81-1 downto 0 );
    out3 : out std_logic_vector( 81-1 downto 0 )
  );
end fourwing_hardware_fourwing_derivatives1;
architecture structural of fourwing_hardware_fourwing_derivatives1 is 
  signal mult7_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 64-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 81-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 48-1 downto 0 );
  signal mult_p_net : std_logic_vector( 48-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 65-1 downto 0 );
  signal clk_net : std_logic;
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 49-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 80-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 48-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 80-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  out2 <= addsub1_s_net;
  out3 <= addsub3_s_net;
  x_net <= in1;
  y_net <= in2;
  z_net <= in3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 36,
    a_width => 48,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 49,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 49,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 36,
    s_width => 49
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 49,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 65,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 65
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult8_p_net,
    b => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_9a2dd78da2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_e05228d713 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_cc312b24f6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  mult : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => y_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult7 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
  mult9 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => y_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult9_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware/Fourwing derivatives2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_fourwing_derivatives2 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    in2 : in std_logic_vector( 32-1 downto 0 );
    in3 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 66-1 downto 0 );
    out2 : out std_logic_vector( 81-1 downto 0 );
    out3 : out std_logic_vector( 81-1 downto 0 )
  );
end fourwing_hardware_fourwing_derivatives2;
architecture structural of fourwing_hardware_fourwing_derivatives2 is 
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal mult1_p_net : std_logic_vector( 48-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 49-1 downto 0 );
  signal mult_p_net : std_logic_vector( 48-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub2_s_net_x0 : std_logic_vector( 66-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 80-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 48-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 80-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 64-1 downto 0 );
begin
  out1 <= addsub2_s_net_x0;
  out2 <= addsub1_s_net;
  out3 <= addsub3_s_net;
  addsub2_s_net <= in1;
  addsub1_s_net_x0 <= in2;
  addsub6_s_net <= in3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 36,
    a_width => 48,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 49,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 49,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 36,
    s_width => 49
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 49,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 48,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 66,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 66,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 66
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net_x0
  );
  addsub3 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult8_p_net,
    b => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_9a2dd78da2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_e05228d713 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_cc312b24f6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  mult : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub1_s_net_x0,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult7 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub2_s_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
  mult9 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub1_s_net_x0,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult9_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware/Fourwing derivatives3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_fourwing_derivatives3 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    in2 : in std_logic_vector( 32-1 downto 0 );
    in3 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 66-1 downto 0 );
    out2 : out std_logic_vector( 81-1 downto 0 );
    out3 : out std_logic_vector( 81-1 downto 0 )
  );
end fourwing_hardware_fourwing_derivatives3;
architecture structural of fourwing_hardware_fourwing_derivatives3 is 
  signal mult7_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 64-1 downto 0 );
  signal addsub8_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub5_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 66-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 49-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 48-1 downto 0 );
  signal ce_net : std_logic;
  signal mult_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 80-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 48-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 80-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  out2 <= addsub1_s_net;
  out3 <= addsub3_s_net;
  addsub5_s_net <= in1;
  addsub4_s_net <= in2;
  addsub8_s_net <= in3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 36,
    a_width => 48,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 49,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 49,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 36,
    s_width => 49
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 49,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 48,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 66,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 66,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 66
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult8_p_net,
    b => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_9a2dd78da2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_e05228d713 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_cc312b24f6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  mult : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub4_s_net,
    b => addsub8_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => addsub8_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult7 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub5_s_net,
    b => addsub8_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
  mult9 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub4_s_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult9_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware/Fourwing derivatives4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_fourwing_derivatives4 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    in2 : in std_logic_vector( 32-1 downto 0 );
    in3 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 66-1 downto 0 );
    out2 : out std_logic_vector( 81-1 downto 0 );
    out3 : out std_logic_vector( 81-1 downto 0 )
  );
end fourwing_hardware_fourwing_derivatives4;
architecture structural of fourwing_hardware_fourwing_derivatives4 is 
  signal mult7_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 64-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 49-1 downto 0 );
  signal mult_p_net : std_logic_vector( 48-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 48-1 downto 0 );
  signal ce_net : std_logic;
  signal mult2_p_net : std_logic_vector( 80-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 66-1 downto 0 );
  signal addsub9_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 81-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub7_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 48-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 80-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= addsub2_s_net;
  out2 <= addsub1_s_net;
  out3 <= addsub3_s_net;
  addsub7_s_net <= in1;
  addsub10_s_net <= in2;
  addsub9_s_net <= in3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 36,
    a_width => 48,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 49,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 49,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 36,
    s_width => 49
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 49,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 48,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 66,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 66,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 66
  )
  port map (
    clr => '0',
    en => "1",
    a => mult4_p_net,
    b => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 80,
    b_arith => xlSigned,
    b_bin_pt => 36,
    b_width => 48,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 81,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 81,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 81
  )
  port map (
    clr => '0',
    en => "1",
    a => mult8_p_net,
    b => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_9a2dd78da2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_e05228d713 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_0039634d7b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_cc312b24f6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  mult : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => addsub7_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant7_op_net,
    b => addsub10_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => addsub7_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub10_s_net,
    b => addsub9_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => addsub9_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult7 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub7_s_net,
    b => addsub9_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 48,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 64,
    c_baat => 16,
    c_output_width => 80,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 60,
    p_width => 80,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
  mult9 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 1,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 1,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 1,
    overflow => 1,
    p_arith => xlUnsigned,
    p_bin_pt => 48,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub10_s_net,
    b => addsub7_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult9_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_subsystem is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n3 : in std_logic_vector( 81-1 downto 0 );
    n4 : in std_logic_vector( 81-1 downto 0 );
    n2 : in std_logic_vector( 81-1 downto 0 );
    n1 : in std_logic_vector( 81-1 downto 0 );
    h : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end fourwing_hardware_subsystem;
architecture structural of fourwing_hardware_subsystem is 
  signal mult24_p_net : std_logic_vector( 97-1 downto 0 );
  signal mult25_p_net : std_logic_vector( 147-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal m4_q_net : std_logic_vector( 81-1 downto 0 );
  signal m3_q_net : std_logic_vector( 81-1 downto 0 );
  signal m2_q_net : std_logic_vector( 81-1 downto 0 );
  signal m1_q_net : std_logic_vector( 81-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal constant16_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub20_s_net : std_logic_vector( 98-1 downto 0 );
  signal mult23_p_net : std_logic_vector( 97-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 82-1 downto 0 );
  signal addsub19_s_net : std_logic_vector( 99-1 downto 0 );
  signal mult26_p_net : std_logic_vector( 48-1 downto 0 );
begin
  dz <= addsub21_s_net;
  z_net <= z;
  m3_q_net <= n3;
  m4_q_net <= n4;
  m2_q_net <= n2;
  m1_q_net <= n1;
  constant16_op_net <= h;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 81,
    b_arith => xlSigned,
    b_bin_pt => 60,
    b_width => 81,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 82,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i5",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 82,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 82
  )
  port map (
    clr => '0',
    en => "1",
    a => m4_q_net,
    b => m1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub19 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 82,
    b_arith => xlSigned,
    b_bin_pt => 72,
    b_width => 98,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 99,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i6",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 99,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 72,
    s_width => 99
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub18_s_net,
    b => addsub20_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub19_s_net
  );
  addsub20 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 72,
    a_width => 97,
    b_arith => xlSigned,
    b_bin_pt => 72,
    b_width => 97,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 98,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i7",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 98,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 72,
    s_width => 98
  )
  port map (
    clr => '0',
    en => "1",
    a => mult23_p_net,
    b => mult24_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub20_s_net
  );
  addsub21 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 108,
    a_width => 147,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 148,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i8",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 148,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult25_p_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub21_s_net
  );
  constant13 : entity xil_defaultlib.sysgen_constant_4a2717decb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant14 : entity xil_defaultlib.sysgen_constant_4a2717decb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant14_op_net
  );
  constant15 : entity xil_defaultlib.sysgen_constant_152231e984 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  mult23 : entity xil_defaultlib.sysgen_mult_c125f04cae 
  port map (
    clr => '0',
    a => constant13_op_net,
    b => m2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult23_p_net
  );
  mult24 : entity xil_defaultlib.sysgen_mult_c125f04cae 
  port map (
    clr => '0',
    a => constant14_op_net,
    b => m3_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult24_p_net
  );
  mult25 : entity xil_defaultlib.sysgen_mult_7f02d8f483 
  port map (
    clr => '0',
    a => mult26_p_net,
    b => addsub19_s_net,
    clk => clk_net,
    ce => ce_net,
    p => mult25_p_net
  );
  mult26 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 12,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 32,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant16_op_net,
    b => constant15_op_net,
    p => mult26_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_subsystem1 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n3 : in std_logic_vector( 66-1 downto 0 );
    n4 : in std_logic_vector( 66-1 downto 0 );
    n2 : in std_logic_vector( 66-1 downto 0 );
    n1 : in std_logic_vector( 65-1 downto 0 );
    h : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end fourwing_hardware_subsystem1;
architecture structural of fourwing_hardware_subsystem1 is 
  signal constant16_op_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub18_s_net : std_logic_vector( 67-1 downto 0 );
  signal addsub19_s_net : std_logic_vector( 84-1 downto 0 );
  signal ce_net : std_logic;
  signal mult23_p_net : std_logic_vector( 82-1 downto 0 );
  signal mult24_p_net : std_logic_vector( 82-1 downto 0 );
  signal k3_q_net : std_logic_vector( 66-1 downto 0 );
  signal k2_q_net : std_logic_vector( 66-1 downto 0 );
  signal k4_q_net : std_logic_vector( 66-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub20_s_net : std_logic_vector( 83-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal k1_q_net : std_logic_vector( 65-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult26_p_net : std_logic_vector( 48-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult25_p_net : std_logic_vector( 132-1 downto 0 );
begin
  dz <= addsub21_s_net;
  x_net <= z;
  k3_q_net <= n3;
  k4_q_net <= n4;
  k2_q_net <= n2;
  k1_q_net <= n1;
  constant16_op_net <= h;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 66,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 65,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 67,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i9",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 67,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 67
  )
  port map (
    clr => '0',
    en => "1",
    a => k4_q_net,
    b => k1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub19 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 67,
    b_arith => xlSigned,
    b_bin_pt => 60,
    b_width => 83,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 84,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i10",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 84,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 84
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub18_s_net,
    b => addsub20_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub19_s_net
  );
  addsub20 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 82,
    b_arith => xlSigned,
    b_bin_pt => 60,
    b_width => 82,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 83,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i11",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 83,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 83
  )
  port map (
    clr => '0',
    en => "1",
    a => mult23_p_net,
    b => mult24_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub20_s_net
  );
  addsub21 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 96,
    a_width => 132,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 133,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i12",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 133,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult25_p_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub21_s_net
  );
  constant13 : entity xil_defaultlib.sysgen_constant_4a2717decb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant14 : entity xil_defaultlib.sysgen_constant_4a2717decb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant14_op_net
  );
  constant15 : entity xil_defaultlib.sysgen_constant_152231e984 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  mult23 : entity xil_defaultlib.sysgen_mult_4500dac4cc 
  port map (
    clr => '0',
    a => constant13_op_net,
    b => k2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult23_p_net
  );
  mult24 : entity xil_defaultlib.sysgen_mult_4500dac4cc 
  port map (
    clr => '0',
    a => constant14_op_net,
    b => k3_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult24_p_net
  );
  mult25 : entity xil_defaultlib.sysgen_mult_f7c81ba471 
  port map (
    clr => '0',
    a => mult26_p_net,
    b => addsub19_s_net,
    clk => clk_net,
    ce => ce_net,
    p => mult25_p_net
  );
  mult26 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 12,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 32,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant16_op_net,
    b => constant15_op_net,
    p => mult26_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_subsystem2 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n3 : in std_logic_vector( 81-1 downto 0 );
    n4 : in std_logic_vector( 81-1 downto 0 );
    n2 : in std_logic_vector( 81-1 downto 0 );
    n1 : in std_logic_vector( 81-1 downto 0 );
    h : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end fourwing_hardware_subsystem2;
architecture structural of fourwing_hardware_subsystem2 is 
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal l3_q_net : std_logic_vector( 81-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal l4_q_net : std_logic_vector( 81-1 downto 0 );
  signal l2_q_net : std_logic_vector( 81-1 downto 0 );
  signal l1_q_net : std_logic_vector( 81-1 downto 0 );
  signal mult24_p_net : std_logic_vector( 97-1 downto 0 );
  signal constant13_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal mult25_p_net : std_logic_vector( 147-1 downto 0 );
  signal mult23_p_net : std_logic_vector( 97-1 downto 0 );
  signal addsub20_s_net : std_logic_vector( 98-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant14_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant15_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 82-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub19_s_net : std_logic_vector( 99-1 downto 0 );
  signal mult26_p_net : std_logic_vector( 48-1 downto 0 );
begin
  dz <= addsub21_s_net;
  y_net <= z;
  l3_q_net <= n3;
  l4_q_net <= n4;
  l2_q_net <= n2;
  l1_q_net <= n1;
  constant16_op_net <= h;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 81,
    b_arith => xlSigned,
    b_bin_pt => 60,
    b_width => 81,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 82,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i5",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 82,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 82
  )
  port map (
    clr => '0',
    en => "1",
    a => l4_q_net,
    b => l1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub19 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 60,
    a_width => 82,
    b_arith => xlSigned,
    b_bin_pt => 72,
    b_width => 98,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 99,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i6",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 99,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 72,
    s_width => 99
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub18_s_net,
    b => addsub20_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub19_s_net
  );
  addsub20 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 72,
    a_width => 97,
    b_arith => xlSigned,
    b_bin_pt => 72,
    b_width => 97,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 98,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i7",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 98,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 72,
    s_width => 98
  )
  port map (
    clr => '0',
    en => "1",
    a => mult23_p_net,
    b => mult24_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub20_s_net
  );
  addsub21 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 108,
    a_width => 147,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 148,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i8",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 148,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult25_p_net,
    b => y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub21_s_net
  );
  constant13 : entity xil_defaultlib.sysgen_constant_4a2717decb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant13_op_net
  );
  constant14 : entity xil_defaultlib.sysgen_constant_4a2717decb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant14_op_net
  );
  constant15 : entity xil_defaultlib.sysgen_constant_152231e984 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant15_op_net
  );
  mult23 : entity xil_defaultlib.sysgen_mult_c125f04cae 
  port map (
    clr => '0',
    a => constant13_op_net,
    b => l2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult23_p_net
  );
  mult24 : entity xil_defaultlib.sysgen_mult_c125f04cae 
  port map (
    clr => '0',
    a => constant14_op_net,
    b => l3_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult24_p_net
  );
  mult25 : entity xil_defaultlib.sysgen_mult_7f02d8f483 
  port map (
    clr => '0',
    a => mult26_p_net,
    b => addsub19_s_net,
    clk => clk_net,
    ce => ce_net,
    p => mult25_p_net
  );
  mult26 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 12,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 32,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 36,
    p_width => 48,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant16_op_net,
    b => constant15_op_net,
    p => mult26_p_net
  );
end structural;
-- Generated from Simulink block Fourwing_Hardware_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_struct is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    xnew : out std_logic_vector( 32-1 downto 0 );
    ynew : out std_logic_vector( 32-1 downto 0 );
    znew : out std_logic_vector( 32-1 downto 0 )
  );
end fourwing_hardware_struct;
architecture structural of fourwing_hardware_struct is 
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net_x0 : std_logic_vector( 66-1 downto 0 );
  signal addsub1_s_net_x0 : std_logic_vector( 81-1 downto 0 );
  signal addsub9_s_net : std_logic_vector( 32-1 downto 0 );
  signal m3_q_net : std_logic_vector( 81-1 downto 0 );
  signal m2_q_net : std_logic_vector( 81-1 downto 0 );
  signal addsub2_s_net_x3 : std_logic_vector( 65-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net_x2 : std_logic_vector( 81-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 81-1 downto 0 );
  signal m1_q_net : std_logic_vector( 81-1 downto 0 );
  signal addsub1_s_net_x3 : std_logic_vector( 81-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 32-1 downto 0 );
  signal k3_q_net : std_logic_vector( 66-1 downto 0 );
  signal addsub3_s_net_x2 : std_logic_vector( 81-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 32-1 downto 0 );
  signal m4_q_net : std_logic_vector( 81-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net_x1 : std_logic_vector( 66-1 downto 0 );
  signal addsub2_s_net_x2 : std_logic_vector( 66-1 downto 0 );
  signal addsub1_s_net_x1 : std_logic_vector( 81-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub8_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net_x1 : std_logic_vector( 81-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 81-1 downto 0 );
  signal addsub21_s_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
  signal l3_q_net : std_logic_vector( 81-1 downto 0 );
  signal l1_q_net : std_logic_vector( 81-1 downto 0 );
  signal l4_q_net : std_logic_vector( 81-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal k2_q_net : std_logic_vector( 66-1 downto 0 );
  signal l2_q_net : std_logic_vector( 81-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult12_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal k1_q_net : std_logic_vector( 65-1 downto 0 );
  signal mult10_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal k4_q_net : std_logic_vector( 66-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult13_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult16_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult15_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult11_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 32-1 downto 0 );
begin
  xnew <= addsub21_s_net_x0;
  ynew <= addsub21_s_net;
  znew <= addsub21_s_net_x1;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  fourwing_derivatives1 : entity xil_defaultlib.fourwing_hardware_fourwing_derivatives1 
  port map (
    in1 => x_net,
    in2 => y_net,
    in3 => z_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub2_s_net_x3,
    out2 => addsub1_s_net_x3,
    out3 => addsub3_s_net_x2
  );
  fourwing_derivatives2 : entity xil_defaultlib.fourwing_hardware_fourwing_derivatives2 
  port map (
    in1 => addsub2_s_net,
    in2 => addsub1_s_net,
    in3 => addsub6_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub2_s_net_x2,
    out2 => addsub1_s_net_x2,
    out3 => addsub3_s_net_x1
  );
  fourwing_derivatives3 : entity xil_defaultlib.fourwing_hardware_fourwing_derivatives3 
  port map (
    in1 => addsub5_s_net,
    in2 => addsub4_s_net,
    in3 => addsub8_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub2_s_net_x1,
    out2 => addsub1_s_net_x1,
    out3 => addsub3_s_net_x0
  );
  fourwing_derivatives4 : entity xil_defaultlib.fourwing_hardware_fourwing_derivatives4 
  port map (
    in1 => addsub7_s_net,
    in2 => addsub10_s_net,
    in3 => addsub9_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => addsub2_s_net_x0,
    out2 => addsub1_s_net_x0,
    out3 => addsub3_s_net
  );
  subsystem : entity xil_defaultlib.fourwing_hardware_subsystem 
  port map (
    z => z_net,
    n3 => m3_q_net,
    n4 => m4_q_net,
    n2 => m2_q_net,
    n1 => m1_q_net,
    h => constant16_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x1
  );
  subsystem1 : entity xil_defaultlib.fourwing_hardware_subsystem1 
  port map (
    z => x_net,
    n3 => k3_q_net,
    n4 => k4_q_net,
    n2 => k2_q_net,
    n1 => k1_q_net,
    h => constant16_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x0
  );
  subsystem2 : entity xil_defaultlib.fourwing_hardware_subsystem2 
  port map (
    z => y_net,
    n3 => l3_q_net,
    n4 => l4_q_net,
    n2 => l2_q_net,
    n1 => l1_q_net,
    h => constant16_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net
  );
  addsub1 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => y_net,
    b => mult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub10 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => y_net,
    b => mult12_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub10_s_net
  );
  addsub2 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => x_net,
    b => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub4 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => y_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => x_net,
    b => mult8_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => x_net,
    b => mult10_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  addsub8 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub8_s_net
  );
  addsub9 : entity xil_defaultlib.fourwing_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "fourwing_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult13_p_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub9_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_2e42612373 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant16 : entity xil_defaultlib.sysgen_constant_e2967ee4e9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant16_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_2e42612373 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_1f2b1f19c3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_1f2b1f19c3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_2e42612373 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_1f2b1f19c3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  mult1 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant5_op_net,
    b => constant16_op_net,
    p => mult1_p_net
  );
  mult10 : entity xil_defaultlib.sysgen_mult_f2fc27d4d0 
  port map (
    clr => '0',
    a => constant16_op_net,
    b => k3_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult10_p_net
  );
  mult11 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => constant16_op_net,
    p => mult11_p_net
  );
  mult12 : entity xil_defaultlib.sysgen_mult_0ce2761227 
  port map (
    clr => '0',
    a => constant16_op_net,
    b => l3_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult12_p_net
  );
  mult13 : entity xil_defaultlib.sysgen_mult_0ce2761227 
  port map (
    clr => '0',
    a => constant16_op_net,
    b => m3_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult13_p_net
  );
  mult15 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant2_op_net,
    b => constant16_op_net,
    p => mult15_p_net
  );
  mult16 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant6_op_net,
    b => constant16_op_net,
    p => mult16_p_net
  );
  mult2 : entity xil_defaultlib.sysgen_mult_0ce2761227 
  port map (
    clr => '0',
    a => mult3_p_net,
    b => l1_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant1_op_net,
    b => constant16_op_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.sysgen_mult_3bce7a52c0 
  port map (
    clr => '0',
    a => mult15_p_net,
    b => k1_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.sysgen_mult_0ce2761227 
  port map (
    clr => '0',
    a => mult1_p_net,
    b => m1_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.sysgen_mult_0ce2761227 
  port map (
    clr => '0',
    a => mult16_p_net,
    b => m2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.sysgen_mult_0ce2761227 
  port map (
    clr => '0',
    a => mult9_p_net,
    b => l2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult7_p_net
  );
  mult8 : entity xil_defaultlib.sysgen_mult_f2fc27d4d0 
  port map (
    clr => '0',
    a => mult11_p_net,
    b => k2_q_net,
    clk => clk_net,
    ce => ce_net,
    p => mult8_p_net
  );
  mult9 : entity xil_defaultlib.fourwing_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "fourwing_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clk => '1',
    ce => '1',
    core_clk => '1',
    core_ce => '1',
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant3_op_net,
    b => constant16_op_net,
    p => mult9_p_net
  );
  k1 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x3,
    clk => clk_net,
    ce => ce_net,
    q => k1_q_net
  );
  k2 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 66
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => k2_q_net
  );
  k3 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 66
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => k3_q_net
  );
  k4 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 66
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => k4_q_net
  );
  l1 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net_x3,
    clk => clk_net,
    ce => ce_net,
    q => l1_q_net
  );
  l2 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => l2_q_net
  );
  l3 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => l3_q_net
  );
  l4 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => l4_q_net
  );
  m1 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub3_s_net_x2,
    clk => clk_net,
    ce => ce_net,
    q => m1_q_net
  );
  m2 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub3_s_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => m2_q_net
  );
  m3 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub3_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => m3_q_net
  );
  m4 : entity xil_defaultlib.fourwing_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 81
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    q => m4_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware_default_clock_driver is
  port (
    fourwing_hardware_sysclk : in std_logic;
    fourwing_hardware_sysce : in std_logic;
    fourwing_hardware_sysclr : in std_logic;
    fourwing_hardware_clk1 : out std_logic;
    fourwing_hardware_ce1 : out std_logic
  );
end fourwing_hardware_default_clock_driver;
architecture structural of fourwing_hardware_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => fourwing_hardware_sysclk,
    sysce => fourwing_hardware_sysce,
    sysclr => fourwing_hardware_sysclr,
    clk => fourwing_hardware_clk1,
    ce => fourwing_hardware_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourwing_hardware is
  port (
    clk : in std_logic;
    fourwing_hardware_aresetn : in std_logic;
    fourwing_hardware_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    fourwing_hardware_s_axi_awvalid : in std_logic;
    fourwing_hardware_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    fourwing_hardware_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    fourwing_hardware_s_axi_wvalid : in std_logic;
    fourwing_hardware_s_axi_bready : in std_logic;
    fourwing_hardware_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    fourwing_hardware_s_axi_arvalid : in std_logic;
    fourwing_hardware_s_axi_rready : in std_logic;
    fourwing_hardware_s_axi_awready : out std_logic;
    fourwing_hardware_s_axi_wready : out std_logic;
    fourwing_hardware_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    fourwing_hardware_s_axi_bvalid : out std_logic;
    fourwing_hardware_s_axi_arready : out std_logic;
    fourwing_hardware_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    fourwing_hardware_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    fourwing_hardware_s_axi_rvalid : out std_logic
  );
end fourwing_hardware;
architecture structural of fourwing_hardware is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "fourwing_hardware,sysgen_core_2020_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1e-06,addsub=37,constant=40,delay=12,mult=63,}";
  signal znew : std_logic_vector( 32-1 downto 0 );
  signal xnew : std_logic_vector( 32-1 downto 0 );
  signal ynew : std_logic_vector( 32-1 downto 0 );
  signal x : std_logic_vector( 32-1 downto 0 );
  signal y : std_logic_vector( 32-1 downto 0 );
  signal z : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal clk_net : std_logic;
begin
  fourwing_hardware_axi_lite_interface : entity xil_defaultlib.fourwing_hardware_axi_lite_interface 
  port map (
    xnew => xnew,
    ynew => ynew,
    znew => znew,
    fourwing_hardware_s_axi_awaddr => fourwing_hardware_s_axi_awaddr,
    fourwing_hardware_s_axi_awvalid => fourwing_hardware_s_axi_awvalid,
    fourwing_hardware_s_axi_wdata => fourwing_hardware_s_axi_wdata,
    fourwing_hardware_s_axi_wstrb => fourwing_hardware_s_axi_wstrb,
    fourwing_hardware_s_axi_wvalid => fourwing_hardware_s_axi_wvalid,
    fourwing_hardware_s_axi_bready => fourwing_hardware_s_axi_bready,
    fourwing_hardware_s_axi_araddr => fourwing_hardware_s_axi_araddr,
    fourwing_hardware_s_axi_arvalid => fourwing_hardware_s_axi_arvalid,
    fourwing_hardware_s_axi_rready => fourwing_hardware_s_axi_rready,
    fourwing_hardware_aresetn => fourwing_hardware_aresetn,
    fourwing_hardware_aclk => clk,
    z => z,
    y => y,
    x => x,
    fourwing_hardware_s_axi_awready => fourwing_hardware_s_axi_awready,
    fourwing_hardware_s_axi_wready => fourwing_hardware_s_axi_wready,
    fourwing_hardware_s_axi_bresp => fourwing_hardware_s_axi_bresp,
    fourwing_hardware_s_axi_bvalid => fourwing_hardware_s_axi_bvalid,
    fourwing_hardware_s_axi_arready => fourwing_hardware_s_axi_arready,
    fourwing_hardware_s_axi_rdata => fourwing_hardware_s_axi_rdata,
    fourwing_hardware_s_axi_rresp => fourwing_hardware_s_axi_rresp,
    fourwing_hardware_s_axi_rvalid => fourwing_hardware_s_axi_rvalid,
    clk => clk_net
  );
  fourwing_hardware_default_clock_driver : entity xil_defaultlib.fourwing_hardware_default_clock_driver 
  port map (
    fourwing_hardware_sysclk => clk_net,
    fourwing_hardware_sysce => '1',
    fourwing_hardware_sysclr => '0',
    fourwing_hardware_clk1 => clk_1_net,
    fourwing_hardware_ce1 => ce_1_net
  );
  fourwing_hardware_struct : entity xil_defaultlib.fourwing_hardware_struct 
  port map (
    x => x,
    y => y,
    z => z,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    xnew => xnew,
    ynew => ynew,
    znew => znew
  );
end structural;
