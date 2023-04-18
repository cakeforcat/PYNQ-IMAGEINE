-------------------------------------------------------------------
-- System Generator version 2020.1 VHDL source file.
--
-- Copyright(C) 2020 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2020 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_cmult_075bdb8d63 is
  port (
    a : in std_logic_vector((65 - 1) downto 0);
    p : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_cmult_075bdb8d63;
architecture behavior of sysgen_cmult_075bdb8d63
is
  signal a_1_22: signed((65 - 1) downto 0);
  type array_type_op_mem_71_20 is array (0 to (1 - 1)) of signed((32 - 1) downto 0);
  signal op_mem_71_20: array_type_op_mem_71_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_71_20_front_din: signed((32 - 1) downto 0);
  signal op_mem_71_20_back: signed((32 - 1) downto 0);
  signal op_mem_71_20_push_front_pop_back_en: std_logic;
  signal mult_52_58: signed((130 - 1) downto 0);
  signal cast_product_52_5_convert: signed((129 - 1) downto 0);
  signal product_61_3_convert: signed((32 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  op_mem_71_20_back <= op_mem_71_20(0);
  proc_op_mem_71_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_71_20_push_front_pop_back_en = '1')) then
        op_mem_71_20(0) <= op_mem_71_20_front_din;
      end if;
    end if;
  end process proc_op_mem_71_20;
  mult_52_58 <= (a_1_22 * std_logic_vector_to_signed("00000000000000001010001111010111000010100011110101110000101001000"));
  cast_product_52_5_convert <= s2s_cast(mult_52_58, 104, 129, 104);
  product_61_3_convert <= std_logic_vector_to_signed(convert_type(signed_to_std_logic_vector(cast_product_52_5_convert), 129, 104, xlSigned, 32, 24, xlSigned, xlTruncate, xlSaturate));
  op_mem_71_20_front_din <= product_61_3_convert;
  op_mem_71_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_71_20_back);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity fwheun_xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));

end fwheun_xldelay;

architecture behavior of fwheun_xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component; -- end component synth_reg

   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;

   signal internal_ce  : std_logic;

begin
   internal_ce  <= ce and en;

   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;

   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xlregister.vhd
--
--  Description   : VHDL description of an arbitrary wide register.
--                  Unlike the delay block, an initial value is
--                  specified and is considered valid at the start
--                  of simulation.  The register is only one word
--                  deep.
--
--  Mod. History  : Removed valid bit logic from wrapper.
--                : Changed VHDL to use a bit_vector generic for its
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;


entity fwheun_xlregister is

   generic (d_width          : integer := 5;          -- Width of d input
            init_value       : bit_vector := b"00");  -- Binary init value string

   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));

end fwheun_xlregister;

architecture behavior of fwheun_xlregister is

   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component; -- end synth_reg_w_init

   -- synthesis translate_off
   signal real_d, real_q           : real;    -- For debugging info ports
   -- synthesis translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;

begin

   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;

   -- Synthesizable behavioral model
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);

end architecture behavior;


library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_cmult_6e0434cbae is
  port (
    a : in std_logic_vector((66 - 1) downto 0);
    p : out std_logic_vector((98 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_cmult_6e0434cbae;
architecture behavior of sysgen_cmult_6e0434cbae
is
  signal a_1_22: signed((66 - 1) downto 0);
  type array_type_op_mem_71_20 is array (0 to (1 - 1)) of signed((98 - 1) downto 0);
  signal op_mem_71_20: array_type_op_mem_71_20 := (
    0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_71_20_front_din: signed((98 - 1) downto 0);
  signal op_mem_71_20_back: signed((98 - 1) downto 0);
  signal op_mem_71_20_push_front_pop_back_en: std_logic;
  signal mult_52_58: signed((99 - 1) downto 0);
  signal cast_product_52_5_convert: signed((98 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  op_mem_71_20_back <= op_mem_71_20(0);
  proc_op_mem_71_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_71_20_push_front_pop_back_en = '1')) then
        op_mem_71_20(0) <= op_mem_71_20_front_din;
      end if;
    end if;
  end process proc_op_mem_71_20;
  mult_52_58 <= (a_1_22 * std_logic_vector_to_signed("000000000000000010100011110101110"));
  cast_product_52_5_convert <= s2s_cast(mult_52_58, 72, 98, 72);
  op_mem_71_20_front_din <= cast_product_52_5_convert;
  op_mem_71_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_71_20_back);
end behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity fwheun_axi_lite_interface is 
    port(
        z : out std_logic_vector(31 downto 0);
        y : out std_logic_vector(31 downto 0);
        x : out std_logic_vector(31 downto 0);
        xnew : in std_logic_vector(31 downto 0);
        ynew : in std_logic_vector(31 downto 0);
        znew : in std_logic_vector(31 downto 0);
        clk : out std_logic;
        fwheun_aclk : in std_logic;
        fwheun_aresetn : in std_logic;
        fwheun_s_axi_awaddr : in std_logic_vector(5-1 downto 0);
        fwheun_s_axi_awvalid : in std_logic;
        fwheun_s_axi_awready : out std_logic;
        fwheun_s_axi_wdata : in std_logic_vector(32-1 downto 0);
        fwheun_s_axi_wstrb : in std_logic_vector(32/8-1 downto 0);
        fwheun_s_axi_wvalid : in std_logic;
        fwheun_s_axi_wready : out std_logic;
        fwheun_s_axi_bresp : out std_logic_vector(1 downto 0);
        fwheun_s_axi_bvalid : out std_logic;
        fwheun_s_axi_bready : in std_logic;
        fwheun_s_axi_araddr : in std_logic_vector(5-1 downto 0);
        fwheun_s_axi_arvalid : in std_logic;
        fwheun_s_axi_arready : out std_logic;
        fwheun_s_axi_rdata : out std_logic_vector(32-1 downto 0);
        fwheun_s_axi_rresp : out std_logic_vector(1 downto 0);
        fwheun_s_axi_rvalid : out std_logic;
        fwheun_s_axi_rready : in std_logic
    );
end fwheun_axi_lite_interface;
architecture structural of fwheun_axi_lite_interface is 
component fwheun_axi_lite_interface_verilog is
    port(
        z : out std_logic_vector(31 downto 0);
        y : out std_logic_vector(31 downto 0);
        x : out std_logic_vector(31 downto 0);
        xnew : in std_logic_vector(31 downto 0);
        ynew : in std_logic_vector(31 downto 0);
        znew : in std_logic_vector(31 downto 0);
        clk : out std_logic;
        fwheun_aclk : in std_logic;
        fwheun_aresetn : in std_logic;
        fwheun_s_axi_awaddr : in std_logic_vector(5-1 downto 0);
        fwheun_s_axi_awvalid : in std_logic;
        fwheun_s_axi_awready : out std_logic;
        fwheun_s_axi_wdata : in std_logic_vector(32-1 downto 0);
        fwheun_s_axi_wstrb : in std_logic_vector(32/8-1 downto 0);
        fwheun_s_axi_wvalid : in std_logic;
        fwheun_s_axi_wready : out std_logic;
        fwheun_s_axi_bresp : out std_logic_vector(1 downto 0);
        fwheun_s_axi_bvalid : out std_logic;
        fwheun_s_axi_bready : in std_logic;
        fwheun_s_axi_araddr : in std_logic_vector(5-1 downto 0);
        fwheun_s_axi_arvalid : in std_logic;
        fwheun_s_axi_arready : out std_logic;
        fwheun_s_axi_rdata : out std_logic_vector(32-1 downto 0);
        fwheun_s_axi_rresp : out std_logic_vector(1 downto 0);
        fwheun_s_axi_rvalid : out std_logic;
        fwheun_s_axi_rready : in std_logic
    );
end component;
begin
inst : fwheun_axi_lite_interface_verilog
    port map(
    z => z,
    y => y,
    x => x,
    xnew => xnew,
    ynew => ynew,
    znew => znew,
    clk => clk,
    fwheun_aclk => fwheun_aclk,
    fwheun_aresetn => fwheun_aresetn,
    fwheun_s_axi_awaddr => fwheun_s_axi_awaddr,
    fwheun_s_axi_awvalid => fwheun_s_axi_awvalid,
    fwheun_s_axi_awready => fwheun_s_axi_awready,
    fwheun_s_axi_wdata => fwheun_s_axi_wdata,
    fwheun_s_axi_wstrb => fwheun_s_axi_wstrb,
    fwheun_s_axi_wvalid => fwheun_s_axi_wvalid,
    fwheun_s_axi_wready => fwheun_s_axi_wready,
    fwheun_s_axi_bresp => fwheun_s_axi_bresp,
    fwheun_s_axi_bvalid => fwheun_s_axi_bvalid,
    fwheun_s_axi_bready => fwheun_s_axi_bready,
    fwheun_s_axi_araddr => fwheun_s_axi_araddr,
    fwheun_s_axi_arvalid => fwheun_s_axi_arvalid,
    fwheun_s_axi_arready => fwheun_s_axi_arready,
    fwheun_s_axi_rdata => fwheun_s_axi_rdata,
    fwheun_s_axi_rresp => fwheun_s_axi_rresp,
    fwheun_s_axi_rvalid => fwheun_s_axi_rvalid,
    fwheun_s_axi_rready => fwheun_s_axi_rready
);
end structural;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity fwheun_xladdsub is 
   generic (
     core_name0: string := "";
     a_width: integer := 16;
     a_bin_pt: integer := 4;
     a_arith: integer := xlUnsigned;
     c_in_width: integer := 16;
     c_in_bin_pt: integer := 4;
     c_in_arith: integer := xlUnsigned;
     c_out_width: integer := 16;
     c_out_bin_pt: integer := 4;
     c_out_arith: integer := xlUnsigned;
     b_width: integer := 8;
     b_bin_pt: integer := 2;
     b_arith: integer := xlUnsigned;
     s_width: integer := 17;
     s_bin_pt: integer := 4;
     s_arith: integer := xlUnsigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     full_s_width: integer := 17;
     full_s_arith: integer := xlUnsigned;
     mode: integer := xlAddMode;
     extra_registers: integer := 0;
     latency: integer := 0;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     c_latency: integer := 0;
     c_output_width: integer := 17;
     c_has_c_in : integer := 0;
     c_has_c_out : integer := 0
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     c_in : in std_logic_vector (0 downto 0) := "0";
     ce: in std_logic;
     clr: in std_logic := '0';
     clk: in std_logic;
     rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
     en: in std_logic_vector(en_width - 1 downto 0) := "1";
     c_out : out std_logic_vector (0 downto 0);
     s: out std_logic_vector(s_width - 1 downto 0)
   );
 end fwheun_xladdsub;
 
 architecture behavior of fwheun_xladdsub is 
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 
 function format_input(inp: std_logic_vector; old_width, delta, new_arith,
 new_width: integer)
 return std_logic_vector
 is
 variable vec: std_logic_vector(old_width-1 downto 0);
 variable padded_inp: std_logic_vector((old_width + delta)-1 downto 0);
 variable result: std_logic_vector(new_width-1 downto 0);
 begin
 vec := inp;
 if (delta > 0) then
 padded_inp := pad_LSB(vec, old_width+delta);
 result := extend_MSB(padded_inp, new_width, new_arith);
 else
 result := extend_MSB(vec, new_width, new_arith);
 end if;
 return result;
 end;
 
 constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
 constant full_a_width: integer := full_s_width;
 constant full_b_width: integer := full_s_width;
 
 signal full_a: std_logic_vector(full_a_width - 1 downto 0);
 signal full_b: std_logic_vector(full_b_width - 1 downto 0);
 signal core_s: std_logic_vector(full_s_width - 1 downto 0);
 signal conv_s: std_logic_vector(s_width - 1 downto 0);
 signal temp_cout : std_logic;
 signal internal_clr: std_logic;
 signal internal_ce: std_logic;
 signal extra_reg_ce: std_logic;
 signal override: std_logic;
 signal logic1: std_logic_vector(0 downto 0);


 component fwheun_c_addsub_v12_0_i0
    port ( 
    a: in std_logic_vector(33 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(33 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i1
    port ( 
    a: in std_logic_vector(65 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(65 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i2
    port ( 
    a: in std_logic_vector(65 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(65 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i3
    port ( 
    a: in std_logic_vector(33 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(33 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i4
    port ( 
    a: in std_logic_vector(66 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(66 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i5
    port ( 
    a: in std_logic_vector(99 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(99 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i6
    port ( 
    a: in std_logic_vector(34 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(34 - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_c_addsub_v12_0_i7
    port ( 
    a: in std_logic_vector(67 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(67 - 1 downto 0) 
 		  ); 
 end component;

begin
 internal_clr <= (clr or (rst(0))) and ce;
 internal_ce <= ce and en(0);
 logic1(0) <= '1';
 addsub_process: process (a, b, core_s)
 begin
 full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
 full_a_width);
 full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
 full_b_width);
 conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
 s_width, s_bin_pt, s_arith, quantization, overflow);
 end process addsub_process;


 comp0: if ((core_name0 = "fwheun_c_addsub_v12_0_i0")) generate 
  core_instance0:fwheun_c_addsub_v12_0_i0
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp1: if ((core_name0 = "fwheun_c_addsub_v12_0_i1")) generate 
  core_instance1:fwheun_c_addsub_v12_0_i1
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp2: if ((core_name0 = "fwheun_c_addsub_v12_0_i2")) generate 
  core_instance2:fwheun_c_addsub_v12_0_i2
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp3: if ((core_name0 = "fwheun_c_addsub_v12_0_i3")) generate 
  core_instance3:fwheun_c_addsub_v12_0_i3
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp4: if ((core_name0 = "fwheun_c_addsub_v12_0_i4")) generate 
  core_instance4:fwheun_c_addsub_v12_0_i4
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp5: if ((core_name0 = "fwheun_c_addsub_v12_0_i5")) generate 
  core_instance5:fwheun_c_addsub_v12_0_i5
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp6: if ((core_name0 = "fwheun_c_addsub_v12_0_i6")) generate 
  core_instance6:fwheun_c_addsub_v12_0_i6
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

 comp7: if ((core_name0 = "fwheun_c_addsub_v12_0_i7")) generate 
  core_instance7:fwheun_c_addsub_v12_0_i7
   port map ( 
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
  ); 
   end generate;

latency_test: if (extra_registers > 0) generate
 override_test: if (c_latency > 1) generate
 override_pipe: synth_reg
 generic map (
 width => 1,
 latency => c_latency
 )
 port map (
 i => logic1,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o(0) => override);
 extra_reg_ce <= ce and en(0) and override;
 end generate override_test;
 no_override: if ((c_latency = 0) or (c_latency = 1)) generate
 extra_reg_ce <= ce and en(0);
 end generate no_override;
 extra_reg: synth_reg
 generic map (
 width => s_width,
 latency => extra_registers
 )
 port map (
 i => conv_s,
 ce => extra_reg_ce,
 clr => internal_clr,
 clk => clk,
 o => s
 );
 cout_test: if (c_has_c_out = 1) generate
 c_out_extra_reg: synth_reg
 generic map (
 width => 1,
 latency => extra_registers
 )
 port map (
 i(0) => temp_cout,
 ce => extra_reg_ce,
 clr => internal_clr,
 clk => clk,
 o => c_out
 );
 end generate cout_test;
 end generate;
 
 latency_s: if ((latency = 0) or (extra_registers = 0)) generate
 s <= conv_s;
 end generate latency_s;
 latency0: if (((latency = 0) or (extra_registers = 0)) and
 (c_has_c_out = 1)) generate
 c_out(0) <= temp_cout;
 end generate latency0;
 tie_dangling_cout: if (c_has_c_out = 0) generate
 c_out <= "0";
 end generate tie_dangling_cout;
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity fwheun_xlcmult is 
   generic (
     core_name0: string := "";
     a_width: integer := 4;
     a_bin_pt: integer := 2;
     a_arith: integer := xlSigned;
     b_width: integer := 4;
     b_bin_pt: integer := 2;
     b_arith: integer := xlSigned;
     p_width: integer := 8;
     p_bin_pt: integer := 2;
     p_arith: integer := xlSigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     multsign: integer := xlSigned;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     extra_registers: integer := 0;
     c_a_width: integer := 7;
     c_b_width: integer := 7;
     c_a_type: integer := 0;
     c_b_type: integer := 0;
     c_type: integer := 0;
     const_bin_pt: integer := 1;
     zero_const : integer := 0;
     c_output_width: integer := 16
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     core_ce: in std_logic:= '0';
     core_clr: in std_logic:= '0';
     core_clk: in std_logic:= '0';
     rst: in std_logic_vector(rst_width - 1 downto 0);
     en: in std_logic_vector(en_width - 1 downto 0);
     p: out std_logic_vector(p_width - 1 downto 0)
   );
 end fwheun_xlcmult;
 
 architecture behavior of fwheun_xlcmult is
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;
 signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
 signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
 signal conv_p: std_logic_vector(p_width - 1 downto 0);
 -- synthesis translate_off
 signal real_a, real_p: real;
 -- synthesis translate_on
 signal nd: std_logic;
 signal internal_ce: std_logic;
 signal internal_clr: std_logic;
 signal internal_core_ce: std_logic;


 component fwheun_mult_gen_v12_0_i0
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_mult_gen_v12_0_i1
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_mult_gen_v12_0_i2
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_mult_gen_v12_0_i3
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_mult_gen_v12_0_i4
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

 component fwheun_mult_gen_v12_0_i6
    port ( 
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

begin
 -- synthesis translate_off
 -- synthesis translate_on
 input_process: process(a)
 variable tmp_p_bin_pt, tmp_p_arith: integer;
 begin
 tmp_a <= zero_ext(a, c_a_width);
 end process;
 output_process: process(tmp_p)
 begin
 conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
 p_width, p_bin_pt, p_arith, quantization, overflow);
 end process;
 internal_ce <= ce and en(0);
 internal_core_ce <= core_ce and en(0);
 internal_clr <= (clr or rst(0)) and ce;
 nd <= internal_ce;


 comp0: if ((core_name0 = "fwheun_mult_gen_v12_0_i0")) generate 
  core_instance0:fwheun_mult_gen_v12_0_i0
   port map ( 
      sclr => internal_clr,
      clk => clk,
      ce => internal_ce,
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp1: if ((core_name0 = "fwheun_mult_gen_v12_0_i1")) generate 
  core_instance1:fwheun_mult_gen_v12_0_i1
   port map ( 
      sclr => internal_clr,
      clk => clk,
      ce => internal_ce,
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp2: if ((core_name0 = "fwheun_mult_gen_v12_0_i2")) generate 
  core_instance2:fwheun_mult_gen_v12_0_i2
   port map ( 
      sclr => internal_clr,
      clk => clk,
      ce => internal_ce,
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp3: if ((core_name0 = "fwheun_mult_gen_v12_0_i3")) generate 
  core_instance3:fwheun_mult_gen_v12_0_i3
   port map ( 
      sclr => internal_clr,
      clk => clk,
      ce => internal_ce,
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp4: if ((core_name0 = "fwheun_mult_gen_v12_0_i4")) generate 
  core_instance4:fwheun_mult_gen_v12_0_i4
   port map ( 
      sclr => internal_clr,
      clk => clk,
      ce => internal_ce,
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

 comp5: if ((core_name0 = "fwheun_mult_gen_v12_0_i6")) generate 
  core_instance5:fwheun_mult_gen_v12_0_i6
   port map ( 
      sclr => internal_clr,
      clk => clk,
      ce => internal_ce,
      p => tmp_p,
      a => tmp_a
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) and (zero_const = 0)
 generate
 reg: synth_reg
 generic map (
 width => p_width,
 latency => extra_registers
 )
 port map (
 i => conv_p,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => p
 );
 end generate;
 latency0: if ( (extra_registers = 0) and (zero_const = 0) )
 generate
 p <= conv_p;
 end generate latency0;
 zero_constant: if (zero_const = 1)
 generate
 p <= integer_to_std_logic_vector(0,p_width,p_arith);
 end generate zero_constant;
 end architecture behavior;

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

-------------------------------------------------------------------
 -- System Generator VHDL source file.
 --
 -- Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
 -- text/file contains proprietary, confidential information of Xilinx,
 -- Inc., is distributed under license from Xilinx, Inc., and may be used,
 -- copied and/or disclosed only pursuant to the terms of a valid license
 -- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 -- this text/file solely for design, simulation, implementation and
 -- creation of design files limited to Xilinx devices or technologies.
 -- Use with non-Xilinx devices or technologies is expressly prohibited
 -- and immediately terminates your license unless covered by a separate
 -- agreement.
 --
 -- Xilinx is providing this design, code, or information "as is" solely
 -- for use in developing programs and solutions for Xilinx devices.  By
 -- providing this design, code, or information as one possible
 -- implementation of this feature, application or standard, Xilinx is
 -- making no representation that this implementation is free from any
 -- claims of infringement.  You are responsible for obtaining any rights
 -- you may require for your implementation.  Xilinx expressly disclaims
 -- any warranty whatsoever with respect to the adequacy of the
 -- implementation, including but not limited to warranties of
 -- merchantability or fitness for a particular purpose.
 --
 -- Xilinx products are not intended for use in life support appliances,
 -- devices, or systems.  Use in such applications is expressly prohibited.
 --
 -- Any modifications that are made to the source code are done at the user's
 -- sole risk and will be unsupported.
 --
 -- This copyright and support notice must be retained as part of this
 -- text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
 -- reserved.
 -------------------------------------------------------------------
 library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_arith.all;

entity fwheun_xlmult is 
   generic (
     core_name0: string := "";
     a_width: integer := 4;
     a_bin_pt: integer := 2;
     a_arith: integer := xlSigned;
     b_width: integer := 4;
     b_bin_pt: integer := 1;
     b_arith: integer := xlSigned;
     p_width: integer := 8;
     p_bin_pt: integer := 2;
     p_arith: integer := xlSigned;
     rst_width: integer := 1;
     rst_bin_pt: integer := 0;
     rst_arith: integer := xlUnsigned;
     en_width: integer := 1;
     en_bin_pt: integer := 0;
     en_arith: integer := xlUnsigned;
     quantization: integer := xlTruncate;
     overflow: integer := xlWrap;
     extra_registers: integer := 0;
     c_a_width: integer := 7;
     c_b_width: integer := 7;
     c_type: integer := 0;
     c_a_type: integer := 0;
     c_b_type: integer := 0;
     c_pipelined: integer := 1;
     c_baat: integer := 4;
     multsign: integer := xlSigned;
     c_output_width: integer := 16
   );
   port (
     a: in std_logic_vector(a_width - 1 downto 0);
     b: in std_logic_vector(b_width - 1 downto 0);
     ce: in std_logic;
     clr: in std_logic;
     clk: in std_logic;
     core_ce: in std_logic := '0';
     core_clr: in std_logic := '0';
     core_clk: in std_logic := '0';
     rst: in std_logic_vector(rst_width - 1 downto 0);
     en: in std_logic_vector(en_width - 1 downto 0);
     p: out std_logic_vector(p_width - 1 downto 0)
   );
 end  fwheun_xlmult;
 
 architecture behavior of fwheun_xlmult is
 component synth_reg
 generic (
 width: integer := 16;
 latency: integer := 5
 );
 port (
 i: in std_logic_vector(width - 1 downto 0);
 ce: in std_logic;
 clr: in std_logic;
 clk: in std_logic;
 o: out std_logic_vector(width - 1 downto 0)
 );
 end component;


 component fwheun_mult_gen_v12_0_i5
    port ( 
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0) 
 		  ); 
 end component;

signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
 signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
 signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
 signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
 signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
 signal conv_p: std_logic_vector(p_width - 1 downto 0);
 -- synthesis translate_off
 signal real_a, real_b, real_p: real;
 -- synthesis translate_on
 signal rfd: std_logic;
 signal rdy: std_logic;
 signal nd: std_logic;
 signal internal_ce: std_logic;
 signal internal_clr: std_logic;
 signal internal_core_ce: std_logic;
 begin
 -- synthesis translate_off
 -- synthesis translate_on
 internal_ce <= ce and en(0);
 internal_core_ce <= core_ce and en(0);
 internal_clr <= (clr or rst(0)) and ce;
 nd <= internal_ce;
 input_process: process (a,b)
 begin
 tmp_a <= zero_ext(a, c_a_width);
 tmp_b <= zero_ext(b, c_b_width);
 end process;
 output_process: process (tmp_p)
 begin
 conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
 p_width, p_bin_pt, p_arith, quantization, overflow);
 end process;


 comp0: if ((core_name0 = "fwheun_mult_gen_v12_0_i5")) generate 
  core_instance0:fwheun_mult_gen_v12_0_i5
   port map ( 
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
  ); 
   end generate;

latency_gt_0: if (extra_registers > 0) generate
 reg: synth_reg
 generic map (
 width => p_width,
 latency => extra_registers
 )
 port map (
 i => conv_p,
 ce => internal_ce,
 clr => internal_clr,
 clk => clk,
 o => p
 );
 end generate;
 latency_eq_0: if (extra_registers = 0) generate
 p <= conv_p;
 end generate;
 end architecture behavior;

