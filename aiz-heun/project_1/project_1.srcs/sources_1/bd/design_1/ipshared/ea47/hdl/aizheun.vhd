-- Generated from Simulink block aizHeun/Aizawa derivatives1/cube (6 delays)1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_cube_6_delays_1 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out3 : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_cube_6_delays_1;
architecture structural of aizheun_cube_6_delays_1 is 
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
begin
  out3 <= mult7_p_net;
  x_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult6 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => x_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
end structural;
-- Generated from Simulink block aizHeun/Aizawa derivatives1/cube (6 delays)2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_cube_6_delays_2 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out3 : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_cube_6_delays_2;
architecture structural of aizheun_cube_6_delays_2 is 
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
begin
  out3 <= mult7_p_net;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => z_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  mult6 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => z_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block aizHeun/Aizawa derivatives1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_aizawa_derivatives1 is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 32-1 downto 0 );
    dy : out std_logic_vector( 32-1 downto 0 );
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_aizawa_derivatives1;
architecture structural of aizheun_aizawa_derivatives1 is 
  signal cmult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 33-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 32-1 downto 0 );
  signal cmult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 33-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub8_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal mult7_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
begin
  dx <= delay10_q_net;
  dy <= delay9_q_net;
  dz <= addsub10_s_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  cube_6_delays_1 : entity xil_defaultlib.aizheun_cube_6_delays_1 
  port map (
    z => x_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out3 => mult7_p_net_x0
  );
  cube_6_delays_2 : entity xil_defaultlib.aizheun_cube_6_delays_2 
  port map (
    z => z_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out3 => mult7_p_net
  );
  addsub1 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub10 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub10_s_net
  );
  addsub2 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => z_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub4 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => mult7_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => constant8_op_net,
    b => cmult4_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => delay5_q_net,
    b => cmult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  addsub8 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub7_s_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub8_s_net
  );
  cmult : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult7_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i4",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  cmult5 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult5_p_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f178c2d9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_6518182861 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_7c88b280bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  mult3 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult5 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cmult2_p_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => y_net,
    b => y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net_x1
  );
  mult8 : entity xil_defaultlib.aizheun_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 33,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "aizheun_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay6_q_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
  mult1 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  delay6 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay5 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => x_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay4 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 7,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => z_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay1 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay8 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub8_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay7 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult8_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay3 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay9 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay9_q_net
  );
  delay10 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay10_q_net
  );
  addsub3 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
end structural;
-- Generated from Simulink block aizHeun/Aizawa derivatives2/cube (6 delays)1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_cube_6_delays_1_x0 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out3 : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_cube_6_delays_1_x0;
architecture structural of aizheun_cube_6_delays_1_x0 is 
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
begin
  out3 <= mult7_p_net;
  addsub2_s_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  mult6 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub2_s_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block aizHeun/Aizawa derivatives2/cube (6 delays)2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_cube_6_delays_2_x0 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out3 : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_cube_6_delays_2_x0;
architecture structural of aizheun_cube_6_delays_2_x0 is 
  signal ce_net : std_logic;
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
begin
  out3 <= mult7_p_net;
  addsub6_s_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  mult6 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub6_s_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
end structural;
-- Generated from Simulink block aizHeun/Aizawa derivatives2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_aizawa_derivatives2 is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 32-1 downto 0 );
    dy : out std_logic_vector( 32-1 downto 0 );
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_aizawa_derivatives2;
architecture structural of aizheun_aizawa_derivatives2 is 
  signal addsub1_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal mult7_p_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub8_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 32-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 33-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal mult8_p_net : std_logic_vector( 32-1 downto 0 );
begin
  dx <= delay10_q_net;
  dy <= delay9_q_net;
  dz <= addsub10_s_net;
  addsub2_s_net <= x;
  addsub1_s_net_x0 <= y;
  addsub6_s_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  cube_6_delays_1 : entity xil_defaultlib.aizheun_cube_6_delays_1_x0 
  port map (
    z => addsub2_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out3 => mult7_p_net
  );
  cube_6_delays_2 : entity xil_defaultlib.aizheun_cube_6_delays_2_x0 
  port map (
    z => addsub6_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out3 => mult7_p_net_x1
  );
  addsub1 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub10 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult5_p_net,
    b => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub10_s_net
  );
  addsub2 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub6_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net_x0
  );
  addsub3 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mult6_p_net,
    b => mult7_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  addsub6 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 12,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => constant8_op_net,
    b => cmult4_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net_x0
  );
  addsub7 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => delay5_q_net,
    b => cmult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  addsub8 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub7_s_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub8_s_net
  );
  cmult : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i4",
    extra_registers => 1,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  cmult5 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mult7_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult5_p_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3f178c2d9f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_6518182861 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_7c88b280bd 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay10 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay10_q_net
  );
  delay2 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => cmult3_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 7,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub6_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult8_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub8_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay9_q_net
  );
  mult1 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay1_q_net,
    b => addsub2_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult3 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => addsub2_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult5 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cmult2_p_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub2_s_net,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.aizheun_xlmult 
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
    core_name0 => "aizheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub1_s_net_x0,
    b => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net_x0
  );
  mult8 : entity xil_defaultlib.aizheun_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 33,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "aizheun_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay6_q_net,
    b => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult8_p_net
  );
end structural;
-- Generated from Simulink block aizHeun/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_subsystem1 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 32-1 downto 0 );
    n1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_subsystem1;
architecture structural of aizheun_subsystem1 is 
  signal ce_net : std_logic;
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay3_q_net <= z;
  delay10_q_net <= n2;
  delay6_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => delay10_q_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult3_p_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub21_s_net
  );
  cmult3 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i8",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
end structural;
-- Generated from Simulink block aizHeun/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_subsystem2 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 32-1 downto 0 );
    n1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_subsystem2;
architecture structural of aizheun_subsystem2 is 
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay4_q_net <= z;
  delay9_q_net <= n2;
  delay7_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => delay9_q_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult3_p_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub21_s_net
  );
  cmult3 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i8",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
end structural;
-- Generated from Simulink block aizHeun/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_subsystem3 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 32-1 downto 0 );
    n1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end aizheun_subsystem3;
architecture structural of aizheun_subsystem3 is 
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub18_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal delay8_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay5_q_net <= z;
  addsub10_s_net <= n2;
  delay8_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub10_s_net,
    b => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult3_p_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub21_s_net
  );
  cmult3 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "aizheun_mult_gen_v12_0_i8",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
end structural;
-- Generated from Simulink block aizHeun_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_struct is
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
end aizheun_struct;
architecture structural of aizheun_struct is 
  signal addsub21_s_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal addsub10_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal delay10_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay10_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal register3_q_net : std_logic_vector( 32-1 downto 0 );
  signal register4_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay9_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register11_q_net : std_logic_vector( 32-1 downto 0 );
  signal register10_q_net : std_logic_vector( 32-1 downto 0 );
  signal register5_q_net : std_logic_vector( 32-1 downto 0 );
  signal register8_q_net : std_logic_vector( 32-1 downto 0 );
  signal register9_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 32-1 downto 0 );
begin
  xnew <= addsub21_s_net_x1;
  ynew <= addsub21_s_net_x0;
  znew <= addsub21_s_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  aizawa_derivatives1 : entity xil_defaultlib.aizheun_aizawa_derivatives1 
  port map (
    x => x_net,
    y => y_net,
    z => z_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => delay10_q_net_x0,
    dy => delay9_q_net_x0,
    dz => addsub10_s_net_x0
  );
  aizawa_derivatives2 : entity xil_defaultlib.aizheun_aizawa_derivatives2 
  port map (
    x => addsub2_s_net,
    y => addsub1_s_net,
    z => addsub6_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => delay10_q_net,
    dy => delay9_q_net,
    dz => addsub10_s_net
  );
  subsystem1 : entity xil_defaultlib.aizheun_subsystem1 
  port map (
    z => delay3_q_net,
    n2 => delay10_q_net,
    n1 => delay6_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x1
  );
  subsystem2 : entity xil_defaultlib.aizheun_subsystem2 
  port map (
    z => delay4_q_net,
    n2 => delay9_q_net,
    n1 => delay7_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x0
  );
  subsystem3 : entity xil_defaultlib.aizheun_subsystem3 
  port map (
    z => delay5_q_net,
    n2 => addsub10_s_net,
    n1 => delay8_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net
  );
  addsub1 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => register1_q_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => register2_q_net,
    b => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub6 : entity xil_defaultlib.aizheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "aizheun_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult3_p_net,
    b => register_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  cmult1 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 96,
    core_name0 => "aizheun_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay10_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 96,
    core_name0 => "aizheun_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay9_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.aizheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 96,
    core_name0 => "aizheun_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub10_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay9 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => x_net,
    clk => clk_net,
    ce => ce_net,
    q => delay9_q_net_x1
  );
  register_x0 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register10 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register11 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register2 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay9_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay10_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register4 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay9_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register4_q_net
  );
  register5 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub10_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  register6 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  register7 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register7_q_net
  );
  register8 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register8_q_net
  );
  register9 : entity xil_defaultlib.aizheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register9_q_net
  );
  delay1 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => z_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register8_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register7_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.aizheun_xldelay 
  generic map (
    latency => 11,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun_default_clock_driver is
  port (
    aizheun_sysclk : in std_logic;
    aizheun_sysce : in std_logic;
    aizheun_sysclr : in std_logic;
    aizheun_clk1 : out std_logic;
    aizheun_ce1 : out std_logic
  );
end aizheun_default_clock_driver;
architecture structural of aizheun_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => aizheun_sysclk,
    sysce => aizheun_sysce,
    sysclr => aizheun_sysclr,
    clk => aizheun_clk1,
    ce => aizheun_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity aizheun is
  port (
    clk : in std_logic;
    aizheun_aresetn : in std_logic;
    aizheun_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    aizheun_s_axi_awvalid : in std_logic;
    aizheun_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    aizheun_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    aizheun_s_axi_wvalid : in std_logic;
    aizheun_s_axi_bready : in std_logic;
    aizheun_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    aizheun_s_axi_arvalid : in std_logic;
    aizheun_s_axi_rready : in std_logic;
    aizheun_s_axi_awready : out std_logic;
    aizheun_s_axi_wready : out std_logic;
    aizheun_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    aizheun_s_axi_bvalid : out std_logic;
    aizheun_s_axi_arready : out std_logic;
    aizheun_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    aizheun_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    aizheun_s_axi_rvalid : out std_logic
  );
end aizheun;
architecture structural of aizheun is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "aizheun,sysgen_core_2020_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1.7e-06,addsub=27,cmult=18,constant=6,delay=41,mult=20,register=12,}";
  signal xnew : std_logic_vector( 32-1 downto 0 );
  signal ynew : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net : std_logic;
  signal y : std_logic_vector( 32-1 downto 0 );
  signal znew : std_logic_vector( 32-1 downto 0 );
  signal z : std_logic_vector( 32-1 downto 0 );
  signal ce_1_net : std_logic;
  signal x : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
begin
  aizheun_axi_lite_interface : entity xil_defaultlib.aizheun_axi_lite_interface 
  port map (
    xnew => xnew,
    ynew => ynew,
    znew => znew,
    aizheun_s_axi_awaddr => aizheun_s_axi_awaddr,
    aizheun_s_axi_awvalid => aizheun_s_axi_awvalid,
    aizheun_s_axi_wdata => aizheun_s_axi_wdata,
    aizheun_s_axi_wstrb => aizheun_s_axi_wstrb,
    aizheun_s_axi_wvalid => aizheun_s_axi_wvalid,
    aizheun_s_axi_bready => aizheun_s_axi_bready,
    aizheun_s_axi_araddr => aizheun_s_axi_araddr,
    aizheun_s_axi_arvalid => aizheun_s_axi_arvalid,
    aizheun_s_axi_rready => aizheun_s_axi_rready,
    aizheun_aresetn => aizheun_aresetn,
    aizheun_aclk => clk,
    z => z,
    y => y,
    x => x,
    aizheun_s_axi_awready => aizheun_s_axi_awready,
    aizheun_s_axi_wready => aizheun_s_axi_wready,
    aizheun_s_axi_bresp => aizheun_s_axi_bresp,
    aizheun_s_axi_bvalid => aizheun_s_axi_bvalid,
    aizheun_s_axi_arready => aizheun_s_axi_arready,
    aizheun_s_axi_rdata => aizheun_s_axi_rdata,
    aizheun_s_axi_rresp => aizheun_s_axi_rresp,
    aizheun_s_axi_rvalid => aizheun_s_axi_rvalid,
    clk => clk_net
  );
  aizheun_default_clock_driver : entity xil_defaultlib.aizheun_default_clock_driver 
  port map (
    aizheun_sysclk => clk_net,
    aizheun_sysce => '1',
    aizheun_sysclr => '0',
    aizheun_clk1 => clk_1_net,
    aizheun_ce1 => ce_1_net
  );
  aizheun_struct : entity xil_defaultlib.aizheun_struct 
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