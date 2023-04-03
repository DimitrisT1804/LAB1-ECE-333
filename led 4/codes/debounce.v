//
module debounce_button(clk, button, button_out);
input clk, button;
output wire button_out;
reg Q1, Q2;
wire Q2_bar;

reg [20:0] count = 0;   // arithmos poy ftanei gia ton counter na ginei 1.250.000 opoy ua metatrapei se 5Hz
reg slow_clk = 0;

// always @(posedge clk)
// begin
//     count <= count + 1;
//     if (count == 7'd1250000)
//     begin
//         count <= 0;
//         slow_clk = ~slow_clk;
//     end
// end

always @(posedge clk)
begin
    Q1 <= button;
end

always @(posedge clk)
begin  
    Q2 <= Q1;
end

assign Q2_bar = ~Q2;

assign button_out = (Q2_bar && Q1);

endmodule