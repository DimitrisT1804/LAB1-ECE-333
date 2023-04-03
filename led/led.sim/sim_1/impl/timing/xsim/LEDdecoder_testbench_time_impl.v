// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Oct 22 02:39:22 2022
// Host        : DESKTOP-CDFLI62 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/jimar/Desktop/vivado
//               test/led/led.sim/sim_1/impl/timing/xsim/LEDdecoder_testbench_time_impl.v}
// Design      : LEDdecoder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c0dafa3f" *) (* a = "7'b1110111" *) (* a_in = "4'b1010" *) 
(* b = "7'b0011111" *) (* b_in = "4'b1011" *) (* c = "7'b1001110" *) 
(* c_in = "4'b1100" *) (* d = "7'b0111101" *) (* d_in = "4'b1101" *) 
(* e = "7'b1001111" *) (* e_in = "4'b1110" *) (* eight = "7'b1111111" *) 
(* eight_in = "4'b1000" *) (* f = "7'b1000111" *) (* f_in = "4'b1111" *) 
(* five = "7'b1011011" *) (* five_in = "4'b0101" *) (* four = "7'b0110011" *) 
(* four_in = "4'b0100" *) (* nine = "7'b1111011" *) (* nine_in = "4'b1001" *) 
(* one = "7'b0110000" *) (* one_in = "4'b0001" *) (* seven = "7'b1110000" *) 
(* seven_in = "4'b0111" *) (* six = "7'b1011111" *) (* six_in = "4'b0110" *) 
(* three = "7'b1111001" *) (* three_in = "4'b0011" *) (* two = "7'b1101101" *) 
(* two_in = "4'b0010" *) (* zero = "7'b1111110" *) (* zero_in = "4'b0000" *) 
(* NotValidForBitStream *)
module LEDdecoder
   (char,
    LED);
  input [3:0]char;
  output [6:0]LED;

  wire [6:0]LED;
  wire [6:0]LED_OBUF;
  wire [3:0]char;
  wire [3:0]char_IBUF;

initial begin
 $sdf_annotate("LEDdecoder_testbench_time_impl.sdf",,,,"tool_control");
end
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFDA)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[0]),
        .I2(char_IBUF[2]),
        .I3(char_IBUF[1]),
        .O(LED_OBUF[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[2]),
        .I2(char_IBUF[0]),
        .I3(char_IBUF[1]),
        .O(LED_OBUF[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[1]),
        .I2(char_IBUF[2]),
        .I3(char_IBUF[0]),
        .O(LED_OBUF[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \LED_OBUF[3]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[2]),
        .I2(char_IBUF[1]),
        .I3(char_IBUF[0]),
        .O(LED_OBUF[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \LED_OBUF[4]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[2]),
        .I2(char_IBUF[1]),
        .I3(char_IBUF[0]),
        .O(LED_OBUF[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h497F)) 
    \LED_OBUF[5]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[0]),
        .I2(char_IBUF[1]),
        .I3(char_IBUF[2]),
        .O(LED_OBUF[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  LUT4 #(
    .INIT(16'hD6FB)) 
    \LED_OBUF[6]_inst_i_1 
       (.I0(char_IBUF[3]),
        .I1(char_IBUF[2]),
        .I2(char_IBUF[1]),
        .I3(char_IBUF[0]),
        .O(LED_OBUF[6]));
  IBUF \char_IBUF[0]_inst 
       (.I(char[0]),
        .O(char_IBUF[0]));
  IBUF \char_IBUF[1]_inst 
       (.I(char[1]),
        .O(char_IBUF[1]));
  IBUF \char_IBUF[2]_inst 
       (.I(char[2]),
        .O(char_IBUF[2]));
  IBUF \char_IBUF[3]_inst 
       (.I(char[3]),
        .O(char_IBUF[3]));
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
