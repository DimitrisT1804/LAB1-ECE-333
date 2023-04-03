//counter

module counter(clk, reset, an3, an2, an1, an0, char);

parameter   zero_in = 4'b0000,          // parametropoiisi gia inputs
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

input clk, reset;
output reg an3, an2, an1, an0;
output reg [3:0] char;

wire [3:0] count;
reg [3:0] count_result;

always @(posedge clk or posedge reset)          // counter
begin
    if (reset == 1)
        count_result <= 4'b1111;
    else
    begin
        count_result <= 4'b0000 ? 4'b1111 : count_result - 4'b0001;     // an paei na ginei overflow na midenizei
    end
end

assign count = count_result;

always @(count)         // cases gia kathe allagi toy counter
                        // allagi timis twn an0-3 se sygkekrimenes times gia na fortizoyn kai na xefortizoyn
                        // oi piknotes, kai to idio kai me tin anethesi toy char.
begin
    case(count)         
        4'b1111: begin
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = three_in;
                end
        
        4'b1110: begin
                an3 = 0;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = three_in;
                end
              
        4'b1101: begin
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = three_in;
                end
        
        4'b1100: begin
                char = two_in;                           
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                end
                
         4'b1011: begin
                    an3 = 1;
                    an1 = 1;
                    an2 = 1;
                    an0 = 1;
                    char = two_in;
                    end
        
        
        4'b1010: begin
                    an2 = 0;
                    an3 = 1;
                    an1 = 1;
                    an0 = 1;
                    char = two_in;
                end
                
        4'b1001: begin
        an3 = 1;
        an1 = 1;
        an2 = 1;
        an0 = 1;
        char = two_in;
        end

        4'b1000: begin 
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = four_in;
                end
             
        4'b0111: begin
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = four_in;
                end
                         
        4'b0110: begin
                an1 = 0;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                char = four_in;
                end
                
        4'b0101: begin
                an1 = 1;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                char = four_in; 
                end
                
        4'b0100: begin
                char = six_in;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                end
                
        4'b0011: begin
                an1 = 1;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                char = six_in;
                end
                
        4'b0010: begin
                an0 = 0;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                char = six_in;
                end
         
         4'b0001: begin
                an0 = 1;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                char = six_in;
                end

        4'b0000: begin
                char = three_in;
                an0 = 1;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                end

        default: begin
                an0 = 1;
                an1 = 1;
                an2 = 1; 
                an3 = 1;
                char = zero_in;
                end
    endcase
end

endmodule