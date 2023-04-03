// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 26 14:23:01 2022
// Host        : DESKTOP-CDFLI62 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/jimar/Desktop/vivado
//               test/led/led.sim/sim_1/synth/timing/xsim/LEDdecoder_testbench_time_synth.v}
// Design      : FourDigitLeDriver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* a = "7'b1110111" *) (* a_in = "4'b1010" *) (* b = "7'b0011111" *) 
(* b_in = "4'b1011" *) (* c = "7'b1001110" *) (* c_in = "4'b1100" *) 
(* d = "7'b0111101" *) (* d_in = "4'b1101" *) (* e = "7'b1001111" *) 
(* e_in = "4'b1110" *) (* eight = "7'b1111111" *) (* eight_in = "4'b1000" *) 
(* f = "7'b1000111" *) (* f_in = "4'b1111" *) (* five = "7'b1011011" *) 
(* five_in = "4'b0101" *) (* four = "7'b0110011" *) (* four_in = "4'b0100" *) 
(* nine = "7'b1111011" *) (* nine_in = "4'b1001" *) (* one = "7'b0110000" *) 
(* one_in = "4'b0001" *) (* seven = "7'b1110000" *) (* seven_in = "4'b0111" *) 
(* six = "7'b1011111" *) (* six_in = "4'b0110" *) (* three = "7'b1111001" *) 
(* three_in = "4'b0011" *) (* two = "7'b1101101" *) (* two_in = "4'b0010" *) 
(* zero = "7'b1111110" *) (* zero_in = "4'b0000" *) 
(* NotValidForBitStream *)
module FourDigitLeDriver
   (reset,
    clk,
    char,
    an3,
    an2,
    an1,
    an0,
    A,
    B,
    C,
    D,
    E,
    F,
    G,
    dp,
    clkout,
    count);
  input reset;
  input clk;
  output [3:0]char;
  output an3;
  output an2;
  output an1;
  output an0;
  output A;
  output B;
  output C;
  output D;
  output E;
  output F;
  output G;
  output dp;
  output clkout;
  output [3:0]count;

  wire A;
  wire B;
  wire C;
  wire D;
  wire E;
  wire F;
  wire G;
  wire an0;
  wire an1;
  wire an2;
  wire an3;
  wire [3:0]char;
  wire clk;
  wire clk_IBUF;
  wire clkfbout;
  wire clkout;
  wire clkout_OBUF;
  wire [3:0]count;
  wire [3:0]count_OBUF;
  wire \count_reg[0]_C_n_0 ;
  wire \count_reg[0]_LDC_i_1_n_0 ;
  wire \count_reg[0]_LDC_i_2_n_0 ;
  wire \count_reg[0]_LDC_n_0 ;
  wire \count_reg[1]_C_n_0 ;
  wire \count_reg[1]_LDC_i_1_n_0 ;
  wire \count_reg[1]_LDC_i_2_n_0 ;
  wire \count_reg[1]_LDC_n_0 ;
  wire \count_reg[2]_C_n_0 ;
  wire \count_reg[2]_LDC_i_1_n_0 ;
  wire \count_reg[2]_LDC_i_2_n_0 ;
  wire \count_reg[2]_LDC_n_0 ;
  wire \count_reg[3]_C_n_0 ;
  wire \count_reg[3]_LDC_i_1_n_0 ;
  wire \count_reg[3]_LDC_i_2_n_0 ;
  wire \count_reg[3]_LDC_i_3_n_0 ;
  wire \count_reg[3]_LDC_n_0 ;
  wire dp;
  wire reset;
  wire reset_IBUF;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

initial begin
 $sdf_annotate("LEDdecoder_testbench_time_synth.sdf",,,,"tool_control");
end
  OBUF A_OBUF_inst
       (.I(1'b1),
        .O(A));
  OBUF B_OBUF_inst
       (.I(1'b1),
        .O(B));
  OBUF C_OBUF_inst
       (.I(1'b1),
        .O(C));
  OBUF D_OBUF_inst
       (.I(1'b1),
        .O(D));
  OBUF E_OBUF_inst
       (.I(1'b1),
        .O(E));
  OBUF F_OBUF_inst
       (.I(1'b1),
        .O(F));
  OBUF G_OBUF_inst
       (.I(1'b0),
        .O(G));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(32.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(128.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(5),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_IBUF),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout_OBUF),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_IBUF));
  OBUFT an0_OBUF_inst
       (.I(1'b0),
        .O(an0),
        .T(1'b1));
  OBUFT an1_OBUF_inst
       (.I(1'b0),
        .O(an1),
        .T(1'b1));
  OBUFT an2_OBUF_inst
       (.I(1'b0),
        .O(an2),
        .T(1'b1));
  OBUFT an3_OBUF_inst
       (.I(1'b0),
        .O(an3),
        .T(1'b1));
  OBUFT \char_OBUF[0]_inst 
       (.I(1'b0),
        .O(char[0]),
        .T(1'b1));
  OBUFT \char_OBUF[1]_inst 
       (.I(1'b0),
        .O(char[1]),
        .T(1'b1));
  OBUFT \char_OBUF[2]_inst 
       (.I(1'b0),
        .O(char[2]),
        .T(1'b1));
  OBUFT \char_OBUF[3]_inst 
       (.I(1'b0),
        .O(char[3]),
        .T(1'b1));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF clkout_OBUF_inst
       (.I(clkout_OBUF),
        .O(clkout));
  OBUF \count_OBUF[0]_inst 
       (.I(count_OBUF[0]),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_OBUF[0]_inst_i_1 
       (.I0(\count_reg[0]_LDC_n_0 ),
        .I1(\count_reg[0]_C_n_0 ),
        .O(count_OBUF[0]));
  OBUF \count_OBUF[1]_inst 
       (.I(count_OBUF[1]),
        .O(count[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \count_OBUF[1]_inst_i_1 
       (.I0(\count_reg[1]_LDC_n_0 ),
        .I1(\count_reg[1]_C_n_0 ),
        .O(count_OBUF[1]));
  OBUF \count_OBUF[2]_inst 
       (.I(count_OBUF[2]),
        .O(count[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \count_OBUF[2]_inst_i_1 
       (.I0(\count_reg[2]_LDC_n_0 ),
        .I1(\count_reg[2]_C_n_0 ),
        .O(count_OBUF[2]));
  OBUF \count_OBUF[3]_inst 
       (.I(count_OBUF[3]),
        .O(count[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \count_OBUF[3]_inst_i_1 
       (.I0(\count_reg[3]_LDC_n_0 ),
        .I1(\count_reg[3]_C_n_0 ),
        .O(count_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0]_C 
       (.C(clkout_OBUF),
        .CE(1'b1),
        .CLR(\count_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .Q(\count_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0]_LDC 
       (.CLR(\count_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[0]_LDC_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count_reg[0]_LDC_i_1 
       (.I0(\count_reg[0]_C_n_0 ),
        .I1(\count_reg[0]_LDC_n_0 ),
        .I2(reset_IBUF),
        .O(\count_reg[0]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \count_reg[0]_LDC_i_2 
       (.I0(\count_reg[0]_C_n_0 ),
        .I1(\count_reg[0]_LDC_n_0 ),
        .I2(reset_IBUF),
        .O(\count_reg[0]_LDC_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1]_C 
       (.C(clkout_OBUF),
        .CE(1'b1),
        .CLR(\count_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .Q(\count_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1]_LDC 
       (.CLR(\count_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[1]_LDC_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000EEE1)) 
    \count_reg[1]_LDC_i_1 
       (.I0(\count_reg[1]_LDC_n_0 ),
        .I1(\count_reg[1]_C_n_0 ),
        .I2(\count_reg[0]_LDC_n_0 ),
        .I3(\count_reg[0]_C_n_0 ),
        .I4(reset_IBUF),
        .O(\count_reg[1]_LDC_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000111E)) 
    \count_reg[1]_LDC_i_2 
       (.I0(\count_reg[1]_LDC_n_0 ),
        .I1(\count_reg[1]_C_n_0 ),
        .I2(\count_reg[0]_LDC_n_0 ),
        .I3(\count_reg[0]_C_n_0 ),
        .I4(reset_IBUF),
        .O(\count_reg[1]_LDC_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2]_C 
       (.C(clkout_OBUF),
        .CE(1'b1),
        .CLR(\count_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .Q(\count_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2]_LDC 
       (.CLR(\count_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[2]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE1)) 
    \count_reg[2]_LDC_i_1 
       (.I0(\count_reg[2]_LDC_n_0 ),
        .I1(\count_reg[2]_C_n_0 ),
        .I2(count_OBUF[0]),
        .I3(\count_reg[1]_C_n_0 ),
        .I4(\count_reg[1]_LDC_n_0 ),
        .I5(reset_IBUF),
        .O(\count_reg[2]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001111111E)) 
    \count_reg[2]_LDC_i_2 
       (.I0(\count_reg[2]_LDC_n_0 ),
        .I1(\count_reg[2]_C_n_0 ),
        .I2(count_OBUF[0]),
        .I3(\count_reg[1]_C_n_0 ),
        .I4(\count_reg[1]_LDC_n_0 ),
        .I5(reset_IBUF),
        .O(\count_reg[2]_LDC_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3]_C 
       (.C(clkout_OBUF),
        .CE(1'b1),
        .CLR(\count_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .Q(\count_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3]_LDC 
       (.CLR(\count_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\count_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\count_reg[3]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE1)) 
    \count_reg[3]_LDC_i_1 
       (.I0(\count_reg[3]_LDC_n_0 ),
        .I1(\count_reg[3]_C_n_0 ),
        .I2(\count_reg[3]_LDC_i_3_n_0 ),
        .I3(\count_reg[2]_C_n_0 ),
        .I4(\count_reg[2]_LDC_n_0 ),
        .I5(reset_IBUF),
        .O(\count_reg[3]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000001111111E)) 
    \count_reg[3]_LDC_i_2 
       (.I0(\count_reg[3]_LDC_n_0 ),
        .I1(\count_reg[3]_C_n_0 ),
        .I2(\count_reg[3]_LDC_i_3_n_0 ),
        .I3(\count_reg[2]_C_n_0 ),
        .I4(\count_reg[2]_LDC_n_0 ),
        .I5(reset_IBUF),
        .O(\count_reg[3]_LDC_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_reg[3]_LDC_i_3 
       (.I0(\count_reg[0]_C_n_0 ),
        .I1(\count_reg[0]_LDC_n_0 ),
        .I2(\count_reg[1]_C_n_0 ),
        .I3(\count_reg[1]_LDC_n_0 ),
        .O(\count_reg[3]_LDC_i_3_n_0 ));
  OBUFT dp_OBUF_inst
       (.I(1'b0),
        .O(dp),
        .T(1'b1));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
