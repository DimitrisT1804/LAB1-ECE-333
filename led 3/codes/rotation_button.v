module rotation_button(button, reset, clk, addr);
input button, reset, clk;
output [3:0] addr;

reg [3:0] count;
wire button_out;

always @(posedge clk or posedge reset)  // metritis timis poy dixnei allazei tin dieuthinsi tis mnimis otan patiete to button
begin
    if(reset == 1)
    count <= 4'b0000;
    else
    begin
        if(button_out)
            count <= count + 1;
    end
end

assign addr = count;
debounce_button debounce_button(.clk(clk), .button(button), .button_out(button_out));

endmodule
