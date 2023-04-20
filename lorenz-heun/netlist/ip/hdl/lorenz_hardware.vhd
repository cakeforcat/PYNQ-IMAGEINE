-- Generated from Simulink block Lorenz_Hardware/Subsystem/Lorenz derivatives1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_lorenz_derivatives1 is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 35-1 downto 0 );
    dy : out std_logic_vector( 35-1 downto 0 );
    dz : out std_logic_vector( 35-1 downto 0 )
  );
end lorenz_hardware_lorenz_derivatives1;
architecture structural of lorenz_hardware_lorenz_derivatives1 is 
  signal ce_net : std_logic;
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 35-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 35-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 35-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 35-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 35-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 35-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 35-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub5_s_net : std_logic_vector( 35-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 35-1 downto 0 );
  signal register14_q_net : std_logic_vector( 35-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
begin
  dx <= cmult1_p_net;
  dy <= addsub5_s_net;
  dz <= register14_q_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub3 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  cmult : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_bin_pt => 0,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 5,
    c_output_width => 37,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 0,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 4,
    c_output_width => 39,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.lorenz_hardware_xlcmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  delay : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  mult1 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register_q_net,
    b => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  register_x0 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => x_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => z_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register14 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
  register2 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => y_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  mult2 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register_q_net,
    b => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware/Subsystem/Lorenz derivatives2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_lorenz_derivatives2 is
  port (
    x : in std_logic_vector( 35-1 downto 0 );
    y : in std_logic_vector( 35-1 downto 0 );
    z : in std_logic_vector( 35-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 35-1 downto 0 );
    dy : out std_logic_vector( 35-1 downto 0 );
    dz : out std_logic_vector( 35-1 downto 0 )
  );
end lorenz_hardware_lorenz_derivatives2;
architecture structural of lorenz_hardware_lorenz_derivatives2 is 
  signal register1_q_net : std_logic_vector( 35-1 downto 0 );
  signal register_q_net : std_logic_vector( 35-1 downto 0 );
  signal register2_q_net : std_logic_vector( 35-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 35-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 35-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 35-1 downto 0 );
  signal cmult_p_net : std_logic_vector( 35-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 35-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 35-1 downto 0 );
  signal register14_q_net : std_logic_vector( 35-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 35-1 downto 0 );
  signal addsub1_s_net_x0 : std_logic_vector( 35-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub3_s_net_x0 : std_logic_vector( 35-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 35-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 35-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 35-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 35-1 downto 0 );
  signal delay_q_net : std_logic_vector( 35-1 downto 0 );
begin
  dx <= cmult1_p_net;
  dy <= addsub5_s_net;
  dz <= register14_q_net;
  addsub2_s_net <= x;
  addsub1_s_net_x0 <= y;
  addsub3_s_net_x0 <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub3 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => cmult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult_p_net,
    b => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  cmult : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 0,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 5,
    c_output_width => 40,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i5",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult_p_net
  );
  cmult1 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 0,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 4,
    c_output_width => 39,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  cmult2 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 67,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i6",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  delay : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => register_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  mult1 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 0,
    c_b_width => 35,
    c_baat => 35,
    c_output_width => 70,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register_q_net,
    b => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 0,
    c_b_width => 35,
    c_baat => 35,
    c_output_width => 70,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i7",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register_q_net,
    b => register2_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  register_x0 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub3_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register14 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register14_q_net
  );
  register2 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware/Subsystem/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem1 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 35-1 downto 0 );
    n1 : in std_logic_vector( 35-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_subsystem1;
architecture structural of lorenz_hardware_subsystem1 is 
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cmult1_p_net : std_logic_vector( 35-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 35-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 68-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay3_q_net <= z;
  cmult1_p_net <= n2;
  delay6_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult1_p_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 68,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 69,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 69,
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
  cmult3 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 36,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 36,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 68,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i8",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 68,
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
  delay : entity xil_defaultlib.lorenz_hardware_xldelay 
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
  delay1 : entity xil_defaultlib.lorenz_hardware_xldelay 
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
-- Generated from Simulink block Lorenz_Hardware/Subsystem/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem2 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 35-1 downto 0 );
    n1 : in std_logic_vector( 35-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_subsystem2;
architecture structural of lorenz_hardware_subsystem2 is 
  signal clk_net : std_logic;
  signal delay7_q_net : std_logic_vector( 35-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 35-1 downto 0 );
  signal ce_net : std_logic;
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 36-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal cmult3_p_net : std_logic_vector( 68-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay4_q_net <= z;
  addsub5_s_net <= n2;
  delay7_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub5_s_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 68,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 69,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 69,
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
  cmult3 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 36,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 36,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 68,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i8",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 68,
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
  delay : entity xil_defaultlib.lorenz_hardware_xldelay 
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
  delay1 : entity xil_defaultlib.lorenz_hardware_xldelay 
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
-- Generated from Simulink block Lorenz_Hardware/Subsystem/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem3 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 35-1 downto 0 );
    n1 : in std_logic_vector( 35-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_subsystem3;
architecture structural of lorenz_hardware_subsystem3 is 
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal register14_q_net : std_logic_vector( 35-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 35-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cmult3_p_net : std_logic_vector( 68-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 36-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
begin
  dz <= addsub21_s_net;
  delay5_q_net <= z;
  register14_q_net <= n2;
  delay8_q_net <= n1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 36
  )
  port map (
    clr => '0',
    en => "1",
    a => register14_q_net,
    b => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 68,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 69,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 69,
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
  cmult3 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 36,
    b_bin_pt => 24,
    c_a_type => 0,
    c_a_width => 36,
    c_b_type => 1,
    c_b_width => 32,
    c_output_width => 68,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i8",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 68,
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
  delay : entity xil_defaultlib.lorenz_hardware_xldelay 
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
  delay1 : entity xil_defaultlib.lorenz_hardware_xldelay 
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
-- Generated from Simulink block Lorenz_Hardware/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem is
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
end lorenz_hardware_subsystem;
architecture structural of lorenz_hardware_subsystem is 
  signal cmult3_p_net : std_logic_vector( 35-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register3_q_net : std_logic_vector( 35-1 downto 0 );
  signal cmult1_p_net : std_logic_vector( 35-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register8_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 35-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 35-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal cmult1_p_net_x1 : std_logic_vector( 35-1 downto 0 );
  signal ce_net : std_logic;
  signal register14_q_net_x0 : std_logic_vector( 35-1 downto 0 );
  signal cmult1_p_net_x0 : std_logic_vector( 35-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 35-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal addsub5_s_net_x0 : std_logic_vector( 35-1 downto 0 );
  signal register14_q_net : std_logic_vector( 35-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 35-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 35-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 35-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 35-1 downto 0 );
  signal cmult2_p_net : std_logic_vector( 35-1 downto 0 );
  signal register10_q_net : std_logic_vector( 35-1 downto 0 );
  signal register11_q_net : std_logic_vector( 35-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register5_q_net : std_logic_vector( 35-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal register4_q_net : std_logic_vector( 35-1 downto 0 );
  signal register9_q_net : std_logic_vector( 35-1 downto 0 );
  signal addsub21_s_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x0 : std_logic_vector( 32-1 downto 0 );
begin
  xnew <= addsub21_s_net_x1;
  ynew <= addsub21_s_net_x0;
  znew <= addsub21_s_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  lorenz_derivatives1 : entity xil_defaultlib.lorenz_hardware_lorenz_derivatives1 
  port map (
    x => x_net,
    y => y_net,
    z => z_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => cmult1_p_net_x1,
    dy => addsub5_s_net_x0,
    dz => register14_q_net_x0
  );
  lorenz_derivatives2 : entity xil_defaultlib.lorenz_hardware_lorenz_derivatives2 
  port map (
    x => addsub2_s_net,
    y => addsub1_s_net,
    z => addsub3_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => cmult1_p_net_x0,
    dy => addsub5_s_net,
    dz => register14_q_net
  );
  subsystem1 : entity xil_defaultlib.lorenz_hardware_subsystem1 
  port map (
    z => delay3_q_net,
    n2 => cmult1_p_net_x0,
    n1 => delay6_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x1
  );
  subsystem2 : entity xil_defaultlib.lorenz_hardware_subsystem2 
  port map (
    z => delay4_q_net,
    n2 => addsub5_s_net,
    n1 => delay7_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x0
  );
  subsystem3 : entity xil_defaultlib.lorenz_hardware_subsystem3 
  port map (
    z => delay5_q_net,
    n2 => register14_q_net,
    n1 => delay8_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net
  );
  cmult1 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 99,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cmult1_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult1_p_net
  );
  delay : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
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
  delay1 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
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
  delay2 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
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
  delay3 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
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
  delay4 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
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
  delay5 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
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
  delay6 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => register9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => register10_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 6,
    reg_retiming => 0,
    reset => 0,
    width => 35
  )
  port map (
    en => '1',
    rst => '0',
    d => register11_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  register_x0 : entity xil_defaultlib.lorenz_hardware_xlregister 
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
  register1 : entity xil_defaultlib.lorenz_hardware_xlregister 
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
  register10 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register10_q_net
  );
  register11 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register11_q_net
  );
  register2 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register3 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => cmult1_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => register3_q_net
  );
  register4 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub5_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register4_q_net
  );
  register5 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register14_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  register6 : entity xil_defaultlib.lorenz_hardware_xlregister 
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
  register7 : entity xil_defaultlib.lorenz_hardware_xlregister 
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
  register8 : entity xil_defaultlib.lorenz_hardware_xlregister 
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
  register9 : entity xil_defaultlib.lorenz_hardware_xlregister 
  generic map (
    d_width => 35,
    init_value => b"00000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => register3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => register9_q_net
  );
  addsub2 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
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
  cmult2 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 99,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => addsub5_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult2_p_net
  );
  cmult3 : entity xil_defaultlib.lorenz_hardware_xlcmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_bin_pt => 56,
    c_a_type => 0,
    c_a_width => 35,
    c_b_type => 1,
    c_b_width => 64,
    c_output_width => 99,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 35,
    quantization => 1,
    zero_const => 0
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register14_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => cmult3_p_net
  );
  addsub1 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 35,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
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
  addsub3 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 35,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 36,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 36,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 35
  )
  port map (
    clr => '0',
    en => "1",
    a => cmult3_p_net,
    b => register_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_struct is
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
end lorenz_hardware_struct;
architecture structural of lorenz_hardware_struct is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net_x0 : std_logic_vector( 32-1 downto 0 );
begin
  xnew <= addsub21_s_net_x1;
  ynew <= addsub21_s_net_x0;
  znew <= addsub21_s_net;
  x_net <= x;
  y_net <= y;
  z_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.lorenz_hardware_subsystem 
  port map (
    x => x_net,
    y => y_net,
    z => z_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    xnew => addsub21_s_net_x1,
    ynew => addsub21_s_net_x0,
    znew => addsub21_s_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_default_clock_driver is
  port (
    lorenz_hardware_sysclk : in std_logic;
    lorenz_hardware_sysce : in std_logic;
    lorenz_hardware_sysclr : in std_logic;
    lorenz_hardware_clk1 : out std_logic;
    lorenz_hardware_ce1 : out std_logic
  );
end lorenz_hardware_default_clock_driver;
architecture structural of lorenz_hardware_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => lorenz_hardware_sysclk,
    sysce => lorenz_hardware_sysce,
    sysclr => lorenz_hardware_sysclr,
    clk => lorenz_hardware_clk1,
    ce => lorenz_hardware_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware is
  port (
    clk : in std_logic;
    lorenz_hardware_aresetn : in std_logic;
    lorenz_hardware_s_axi_awaddr : in std_logic_vector( 5-1 downto 0 );
    lorenz_hardware_s_axi_awvalid : in std_logic;
    lorenz_hardware_s_axi_wdata : in std_logic_vector( 32-1 downto 0 );
    lorenz_hardware_s_axi_wstrb : in std_logic_vector( 4-1 downto 0 );
    lorenz_hardware_s_axi_wvalid : in std_logic;
    lorenz_hardware_s_axi_bready : in std_logic;
    lorenz_hardware_s_axi_araddr : in std_logic_vector( 5-1 downto 0 );
    lorenz_hardware_s_axi_arvalid : in std_logic;
    lorenz_hardware_s_axi_rready : in std_logic;
    lorenz_hardware_s_axi_awready : out std_logic;
    lorenz_hardware_s_axi_wready : out std_logic;
    lorenz_hardware_s_axi_bresp : out std_logic_vector( 2-1 downto 0 );
    lorenz_hardware_s_axi_bvalid : out std_logic;
    lorenz_hardware_s_axi_arready : out std_logic;
    lorenz_hardware_s_axi_rdata : out std_logic_vector( 32-1 downto 0 );
    lorenz_hardware_s_axi_rresp : out std_logic_vector( 2-1 downto 0 );
    lorenz_hardware_s_axi_rvalid : out std_logic
  );
end lorenz_hardware;
architecture structural of lorenz_hardware is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "lorenz_hardware,sysgen_core_2020_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=6.8e-07,addsub=17,cmult=12,delay=19,mult=4,register=20,}";
  signal xnew : std_logic_vector( 32-1 downto 0 );
  signal ce_1_net : std_logic;
  signal z : std_logic_vector( 32-1 downto 0 );
  signal ynew : std_logic_vector( 32-1 downto 0 );
  signal x : std_logic_vector( 32-1 downto 0 );
  signal y : std_logic_vector( 32-1 downto 0 );
  signal znew : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net : std_logic;
  signal clk_net : std_logic;
begin
  lorenz_hardware_axi_lite_interface : entity xil_defaultlib.lorenz_hardware_axi_lite_interface 
  port map (
    xnew => xnew,
    ynew => ynew,
    znew => znew,
    lorenz_hardware_s_axi_awaddr => lorenz_hardware_s_axi_awaddr,
    lorenz_hardware_s_axi_awvalid => lorenz_hardware_s_axi_awvalid,
    lorenz_hardware_s_axi_wdata => lorenz_hardware_s_axi_wdata,
    lorenz_hardware_s_axi_wstrb => lorenz_hardware_s_axi_wstrb,
    lorenz_hardware_s_axi_wvalid => lorenz_hardware_s_axi_wvalid,
    lorenz_hardware_s_axi_bready => lorenz_hardware_s_axi_bready,
    lorenz_hardware_s_axi_araddr => lorenz_hardware_s_axi_araddr,
    lorenz_hardware_s_axi_arvalid => lorenz_hardware_s_axi_arvalid,
    lorenz_hardware_s_axi_rready => lorenz_hardware_s_axi_rready,
    lorenz_hardware_aresetn => lorenz_hardware_aresetn,
    lorenz_hardware_aclk => clk,
    z => z,
    y => y,
    x => x,
    lorenz_hardware_s_axi_awready => lorenz_hardware_s_axi_awready,
    lorenz_hardware_s_axi_wready => lorenz_hardware_s_axi_wready,
    lorenz_hardware_s_axi_bresp => lorenz_hardware_s_axi_bresp,
    lorenz_hardware_s_axi_bvalid => lorenz_hardware_s_axi_bvalid,
    lorenz_hardware_s_axi_arready => lorenz_hardware_s_axi_arready,
    lorenz_hardware_s_axi_rdata => lorenz_hardware_s_axi_rdata,
    lorenz_hardware_s_axi_rresp => lorenz_hardware_s_axi_rresp,
    lorenz_hardware_s_axi_rvalid => lorenz_hardware_s_axi_rvalid,
    clk => clk_net
  );
  lorenz_hardware_default_clock_driver : entity xil_defaultlib.lorenz_hardware_default_clock_driver 
  port map (
    lorenz_hardware_sysclk => clk_net,
    lorenz_hardware_sysce => '1',
    lorenz_hardware_sysclr => '0',
    lorenz_hardware_clk1 => clk_1_net,
    lorenz_hardware_ce1 => ce_1_net
  );
  lorenz_hardware_struct : entity xil_defaultlib.lorenz_hardware_struct 
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
