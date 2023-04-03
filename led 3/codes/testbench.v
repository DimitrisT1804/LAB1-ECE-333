`timescale 1ns/1ns
module testbench;
    wire [6:0] LED;

    reg clk, reset;
    wire an3, an2, an1, an0, A, B, C, D, E, F, G, dp;
    reg button;

    FourDigitLeDriver FourDigitLeDriver_inst(reset, clk, button, an3, an2, an1, an0, A, B, C, D, E, F, G, dp);

    initial 
        begin
            clk = 0;
            reset = 0;
            button = 0;
            #10 reset = 1;      //reset gia arxikopoisi
            #100 reset = 0;

            #2500 button = 1;   //proto button
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;   
            #1000 button = 0;

            #2500 button = 1;       //18o button
            #1000 button = 0;            

            #4000 reset = 1;        // reset
            #1000 reset = 0;        // sinolika 64000ns testbench gia olo
        end 

    always #5 clk =~clk;        //  fpga clock

    // always @(LED or button) 
    // begin
    //     $monitor("Button is %d and led is %b\n", button, LED);
    // end
    assign LED = {A, B, C, D, E, F, G};     // gia na exo mia metavliti led kai gia ta 7 simata

endmodule