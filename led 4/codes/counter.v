//counter

module counter(clk, reset, an3, an2, an1, an0, char);

input clk, reset;
wire [3:0] count;               // timi gia counter
output reg an3, an2, an1, an0;
reg [3:0] count_result;

wire [3:0] addr;
output reg [3:0] char;
reg [3:0] message [15:0];       // mnimi poy exei apothikeumenes tis times tou minimatos

parameter       // parametropoiisi ton eisodon
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


always @(posedge reset)         // always gia arxikopoiisi tis mnimis se kathe reset
begin
    if(reset == 1)
    begin
        message[4'b0000] <= zero_in;
        message[4'b0001] <= one_in;
        message[4'b0010] <= two_in;
        message[4'b0011] <= three_in;
        message[4'b0100] <= four_in;
        message[4'b0101] <= five_in;
        message[4'b0110] <= six_in;
        message[4'b0111] <= seven_in;
        message[4'b1000] <= eight_in;
        message[4'b1001] <= nine_in;
        message[4'b1010] <= a_in;
        message[4'b1011] <= b_in;
        message[4'b1100] <= c_in;
        message[4'b1101] <= d_in;
        message[4'b1110] <= e_in;
        message[4'b1111] <= f_in;
    end
end


always @(posedge clk or posedge reset)          // counter
begin
    if (reset == 1)
        count_result <= 4'b1111;
    else
    begin
        count_result <= 4'b0000 ? 4'b1111 : count_result - 4'b0001; 
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
                char = message[addr];
                end
        
        4'b1110: begin
                an3 = 0;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = message[addr];
                end
              
        4'b1101: begin
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = message[addr];
                end
        
        4'b1100: begin
                char = message[addr + 1];                           
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
                char = message[addr + 1];
                end
        
        4'b1010: begin
                an2 = 0;
                an3 = 1;
                an1 = 1;
                an0 = 1;
                char = message[addr + 1];
                end
                
        4'b1001: begin
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = message[addr + 1];
                end

        4'b1000: begin 
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = message[addr + 2];
                end
             
        4'b0111: begin
                an3 = 1;
                an1 = 1;
                an2 = 1;
                an0 = 1;
                char = message[addr + 2];
                end
                         
        4'b0110: begin
                an1 = 0;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                char = message[addr + 2];
                end
                
        4'b0101: begin
                an1 = 1;
                an2 = 1;
                an3 = 1;
                an0 = 1;
                char = message[addr + 2]; 
                end
                
        4'b0100: begin
                char = message[addr + 3];
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
                char = message[addr + 3];
                end
                
        4'b0010: begin
                an0 = 0;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                char = message[addr + 3];
                end
         
         4'b0001: begin
                an0 = 1;
                an1 = 1;
                an2 = 1;
                an3 = 1;
                char = message[addr + 3];
                end

        4'b0000: begin
                char = message[addr];
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
                char = message[addr];
                end
    endcase
end

rotation_button ratotion_inst(.reset(reset), .clk(clk), .addr(addr));

endmodule
