// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 25 22:11:02 2022
// Host        : DESKTOP-CDFLI62 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/jimar/Desktop/vivado
//               test/led/led.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.v}
// Design      : clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_1(clk_out, reset, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out,reset,clk_in1" */;
  output clk_out;
  input reset;
  input clk_in1;
endmodule
