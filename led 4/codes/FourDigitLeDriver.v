// part D
module FourDigitLeDriver (reset, clk, an3, an2, an1, an0, A, B, C, D, E, F, G, dp);

   `include "parameters.v"

   input clk, reset;
   output an3, an2, an1, an0;
   output A, B, C, D, E, F, G, dp;

   wire clkout;
   wire clkfbout;    // clk feedback
   wire [3:0] char;
   assign dp = 1'b1;   // statheri timi gia to dp monima svisto

   // MMCME2_BASE: Base Mixed Mode Clock Manager
   //              Artix-7
   // Xilinx HDL Language Template, version 2018.3

   MMCME2_BASE #(
      .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
      .CLKFBOUT_MULT_F(32.000),     // Multiply value for all CLKOUT (2.000-64.000).
      .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
      .CLKIN1_PERIOD(10.000),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
      //.CLKOUT1_DIVIDE(128),
      //.CLKOUT2_DIVIDE(1),
      //.CLKOUT3_DIVIDE(1),
      //.CLKOUT4_DIVIDE(1),
      //.CLKOUT5_DIVIDE(1),
      //.CLKOUT6_DIVIDE(1),
      .CLKOUT0_DIVIDE_F(128),    // Divide amount for CLKOUT0 (1.000-128.000).
      // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
      .CLKOUT0_DUTY_CYCLE(0.5),
      //.CLKOUT1_DUTY_CYCLE(0.5),
      //.CLKOUT2_DUTY_CYCLE(0.5),
      //.CLKOUT3_DUTY_CYCLE(0.5),
      //.CLKOUT4_DUTY_CYCLE(0.5),
      //.CLKOUT5_DUTY_CYCLE(0.5),
      //.CLKOUT6_DUTY_CYCLE(0.5),
      // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
      .CLKOUT0_PHASE(0.0),
      //.CLKOUT1_PHASE(0.0),
      //.CLKOUT2_PHASE(0.0),
      //.CLKOUT3_PHASE(0.0),
      //.CLKOUT4_PHASE(0.0),
      //.CLKOUT5_PHASE(0.0),
      //.CLKOUT6_PHASE(0.0),
      //.CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
      .DIVCLK_DIVIDE(5),         // Master division value (1-106)
      .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
      .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
   )
   MMCME2_BASE_inst (
      // Clock Outputs: 1-bit (each) output: User configurable clock outputs
      .CLKOUT0(clkout),     // 1-bit output: CLKOUT0
      // .CLKOUT0B(clkout0b_unused),   // 1-bit output: Inverted CLKOUT0
      // .CLKOUT1(clkout1_unused),     // 1-bit output: CLKOUT1
      // .CLKOUT1B(clkout1b_unused),   // 1-bit output: Inverted CLKOUT1
      // .CLKOUT2(clkout2_unused),     // 1-bit output: CLKOUT2
      // .CLKOUT2B(clkout2b_unused),   // 1-bit output: Inverted CLKOUT2
      // .CLKOUT3(clkout3_unused),     // 1-bit output: CLKOUT3
      // .CLKOUT3B(clkout3b_unused),   // 1-bit output: Inverted CLKOUT3
      // .CLKOUT4(clkout4_unused),     // 1-bit output: CLKOUT4
      // .CLKOUT5(clkout5_unused),     // 1-bit output: CLKOUT5
      // .CLKOUT6(clkout6_unused),     // 1-bit output: CLKOUT6
      // Feedback Clocks: 1-bit (each) output: Clock feedback ports
      .CLKFBOUT(clkfbout),   // 1-bit output: Feedback clock
      //.CLKFBOUTB(clkfboutb_unused), // 1-bit output: Inverted CLKFBOUT
      // Status Ports: 1-bit (each) output: MMCM status ports
      //.LOCKED(locked_int),       // 1-bit output: LOCK
      // Clock Inputs: 1-bit (each) input: Clock input
      .CLKIN1(clk),       // 1-bit input: Clock
      // Control Ports: 1-bit (each) input: MMCM control ports
      //.PWRDWN(1'b0),       // 1-bit input: Power-down
      .RST(reset),         // 1-bit input: Reset
      // Feedback Clocks: 1-bit (each) input: Clock feedback ports
      .CLKFBIN(clkfbout)      // 1-bit input: Feedback clock
   );

   LEDdecoder LEDdecoder_inst(.clk(clkout), .char(char), .LED({A, B, C, D, E, F, G}));

   counter counter_ins(.clk(clkout), .reset(reset), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .char(char));
					
endmodule			