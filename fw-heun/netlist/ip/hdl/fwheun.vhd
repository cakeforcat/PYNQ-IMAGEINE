-- Generated from Simulink block fwHeun/Fourwing derivatives1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_fourwing_derivatives1 is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 65-1 downto 0 );
    dy : out std_logic_vector( 65-1 downto 0 );
    dz : out std_logic_vector( 33-1 downto 0 )
  );
end fwheun_fourwing_derivatives1;
architecture structural of fwheun_fourwing_derivatives1 is 
  signal addsub2_s_net : std_logic_vector( 65-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 33-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 65-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 33-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 64-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 65-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 65-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 64-1 downto 0 );
begin
  dx <= delay3_q_net;
  dy <= delay4_q_net;
  dz <= addsub4_s_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i0",
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
    a => cmult2_p_net,
    b => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "fwheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 65
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "fwheun_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 65
  )
  port map (
    clr => '0',
    en => "1",
    a => delay_q_net,
    b => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub4 : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i3",
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
    a => cmult4_p_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  cmult1 : entity xil_defaultlib.fwheun_xlcmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i1",
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
    a => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.fwheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "fwheun_mult_gen_v12_0_i2",
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
    a => y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.fwheun_xlcmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i3",
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
    a => x_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity xil_defaultlib.fwheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 64,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 32,
    c_output_width => 96,
    core_name0 => "fwheun_mult_gen_v12_0_i4",
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
    a => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  delay : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 2,
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
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 4,
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
  delay3 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  mult4 : entity xil_defaultlib.fwheun_xlmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i5",
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
  mult7 : entity xil_defaultlib.fwheun_xlmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i5",
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
  mult9 : entity xil_defaultlib.fwheun_xlmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i5",
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
-- Generated from Simulink block fwHeun/Fourwing derivatives2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_fourwing_derivatives2 is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 65-1 downto 0 );
    dy : out std_logic_vector( 65-1 downto 0 );
    dz : out std_logic_vector( 33-1 downto 0 )
  );
end fwheun_fourwing_derivatives2;
architecture structural of fwheun_fourwing_derivatives2 is 
  signal addsub1_s_net : std_logic_vector( 65-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 33-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 33-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub1_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 65-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 65-1 downto 0 );
  signal mult9_p_net : std_logic_vector( 64-1 downto 0 );
  signal cmult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net_x0 : std_logic_vector( 65-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
begin
  dx <= delay3_q_net;
  dy <= delay4_q_net;
  dz <= addsub4_s_net;
  addsub2_s_net <= x;
  addsub1_s_net_x0 <= y;
  addsub6_s_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i0",
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
    a => cmult2_p_net,
    b => cmult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "fwheun_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 65
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "fwheun_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 65
  )
  port map (
    clr => '0',
    en => "1",
    a => delay_q_net,
    b => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net_x0
  );
  addsub4 : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i3",
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
    a => cmult4_p_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  cmult1 : entity xil_defaultlib.fwheun_xlcmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i1",
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
    a => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.fwheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_output_width => 64,
    core_name0 => "fwheun_mult_gen_v12_0_i2",
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
    a => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.fwheun_xlcmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i3",
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
    a => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  cmult4 : entity xil_defaultlib.fwheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 64,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 32,
    c_output_width => 96,
    core_name0 => "fwheun_mult_gen_v12_0_i4",
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
    a => mult9_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult4_p_net
  );
  delay : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 2,
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
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 4,
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
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub2_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  mult4 : entity xil_defaultlib.fwheun_xlmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i5",
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
    a => addsub1_s_net_x0,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult7 : entity xil_defaultlib.fwheun_xlmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i5",
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
    a => addsub2_s_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  mult9 : entity xil_defaultlib.fwheun_xlmult 
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
    core_name0 => "fwheun_mult_gen_v12_0_i5",
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
    a => addsub1_s_net_x0,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult9_p_net
  );
end structural;
-- Generated from Simulink block fwHeun/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_subsystem1 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 65-1 downto 0 );
    n1 : in std_logic_vector( 65-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end fwheun_subsystem1;
architecture structural of fwheun_subsystem1 is 
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 65-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 65-1 downto 0 );
  signal clk_net : std_logic;
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 98-1 downto 0 );
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 66-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay3_q_net_x0 <= z;
  delay3_q_net <= n2;
  delay6_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 65,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 65,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 66,
    core_name0 => "fwheun_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 66,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 66
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 72,
    a_width => 98,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 99,
    core_name0 => "fwheun_c_addsub_v12_0_i5",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 99,
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
  cmult3 : entity xil_defaultlib.sysgen_cmult_6e0434cbae 
  port map (
    clr => '0',
    a => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    p => cmult3_p_net
  );
  delay : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.fwheun_xldelay 
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
-- Generated from Simulink block fwHeun/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_subsystem2 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 65-1 downto 0 );
    n1 : in std_logic_vector( 65-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end fwheun_subsystem2;
architecture structural of fwheun_subsystem2 is 
  signal delay7_q_net : std_logic_vector( 65-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 65-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub18_s_net : std_logic_vector( 66-1 downto 0 );
  signal delay4_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 98-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay4_q_net_x0 <= z;
  delay4_q_net <= n2;
  delay7_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 65,
    b_arith => xlSigned,
    b_bin_pt => 48,
    b_width => 65,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 66,
    core_name0 => "fwheun_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 66,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 48,
    s_width => 66
  )
  port map (
    clr => '0',
    en => "1",
    a => delay4_q_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 72,
    a_width => 98,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 99,
    core_name0 => "fwheun_c_addsub_v12_0_i5",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 99,
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
  cmult3 : entity xil_defaultlib.sysgen_cmult_6e0434cbae 
  port map (
    clr => '0',
    a => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    p => cmult3_p_net
  );
  delay : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.fwheun_xldelay 
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
-- Generated from Simulink block fwHeun/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_subsystem3 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 33-1 downto 0 );
    n1 : in std_logic_vector( 33-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end fwheun_subsystem3;
architecture structural of fwheun_subsystem3 is 
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 33-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub18_s_net : std_logic_vector( 34-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 66-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay5_q_net <= z;
  addsub4_s_net <= n2;
  delay8_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 33,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 34,
    core_name0 => "fwheun_c_addsub_v12_0_i6",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 34,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 34
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub4_s_net,
    b => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.fwheun_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 66,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 67,
    core_name0 => "fwheun_c_addsub_v12_0_i7",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 67,
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
  cmult3 : entity xil_defaultlib.fwheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 34,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 34,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 66,
    core_name0 => "fwheun_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 66,
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
  delay : entity xil_defaultlib.fwheun_xldelay 
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
  delay1 : entity xil_defaultlib.fwheun_xldelay 
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
-- Generated from Simulink block fwHeun_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_struct is
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
end fwheun_struct;
architecture structural of fwheun_struct is 
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net_x1 : std_logic_vector( 65-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 65-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal delay3_q_net_x0 : std_logic_vector( 65-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 65-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 33-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net_x1 : std_logic_vector( 65-1 downto 0 );
  signal delay4_q_net_x0 : std_logic_vector( 65-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub4_s_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal register8_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register4_q_net : std_logic_vector( 65-1 downto 0 );
  signal register9_q_net : std_logic_vector( 65-1 downto 0 );
  signal delay9_q_net : std_logic_vector( 32-1 downto 0 );
  signal register5_q_net : std_logic_vector( 33-1 downto 0 );
  signal register10_q_net : std_logic_vector( 65-1 downto 0 );
  signal register11_q_net : std_logic_vector( 33-1 downto 0 );
  signal register3_q_net : std_logic_vector( 65-1 downto 0 );
begin
  xnew <= addsub21_s_net_x1;
  ynew <= addsub21_s_net_x0;
  znew <= addsub21_s_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  fourwing_derivatives1 : entity xil_defaultlib.fwheun_fourwing_derivatives1 
  port map (
    x => x_net,
    y => y_net,
    z => z_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => delay3_q_net_x1,
    dy => delay4_q_net_x1,
    dz => addsub4_s_net_x0
  );
  fourwing_derivatives2 : entity xil_defaultlib.fwheun_fourwing_derivatives2 
  port map (
    x => addsub2_s_net,
    y => addsub1_s_net,
    z => addsub6_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => delay3_q_net_x0,
    dy => delay4_q_net_x0,
    dz => addsub4_s_net
  );
  subsystem1 : entity xil_defaultlib.fwheun_subsystem1 
  port map (
    z => delay3_q_net,
    n2 => delay3_q_net_x0,
    n1 => delay6_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x1
  );
  subsystem2 : entity xil_defaultlib.fwheun_subsystem2 
  port map (
    z => delay4_q_net,
    n2 => delay4_q_net_x0,
    n1 => delay7_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x0
  );
  subsystem3 : entity xil_defaultlib.fwheun_subsystem3 
  port map (
    z => delay5_q_net,
    n2 => addsub4_s_net,
    n1 => delay8_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net
  );
  addsub1 : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i0",
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
  addsub2 : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i0",
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
  addsub6 : entity xil_defaultlib.fwheun_xladdsub 
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
    core_name0 => "fwheun_c_addsub_v12_0_i0",
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
  cmult1 : entity xil_defaultlib.sysgen_cmult_075bdb8d63 
  port map (
    clr => '0',
    a => delay3_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.sysgen_cmult_075bdb8d63 
  port map (
    clr => '0',
    a => delay4_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.fwheun_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 97,
    core_name0 => "fwheun_mult_gen_v12_0_i0",
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
    a => addsub4_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  delay1 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
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
  delay2 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
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
  delay3 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
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
  delay4 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
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
  delay5 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
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
  delay6 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => register9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 65
  )
  port map (
    en => '1',
    rst => '0',
    d => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.fwheun_xldelay 
  generic map (
    latency => 5,
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
    q => delay9_q_net
  );
  register_x0 : entity xil_defaultlib.fwheun_xlregister 
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
  register1 : entity xil_defaultlib.fwheun_xlregister 
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
  register10 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 65,
    init_value => b"00000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register11 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register2 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 65,
    init_value => b"00000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay3_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register4 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 65,
    init_value => b"00000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay4_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => register4_q_net
  );
  register5 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 33,
    init_value => b"000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub4_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  register6 : entity xil_defaultlib.fwheun_xlregister 
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
  register7 : entity xil_defaultlib.fwheun_xlregister 
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
  register8 : entity xil_defaultlib.fwheun_xlregister 
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
  register9 : entity xil_defaultlib.fwheun_xlregister 
  generic map (
    d_width => 65,
    init_value => b"00000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register9_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun_default_clock_driver is
  port (
    fwheun_sysclk : in std_logic;
    fwheun_sysce : in std_logic;
    fwheun_sysclr : in std_logic;
    fwheun_clk1 : out std_logic;
    fwheun_ce1 : out std_logic
  );
end fwheun_default_clock_driver;
architecture structural of fwheun_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => fwheun_sysclk,
    sysce => fwheun_sysce,
    sysclr => fwheun_sysclr,
    clk => fwheun_clk1,
    ce => fwheun_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fwheun is
  port (
    clk : in std_logic;
    fwheun_aresetn : in std_logic;
    fwheun_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    fwheun_s_axi_awvalid : in std_logic;
    fwheun_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    fwheun_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    fwheun_s_axi_wvalid : in std_logic;
    fwheun_s_axi_bready : in std_logic;
    fwheun_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    fwheun_s_axi_arvalid : in std_logic;
    fwheun_s_axi_rready : in std_logic;
    fwheun_s_axi_awready : out std_logic;
    fwheun_s_axi_wready : out std_logic;
    fwheun_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    fwheun_s_axi_bvalid : out std_logic;
    fwheun_s_axi_arready : out std_logic;
    fwheun_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    fwheun_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    fwheun_s_axi_rvalid : out std_logic
  );
end fwheun;
architecture structural of fwheun is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "fwheun,sysgen_core_2020_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1.7e-06,addsub=17,cmult=14,delay=25,mult=6,register=12,}";
  signal y : std_logic_vector( 32-1 downto 0 );
  signal ynew : std_logic_vector( 32-1 downto 0 );
  signal znew : std_logic_vector( 32-1 downto 0 );
  signal x : std_logic_vector( 32-1 downto 0 );
  signal xnew : std_logic_vector( 32-1 downto 0 );
  signal ce_1_net : std_logic;
  signal z : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net : std_logic;
  signal clk_net : std_logic;
begin
  fwheun_axi_lite_interface : entity xil_defaultlib.fwheun_axi_lite_interface 
  port map (
    xnew => xnew,
    ynew => ynew,
    znew => znew,
    fwheun_s_axi_awaddr => fwheun_s_axi_awaddr,
    fwheun_s_axi_awvalid => fwheun_s_axi_awvalid,
    fwheun_s_axi_wdata => fwheun_s_axi_wdata,
    fwheun_s_axi_wstrb => fwheun_s_axi_wstrb,
    fwheun_s_axi_wvalid => fwheun_s_axi_wvalid,
    fwheun_s_axi_bready => fwheun_s_axi_bready,
    fwheun_s_axi_araddr => fwheun_s_axi_araddr,
    fwheun_s_axi_arvalid => fwheun_s_axi_arvalid,
    fwheun_s_axi_rready => fwheun_s_axi_rready,
    fwheun_aresetn => fwheun_aresetn,
    fwheun_aclk => clk,
    z => z,
    y => y,
    x => x,
    fwheun_s_axi_awready => fwheun_s_axi_awready,
    fwheun_s_axi_wready => fwheun_s_axi_wready,
    fwheun_s_axi_bresp => fwheun_s_axi_bresp,
    fwheun_s_axi_bvalid => fwheun_s_axi_bvalid,
    fwheun_s_axi_arready => fwheun_s_axi_arready,
    fwheun_s_axi_rdata => fwheun_s_axi_rdata,
    fwheun_s_axi_rresp => fwheun_s_axi_rresp,
    fwheun_s_axi_rvalid => fwheun_s_axi_rvalid,
    clk => clk_net
  );
  fwheun_default_clock_driver : entity xil_defaultlib.fwheun_default_clock_driver 
  port map (
    fwheun_sysclk => clk_net,
    fwheun_sysce => '1',
    fwheun_sysclr => '0',
    fwheun_clk1 => clk_1_net,
    fwheun_ce1 => ce_1_net
  );
  fwheun_struct : entity xil_defaultlib.fwheun_struct 
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
