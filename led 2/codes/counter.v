//counter

module counter(clk, reset, an3, an2, an1, an0);

input clk, reset;
wire [3:0] count;
output reg an3, an2, an1, an0;
reg [3:0] count_result;


always @(posedge clk or posedge reset)
begin
    if (reset == 1)
        count_result <= 4'b1111;
    else
    begin
        //count_result <= count_result - 4'b0001;
        count_result <= 4'b0000 ? 4'b1111 : count_result - 4'b0001; 
    end
end

assign count = count_result;

always @(count)
begin
    case(count)
        4'b1110: begin
                an3 = 0;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                end
        
        //4'b1100: char = one_in;                           

        4'b1010: begin
                    an2 = 0;
                    an3 = 1;
                    an1 = 1;
                    an0 = 1;
                end

        //4'b1000: char = two_in;
                
        4'b0110: begin
                an1 = 0;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                end

        //4'b0100: char = three_in;
                
        4'b0010: begin
                an0 = 0;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                end

        //4'b0000: char = zero_in;

        default: begin
                an0 = 1;
                an1 = 1;
                an2 = 1; 
                an3 = 1;
                end
    endcase
end

endmodule
