module LEDdecoder(clk, char, LED);

`include "parameters.v"

    input [3:0] char;
    output reg [6:0] LED;
    input clk;


    always @(posedge clk) 
    begin
        case (char)
            zero_in: LED = zero;
            one_in: LED = one;
            two_in: LED = two;
            three_in: LED = three;
            four_in: LED = four;
            five_in: LED = five;
            six_in: LED = six;
            seven_in: LED = seven;
            eight_in: LED = eight;
            nine_in: LED = nine;
            a_in: LED = a;
            b_in: LED = b;
            c_in: LED = c;
            d_in: LED = d;
            e_in: LED = e;
            f_in: LED = f;
            default: LED = 7'b1111100;
        endcase
    end            

endmodule