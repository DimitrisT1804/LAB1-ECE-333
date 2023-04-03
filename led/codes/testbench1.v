//`timescale 1ns/1ns
module LEDdecoder_testbench;

    `include "parameters.v"
    //reg [3:0] char;
    wire [6:0] LED;

    reg clk, reset;
    wire an3, an2, an1, an0, A, B, C, D, E, F, G, dp;
    wire clkout;
    wire [3:0] count;
    wire [3:0] char;

    //LEDdecoder LEDdecoder_inst(.char(char), .LED(LED));

    FourDigitLeDriver FourDigitLeDriver_inst(reset, clk, char, an3, an2, an1, an0, A, B, C, D, E, F, G, dp, clkout, count);

    // initial
    // begin
    //     #10000000 $finish;
    // end

    initial 
        begin
            clk = 0;
            reset = 0;
            
            // char = zero_in;
            // #1;
            // if(LED == zero)
            //     $monitor("TEST_0 CHECK\n");
            // else
            //     $monitor("TEST_0 FALSE %b\n", LED);

            // char = one_in;
            // #1;
            // if(LED == one)
            //     $monitor("TEST_1 CHECK\n");
            // else
            //     $monitor("TEST_1 FALSE\n");

            // char = two_in;
            // #1;
            // if(LED == two)
            //     $monitor("TEST_2 CHECK\n");
            // else
            //     $monitor("TEST_2 FALSE\n");

            // char = three_in;
            // #1;
            // if(LED ==three)
            //     $monitor("TEST_3 CHECK\n");
            // else
            //     $monitor("TEST_3 FALSE\n");

            // char = four_in;
            // #1;
            // if(LED == four)
            //     $monitor("TEST_4 CHECK\n");
            // else
            //     $monitor("TEST_4 FALSE\n");

            // char = five_in;
            // #1;
            // if(LED == five)
            //     $monitor("TEST_5 CHECK\n");
            // else
            //     $monitor("TEST_5 FALSE\n");

            // char = six_in;
            // #1;
            // if(LED == six)
            //     $monitor("TEST_6 CHECK\n");
            // else
            //     $monitor("TEST_6 FALSE\n");

            // char = seven_in;
            // #1;
            // if(LED == seven)
            //     $monitor("TEST_7 CHECK\n");
            // else
            //     $monitor("TEST_7 FALSE\n");

            // char = eight_in;
            // #1;
            // if(LED == eight)
            //     $monitor("TEST_8 CHECK\n");
            // else
            //     $monitor("TEST_8 FALSE\n");

            // char = nine_in;
            // #1;
            // if(LED == nine)
            //     $monitor("TEST_9 CHECK\n");
            // else
            //     $monitor("TEST_9 FALSE\n");

            // char = a_in;
            // #1;
            // if(LED == a)
            //     $monitor("TEST_a CHECK\n");
            // else
            //     $monitor("TEST_a FALSE\n");
            
            // char = b_in;
            // #1;
            // if(LED == b)
            //     $monitor("TEST_b CHECK\n");
            // else
            //     $monitor("TEST_b FALSE\n");

            // char = c_in;
            // #1;
            // if(LED == c)
            //     $monitor("TEST_c CHECK\n");
            // else
            //     $monitor("TEST_c FALSE\n");

            // char = d_in;
            // #1;
            // if(LED == d)
            //     $monitor("TEST_d CHECK\n");
            // else
            //     $monitor("TEST_d FALSE\n");

            // char = e_in;
            // #1;
            // if(LED == e)
            //     $monitor("TEST_e CHECK\n");
            // else
            //     $monitor("TEST_e FALSE\n");

            // char = f_in;
            // #1;
            // if(LED == f)
            //     $monitor("TEST_f CHECK\n");
            // else
            //     $monitor("TEST_f FALSE\n");


            #4000 reset = 1;
            #1000 reset = 0;
            
        end

    always #5 clk =~clk;


endmodule