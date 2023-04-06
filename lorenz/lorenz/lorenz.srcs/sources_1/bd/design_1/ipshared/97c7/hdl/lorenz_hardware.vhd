-- Generated from Simulink block Lorenz_Hardware/Lorenz derivatives1
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
    dx : out std_logic_vector( 32-1 downto 0 );
    dy : out std_logic_vector( 33-1 downto 0 );
    dz : out std_logic_vector( 33-1 downto 0 )
  );
end lorenz_hardware_lorenz_derivatives1;
architecture structural of lorenz_hardware_lorenz_derivatives1 is 
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 33-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 33-1 downto 0 );
  signal negate_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 10-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 10-1 downto 0 );
begin
  dx <= mult4_p_net;
  dy <= addsub5_s_net;
  dz <= addsub4_s_net;
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
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
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
    a => mult1_p_net,
    b => mult2_p_net,
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
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => y_net,
    b => x_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net,
    b => y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_f556625018 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_a2a0d372de 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4124fe8b13 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    a => negate_op_net,
    b => z_net,
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
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 4,
    b_width => 10,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 10,
    c_baat => 32,
    c_output_width => 42,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i2",
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
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    b => y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 4,
    b_width => 10,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 0,
    c_b_width => 10,
    c_baat => 33,
    c_output_width => 43,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i3",
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
    a => addsub3_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult6 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    a => constant1_op_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  negate : entity xil_defaultlib.sysgen_negate_da04cdf96e 
  port map (
    clr => '0',
    ip => x_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware/Lorenz derivatives3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_lorenz_derivatives3 is
  port (
    x : in std_logic_vector( 32-1 downto 0 );
    y : in std_logic_vector( 32-1 downto 0 );
    z : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dx : out std_logic_vector( 32-1 downto 0 );
    dy : out std_logic_vector( 33-1 downto 0 );
    dz : out std_logic_vector( 33-1 downto 0 )
  );
end lorenz_hardware_lorenz_derivatives3;
architecture structural of lorenz_hardware_lorenz_derivatives3 is 
  signal mult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal ce_net : std_logic;
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 33-1 downto 0 );
  signal clk_net : std_logic;
  signal constant3_op_net : std_logic_vector( 10-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 33-1 downto 0 );
  signal negate_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 10-1 downto 0 );
begin
  dx <= mult4_p_net;
  dy <= addsub5_s_net;
  dz <= addsub4_s_net;
  addsub2_s_net <= x;
  addsub1_s_net_x0 <= y;
  addsub6_s_net <= z;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
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
    a => mult1_p_net,
    b => mult2_p_net,
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
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net_x0,
    b => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  addsub5 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub1_s_net,
    b => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addsub5_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_f556625018 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_a2a0d372de 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4124fe8b13 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    a => negate_op_net,
    b => addsub6_s_net,
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
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 4,
    b_width => 10,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 10,
    c_baat => 32,
    c_output_width => 42,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i2",
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
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    b => addsub1_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 4,
    b_width => 10,
    c_a_type => 0,
    c_a_width => 33,
    c_b_type => 0,
    c_b_width => 10,
    c_baat => 33,
    c_output_width => 43,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i3",
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
    a => addsub3_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult6 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    a => constant1_op_net,
    b => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  negate : entity xil_defaultlib.sysgen_negate_da04cdf96e 
  port map (
    clr => '0',
    ip => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem1 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 32-1 downto 0 );
    n1 : in std_logic_vector( 32-1 downto 0 );
    h2 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_subsystem1;
architecture structural of lorenz_hardware_subsystem1 is 
  signal k2_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult25_p_net : std_logic_vector( 65-1 downto 0 );
  signal x2_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub18_s_net : std_logic_vector( 33-1 downto 0 );
  signal k1_q_net : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
begin
  dz <= addsub21_s_net;
  x_net <= z;
  k2_q_net <= n2;
  k1_q_net <= n1;
  x2_op_net <= h2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 33
  )
  port map (
    clr => '0',
    en => "1",
    a => k2_q_net,
    b => k1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 65,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 66,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 66,
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
  mult25 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 33,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 33,
    c_baat => 32,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 65,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x2_op_net,
    b => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult25_p_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware/Subsystem2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem2 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 33-1 downto 0 );
    n1 : in std_logic_vector( 33-1 downto 0 );
    h2 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_subsystem2;
architecture structural of lorenz_hardware_subsystem2 is 
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal mult25_p_net : std_logic_vector( 66-1 downto 0 );
  signal ce_net : std_logic;
  signal l2_q_net : std_logic_vector( 33-1 downto 0 );
  signal l1_q_net : std_logic_vector( 33-1 downto 0 );
  signal x2_op_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub18_s_net : std_logic_vector( 34-1 downto 0 );
begin
  dz <= addsub21_s_net;
  y_net <= z;
  l2_q_net <= n2;
  l1_q_net <= n1;
  x2_op_net <= h2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 33,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 34,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 34,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 34
  )
  port map (
    clr => '0',
    en => "1",
    a => l2_q_net,
    b => l1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 66,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 67,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 67,
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
  mult25 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 34,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 34,
    c_baat => 32,
    c_output_width => 66,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 66,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x2_op_net,
    b => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult25_p_net
  );
end structural;
-- Generated from Simulink block Lorenz_Hardware/Subsystem3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity lorenz_hardware_subsystem3 is
  port (
    z : in std_logic_vector( 32-1 downto 0 );
    n2 : in std_logic_vector( 33-1 downto 0 );
    n1 : in std_logic_vector( 33-1 downto 0 );
    h2 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dz : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_subsystem3;
architecture structural of lorenz_hardware_subsystem3 is 
  signal mult25_p_net : std_logic_vector( 66-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal m2_q_net : std_logic_vector( 33-1 downto 0 );
  signal x2_op_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub18_s_net : std_logic_vector( 34-1 downto 0 );
  signal m1_q_net : std_logic_vector( 33-1 downto 0 );
begin
  dz <= addsub21_s_net;
  z_net <= z;
  m2_q_net <= n2;
  m1_q_net <= n1;
  x2_op_net <= h2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub18 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 33,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 33,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 34,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 34,
    latency => 0,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 34
  )
  port map (
    clr => '0',
    en => "1",
    a => m2_q_net,
    b => m1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub18_s_net
  );
  addsub21 : entity xil_defaultlib.lorenz_hardware_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 48,
    a_width => 66,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 67,
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 67,
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
  mult25 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 34,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 34,
    c_baat => 32,
    c_output_width => 66,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i4",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 48,
    p_width => 66,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x2_op_net,
    b => addsub18_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult25_p_net
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
    test1 : out std_logic_vector( 32-1 downto 0 );
    xnew : out std_logic_vector( 32-1 downto 0 );
    ynew : out std_logic_vector( 32-1 downto 0 );
    znew : out std_logic_vector( 32-1 downto 0 )
  );
end lorenz_hardware_struct;
architecture structural of lorenz_hardware_struct is 
  signal addsub21_s_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal x_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal k2_q_net : std_logic_vector( 32-1 downto 0 );
  signal k1_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub21_s_net : std_logic_vector( 32-1 downto 0 );
  signal l2_q_net : std_logic_vector( 33-1 downto 0 );
  signal l1_q_net : std_logic_vector( 33-1 downto 0 );
  signal addsub21_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal m1_q_net : std_logic_vector( 33-1 downto 0 );
  signal m2_q_net : std_logic_vector( 33-1 downto 0 );
  signal x2_op_net : std_logic_vector( 32-1 downto 0 );
  signal y_net : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal z_net : std_logic_vector( 32-1 downto 0 );
  signal addsub5_s_net : std_logic_vector( 33-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 33-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub5_s_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net_x0 : std_logic_vector( 33-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
begin
  test1 <= mult4_p_net_x1;
  xnew <= addsub21_s_net;
  ynew <= addsub21_s_net_x0;
  znew <= addsub21_s_net_x1;
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
    dx => mult4_p_net_x1,
    dy => addsub5_s_net,
    dz => addsub4_s_net
  );
  lorenz_derivatives3 : entity xil_defaultlib.lorenz_hardware_lorenz_derivatives3 
  port map (
    x => addsub2_s_net,
    y => addsub1_s_net,
    z => addsub6_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dx => mult4_p_net,
    dy => addsub5_s_net_x0,
    dz => addsub4_s_net_x0
  );
  subsystem1 : entity xil_defaultlib.lorenz_hardware_subsystem1 
  port map (
    z => x_net,
    n2 => k2_q_net,
    n1 => k1_q_net,
    h2 => x2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net
  );
  subsystem2 : entity xil_defaultlib.lorenz_hardware_subsystem2 
  port map (
    z => y_net,
    n2 => l2_q_net,
    n1 => l1_q_net,
    h2 => x2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x0
  );
  subsystem3 : entity xil_defaultlib.lorenz_hardware_subsystem3 
  port map (
    z => z_net,
    n2 => m2_q_net,
    n1 => m1_q_net,
    h2 => x2_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dz => addsub21_s_net_x1
  );
  addsub1 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
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
    a => y_net,
    b => mult2_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
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
    a => x_net,
    b => mult4_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub6 : entity xil_defaultlib.lorenz_hardware_xladdsub 
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
    core_name0 => "lorenz_hardware_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
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
    a => mult5_p_net,
    b => z_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  mult2 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 33,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 33,
    c_baat => 32,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i0",
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
    a => x2_op_net,
    b => l1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult4 : entity xil_defaultlib.lorenz_hardware_xlmult 
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
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i1",
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
    a => x2_op_net,
    b => k1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net_x0
  );
  mult5 : entity xil_defaultlib.lorenz_hardware_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 33,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 33,
    c_baat => 32,
    c_output_width => 65,
    c_type => 0,
    core_name0 => "lorenz_hardware_mult_gen_v12_0_i0",
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
    a => x2_op_net,
    b => m1_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  x2 : entity xil_defaultlib.sysgen_constant_ecfb47cec3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => x2_op_net
  );
  k1 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult4_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => k1_q_net
  );
  k2 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    q => k2_q_net
  );
  l1 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub5_s_net,
    clk => clk_net,
    ce => ce_net,
    q => l1_q_net
  );
  l2 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub5_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => l2_q_net
  );
  m1 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    q => m1_q_net
  );
  m2 : entity xil_defaultlib.lorenz_hardware_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 33
  )
  port map (
    en => '1',
    rst => '0',
    d => addsub4_s_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => m2_q_net
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
    test1 : out std_logic_vector( 32-1 downto 0 );
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
  attribute core_generation_info of structural : architecture is "lorenz_hardware,sysgen_core_2020_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1e-05,addsub=17,constant=7,delay=6,mult=16,negate=2,}";
  signal znew : std_logic_vector( 32-1 downto 0 );
  signal x : std_logic_vector( 32-1 downto 0 );
  signal y : std_logic_vector( 32-1 downto 0 );
  signal z : std_logic_vector( 32-1 downto 0 );
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
  signal xnew : std_logic_vector( 32-1 downto 0 );
  signal ynew : std_logic_vector( 32-1 downto 0 );
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
    test1 => test1,
    xnew => xnew,
    ynew => ynew,
    znew => znew
  );
end structural;
