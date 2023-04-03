module timer(clk, reset, flag);

input clk, reset;
output reg flag;    // output poy xrisimopoieitai gia na stelnei sima pote metrise 1.6 sec o counter

//reg [3:0] time_1;     // gia to tesbench gia na einai mikros o xronos
reg [23:0]time_1;

always @(posedge clk or posedge reset)  // counter 1.6 sec
begin
    if(reset == 1)
    begin
        time_1 <= 23'b0;
    end

    else
    begin
        time_1 <= time_1 + 1;
    end
end

always @(time_1)    // allagi timis flag 
begin
    if(time_1 == 23'b11111111111111111111111)
        flag = 1;
    else
        flag = 0;
end

endmodule
