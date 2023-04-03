module rotation_button(reset, clk, addr);
input reset, clk;
output [3:0] addr;

reg [3:0] count;
wire flag;      

always @(posedge clk or posedge reset)  // metritis timis poy dixnei stin sosti dieuthinsi stin mnimi kaue 1.6 sec
begin
    if(reset == 1)
    count <= 4'b0000;
    else
    begin
    
        if(flag)
            count <= count + 4'b0001;
    end
end

assign addr = count;
timer timer(.clk(clk), .reset(reset), .flag(flag));

endmodule
