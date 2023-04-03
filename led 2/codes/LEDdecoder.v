module LEDdecoder(clk, char, LED);

//`include "parameters.v"
    parameter zero = 7'b0000001,
    one = 7'b1001111,
    two = 7'b0010010,
    three = 7'b0000110,
    four = 7'b1001100,
    five = 7'b0100100,
    six = 7'b0100000,
    seven = 7'b0001111,
    eight = 7'b0000000,
    nine = 7'b0000100,
    a = 7'b0001000,
    b = 7'b1100000,
    c = 7'b0110001,
    d = 7'b1000010,
    e = 7'b0110000,
    f = 7'b0111000,

    zero_in = 4'b0000,
    one_in = 4'b0001,
    two_in = 4'b0010, 
    three_in = 4'b0011,
    four_in = 4'b0100,
    five_in = 4'b0101,
    six_in = 4'b0110,
    seven_in = 4'b0111,
    eight_in = 4'b1000,
    nine_in = 4'b1001,
    a_in = 4'b1010,
    b_in = 4'b1011,
    c_in = 4'b1100,
    d_in = 4'b1101,
    e_in = 4'b1110,
    f_in = 4'b1111;

    input [3:0] char;
    output reg [6:0] LED;
    input clk;


    always @(char) 
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
            default: LED = 7'b1111100;  // timi pou den vgazei kapoio apo ta simvola
        endcase
    end            

endmodule