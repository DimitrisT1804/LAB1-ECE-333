// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  1 22:59:22 2022
// Host        : DESKTOP-CDFLI62 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/jimar/Desktop/vivado test/led
//               2/led.sim/sim_1/synth/func/xsim/LEDdecoder_testbench_func_synth.v}
// Design      : FourDigitLeDriver
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
    dp);
  input reset;
  input clk;
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

  wire A;
  wire B;
  wire C;
  wire D;
  wire E;
  wire F;
  wire G;
  wire an0;
  wire an0_OBUF;
  wire an1;
  wire an1_OBUF;
  wire an2;
  wire an2_OBUF;
  wire an3;
  wire an3_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clkfbout;
  wire clkout;
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

  OBUF A_OBUF_inst
       (.I(1'b1),
        .O(A));
  OBUF B_OBUF_inst
       (.I(1'b1),
        .O(B));
  OBUF C_OBUF_inst
       (.I(1'b0),
        .O(C));
  OBUF D_OBUF_inst
       (.I(1'b1),
        .O(D));
  OBUF E_OBUF_inst
       (.I(1'b1),
        .O(E));
  OBUF F_OBUF_inst
       (.I(1'b0),
        .O(F));
  OBUF G_OBUF_inst
       (.I(1'b1),
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
        .CLKOUT0(clkout),
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
  OBUF an0_OBUF_inst
       (.I(an0_OBUF),
        .O(an0));
  OBUF an1_OBUF_inst
       (.I(an1_OBUF),
        .O(an1));
  OBUF an2_OBUF_inst
       (.I(an2_OBUF),
        .O(an2));
  OBUF an3_OBUF_inst
       (.I(an3_OBUF),
        .O(an3));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  counter counter_ins
       (.AS(reset_IBUF),
        .CLK(clkout),
        .an0_OBUF(an0_OBUF),
        .an1_OBUF(an1_OBUF),
        .an2_OBUF(an2_OBUF),
        .an3_OBUF(an3_OBUF));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module counter
   (an3_OBUF,
    an2_OBUF,
    an1_OBUF,
    an0_OBUF,
    CLK,
    AS);
  output an3_OBUF;
  output an2_OBUF;
  output an1_OBUF;
  output an0_OBUF;
  input CLK;
  input [0:0]AS;

  wire [0:0]AS;
  wire CLK;
  wire an0_OBUF;
  wire an1_OBUF;
  wire an2_OBUF;
  wire an3_OBUF;
  wire [3:0]count_result;
  wire \count_result[0]_i_1_n_0 ;
  wire \count_result[1]_i_1_n_0 ;
  wire \count_result[2]_i_1_n_0 ;
  wire \count_result[3]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    an0
       (.I0(count_result[0]),
        .I1(count_result[1]),
        .I2(count_result[2]),
        .I3(count_result[3]),
        .O(an0_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    an1
       (.I0(count_result[2]),
        .I1(count_result[1]),
        .I2(count_result[3]),
        .I3(count_result[0]),
        .O(an1_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    an2
       (.I0(count_result[3]),
        .I1(count_result[1]),
        .I2(count_result[2]),
        .I3(count_result[0]),
        .O(an2_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    an3
       (.I0(count_result[3]),
        .I1(count_result[1]),
        .I2(count_result[0]),
        .I3(count_result[2]),
        .O(an3_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_result[0]_i_1 
       (.I0(count_result[0]),
        .O(\count_result[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_result[1]_i_1 
       (.I0(count_result[1]),
        .I1(count_result[0]),
        .O(\count_result[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \count_result[2]_i_1 
       (.I0(count_result[2]),
        .I1(count_result[0]),
        .I2(count_result[1]),
        .O(\count_result[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \count_result[3]_i_1 
       (.I0(count_result[3]),
        .I1(count_result[1]),
        .I2(count_result[0]),
        .I3(count_result[2]),
        .O(\count_result[3]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \count_result_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_result[0]_i_1_n_0 ),
        .PRE(AS),
        .Q(count_result[0]));
  FDPE #(
    .INIT(1'b1)) 
    \count_result_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_result[1]_i_1_n_0 ),
        .PRE(AS),
        .Q(count_result[1]));
  FDPE #(
    .INIT(1'b1)) 
    \count_result_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_result[2]_i_1_n_0 ),
        .PRE(AS),
        .Q(count_result[2]));
  FDPE #(
    .INIT(1'b1)) 
    \count_result_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_result[3]_i_1_n_0 ),
        .PRE(AS),
        .Q(count_result[3]));
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
