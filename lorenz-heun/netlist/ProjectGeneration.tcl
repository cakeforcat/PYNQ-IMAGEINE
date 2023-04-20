# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {on}
	set DSPDevice {xc7z020}
	set DSPFamily {zynq}
	set DSPPackage {clg400}
	set DSPSpeed {-1}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/pwb20148/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {312914983}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {lorenz_hardware}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{lorenz_hardware_axi_lite_interface_verilog.v}}
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{lorenz_hardware.mdd}}
		{{lorenz_hardware_hw.h}}
		{{lorenz_hardware.h}}
		{{lorenz_hardware_sinit.c}}
		{{lorenz_hardware.c}}
		{{lorenz_hardware_linux.c}}
		{{lorenz_hardware.mtcl}}
		{{Makefile.mak}}
		{{index.html}}
		{{lorenz_hardware_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{lorenz_hardware.vhd} -lib {xil_defaultlib}}
		{{lorenz_hardware_clock.xdc}}
		{{lorenz_hardware.xdc}}
		{{lorenz_hardware.htm}}
	}
	set SimPeriod 1e-08
	set SimTime 6.8e-07
	set SimulationTime {890.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {H:/MyDocuments/Year3/pynq-math-visualisations/lorenz-heun/netlist}
	set TopLevelModule {lorenz_hardware}
	set TopLevelSimulinkHandle 0.000488281
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface lorenz_hardware_aresetn Name {lorenz_hardware_aresetn}
	dict set TopLevelPortInterface lorenz_hardware_aresetn Type -
	dict set TopLevelPortInterface lorenz_hardware_aresetn ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_aresetn BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_aresetn Width 1
	dict set TopLevelPortInterface lorenz_hardware_aresetn DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_aresetn IconText {lorenz_hardware_aresetn}
	dict set TopLevelPortInterface lorenz_hardware_aresetn Direction in
	dict set TopLevelPortInterface lorenz_hardware_aresetn Period 1
	dict set TopLevelPortInterface lorenz_hardware_aresetn Interface 8
	dict set TopLevelPortInterface lorenz_hardware_aresetn InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_aresetn InterfaceString {ARESETN}
	dict set TopLevelPortInterface lorenz_hardware_aresetn ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_aresetn Locs {}
	dict set TopLevelPortInterface lorenz_hardware_aresetn IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Name {lorenz_hardware_s_axi_awaddr}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Width 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr IconText {lorenz_hardware_s_axi_awaddr}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awaddr IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Name {lorenz_hardware_s_axi_awvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid IconText {lorenz_hardware_s_axi_awvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awvalid IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Name {lorenz_hardware_s_axi_awready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready IconText {lorenz_hardware_s_axi_awready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_awready IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Name {lorenz_hardware_s_axi_wdata}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Width 32
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata IconText {lorenz_hardware_s_axi_wdata}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wdata IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Name {lorenz_hardware_s_axi_wstrb}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Width 4
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb IconText {lorenz_hardware_s_axi_wstrb}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wstrb IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Name {lorenz_hardware_s_axi_wvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid IconText {lorenz_hardware_s_axi_wvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wvalid IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Name {lorenz_hardware_s_axi_wready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready IconText {lorenz_hardware_s_axi_wready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_wready IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Name {lorenz_hardware_s_axi_bresp}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Width 2
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp IconText {lorenz_hardware_s_axi_bresp}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bresp IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Name {lorenz_hardware_s_axi_bvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid IconText {lorenz_hardware_s_axi_bvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bvalid IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Name {lorenz_hardware_s_axi_bready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready IconText {lorenz_hardware_s_axi_bready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_bready IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Name {lorenz_hardware_s_axi_araddr}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Width 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr IconText {lorenz_hardware_s_axi_araddr}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_araddr IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Name {lorenz_hardware_s_axi_arvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid IconText {lorenz_hardware_s_axi_arvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arvalid IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Name {lorenz_hardware_s_axi_arready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready IconText {lorenz_hardware_s_axi_arready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_arready IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Name {lorenz_hardware_s_axi_rdata}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Width 32
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata IconText {lorenz_hardware_s_axi_rdata}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rdata IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Name {lorenz_hardware_s_axi_rresp}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Width 2
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp IconText {lorenz_hardware_s_axi_rresp}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rresp IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Name {lorenz_hardware_s_axi_rvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid IconText {lorenz_hardware_s_axi_rvalid}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Direction out
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rvalid IOStandard {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Name {lorenz_hardware_s_axi_rready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Type -
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready BinaryPoint 0
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Width 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready DatFile {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready IconText {lorenz_hardware_s_axi_rready}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Direction in
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Period 1
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Interface 5
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready InterfaceName {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready ClockDomain {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready Locs {}
	dict set TopLevelPortInterface lorenz_hardware_s_axi_rready IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {lorenz_hardware}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {lorenz_hardware_s_axi }
	dict set TopLevelPortInterface clk AssociatedResets {lorenz_hardware_aresetn }
	set MemoryMappedPort {}
	dict set MemoryMappedPort z Name {z}
	dict set MemoryMappedPort z Type Fix_32_24
	dict set MemoryMappedPort z ArithmeticType xlSigned
	dict set MemoryMappedPort z BinaryPoint 24
	dict set MemoryMappedPort z Width 32
	dict set MemoryMappedPort z DatFile {lorenz_hardware_subsystem_z.dat}
	dict set MemoryMappedPort z AddressOffset 0
	dict set MemoryMappedPort z IconText {z}
	dict set MemoryMappedPort z Direction in
	dict set MemoryMappedPort z Period 1
	dict set MemoryMappedPort z Interface 2
	dict set MemoryMappedPort z InterfaceName {}
	dict set MemoryMappedPort z InterfaceString {CONTROL}
	dict set MemoryMappedPort z ClockDomain {lorenz_hardware}
	dict set MemoryMappedPort z Locs {}
	dict set MemoryMappedPort z IOStandard {}
	dict set MemoryMappedPort y Name {y}
	dict set MemoryMappedPort y Type Fix_32_24
	dict set MemoryMappedPort y ArithmeticType xlSigned
	dict set MemoryMappedPort y BinaryPoint 24
	dict set MemoryMappedPort y Width 32
	dict set MemoryMappedPort y DatFile {lorenz_hardware_subsystem_y.dat}
	dict set MemoryMappedPort y AddressOffset 4
	dict set MemoryMappedPort y IconText {y}
	dict set MemoryMappedPort y Direction in
	dict set MemoryMappedPort y Period 1
	dict set MemoryMappedPort y Interface 2
	dict set MemoryMappedPort y InterfaceName {}
	dict set MemoryMappedPort y InterfaceString {CONTROL}
	dict set MemoryMappedPort y ClockDomain {lorenz_hardware}
	dict set MemoryMappedPort y Locs {}
	dict set MemoryMappedPort y IOStandard {}
	dict set MemoryMappedPort x Name {x}
	dict set MemoryMappedPort x Type Fix_32_24
	dict set MemoryMappedPort x ArithmeticType xlSigned
	dict set MemoryMappedPort x BinaryPoint 24
	dict set MemoryMappedPort x Width 32
	dict set MemoryMappedPort x DatFile {lorenz_hardware_subsystem_x.dat}
	dict set MemoryMappedPort x AddressOffset 8
	dict set MemoryMappedPort x IconText {x}
	dict set MemoryMappedPort x Direction in
	dict set MemoryMappedPort x Period 1
	dict set MemoryMappedPort x Interface 2
	dict set MemoryMappedPort x InterfaceName {}
	dict set MemoryMappedPort x InterfaceString {CONTROL}
	dict set MemoryMappedPort x ClockDomain {lorenz_hardware}
	dict set MemoryMappedPort x Locs {}
	dict set MemoryMappedPort x IOStandard {}
	dict set MemoryMappedPort xnew Name {xnew}
	dict set MemoryMappedPort xnew Type Fix_32_24
	dict set MemoryMappedPort xnew ArithmeticType xlSigned
	dict set MemoryMappedPort xnew BinaryPoint 24
	dict set MemoryMappedPort xnew Width 32
	dict set MemoryMappedPort xnew DatFile {lorenz_hardware_subsystem_xnew.dat}
	dict set MemoryMappedPort xnew AddressOffset 12
	dict set MemoryMappedPort xnew IconText {Xnew}
	dict set MemoryMappedPort xnew Direction out
	dict set MemoryMappedPort xnew Period 1
	dict set MemoryMappedPort xnew Interface 2
	dict set MemoryMappedPort xnew InterfaceName {}
	dict set MemoryMappedPort xnew InterfaceString {CONTROL}
	dict set MemoryMappedPort xnew ClockDomain {lorenz_hardware}
	dict set MemoryMappedPort xnew Locs {}
	dict set MemoryMappedPort xnew IOStandard {}
	dict set MemoryMappedPort ynew Name {ynew}
	dict set MemoryMappedPort ynew Type Fix_32_24
	dict set MemoryMappedPort ynew ArithmeticType xlSigned
	dict set MemoryMappedPort ynew BinaryPoint 24
	dict set MemoryMappedPort ynew Width 32
	dict set MemoryMappedPort ynew DatFile {lorenz_hardware_subsystem_ynew.dat}
	dict set MemoryMappedPort ynew AddressOffset 16
	dict set MemoryMappedPort ynew IconText {Ynew}
	dict set MemoryMappedPort ynew Direction out
	dict set MemoryMappedPort ynew Period 1
	dict set MemoryMappedPort ynew Interface 2
	dict set MemoryMappedPort ynew InterfaceName {}
	dict set MemoryMappedPort ynew InterfaceString {CONTROL}
	dict set MemoryMappedPort ynew ClockDomain {lorenz_hardware}
	dict set MemoryMappedPort ynew Locs {}
	dict set MemoryMappedPort ynew IOStandard {}
	dict set MemoryMappedPort znew Name {znew}
	dict set MemoryMappedPort znew Type Fix_32_24
	dict set MemoryMappedPort znew ArithmeticType xlSigned
	dict set MemoryMappedPort znew BinaryPoint 24
	dict set MemoryMappedPort znew Width 32
	dict set MemoryMappedPort znew DatFile {lorenz_hardware_subsystem_znew.dat}
	dict set MemoryMappedPort znew AddressOffset 20
	dict set MemoryMappedPort znew IconText {Znew}
	dict set MemoryMappedPort znew Direction out
	dict set MemoryMappedPort znew Period 1
	dict set MemoryMappedPort znew Interface 2
	dict set MemoryMappedPort znew InterfaceName {}
	dict set MemoryMappedPort znew InterfaceString {CONTROL}
	dict set MemoryMappedPort znew ClockDomain {lorenz_hardware}
	dict set MemoryMappedPort znew Locs {}
	dict set MemoryMappedPort znew IOStandard {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project