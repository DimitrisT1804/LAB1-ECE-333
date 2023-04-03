//counter

module counter(clk, reset, count, an3, an2, an1, an0);

input clk, reset;
output reg[3:0] count;
output reg an3, an2, an1, an0;

always @(posedge clk or posedge reset)
begin
    if (!reset)
        count <= count - 4'b0001;
    else
        count <= 4'b1111;
end

always @(count)
begin   
    case(count)
        4'b1110: begin
                an3 = 0;
                an0 = 1;
                end
        
        //4'b1100: begin
                    

        4'b1010: begin
                    an2 = 0;
                    an3 = 1;
                end
                
        4'b0110: begin
                an1 = 0;
                an2 = 1;
                end
                
        4'b0010: begin
                an0 = 0;
                an1 = 1;
                end
        default: begin
                an0 = 1;
                an1 = 1;
                an2 = 1; 
                an3 = 1;
                end
        endcase
end

endmodule
