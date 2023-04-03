`timescale 1ns/1ns
module testbench;
    wire [6:0] LED;

    reg clk, reset;
    wire an3, an2, an1, an0, A, B, C, D, E, F, G, dp;

    FourDigitLeDriver FourDigitLeDriver_inst(reset, clk, an3, an2, an1, an0, A, B, C, D, E, F, G, dp);

    initial 
    begin
        clk = 0;            //arxikopoiisi fpga clk
        reset = 1;
        #100 reset = 0;     //reset gia arxikopoisi

        #4000 reset = 1;    // resete afoy exei ginei mia allagi
        #1000 reset = 0;

    end                     // gia timer 4bit xreiazetai 57000ns gia pliri peristrofi kai epanafora

    always #5 clk =~clk;    // fpga clock
    assign LED = {A, B, C, D, E, F, G};      // gia na exo mia metavliti led kai gia ta 7 simata

endmodule