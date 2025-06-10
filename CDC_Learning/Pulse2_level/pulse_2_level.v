module pulse_2_level(
input clk,rst,in,
output reg out);

always@(posedge clk or posedge rst)

begin
 if(rst) begin
  out<=1'b0;
 end

 else begin
  out<=out^in;
 end
 end
endmodule
