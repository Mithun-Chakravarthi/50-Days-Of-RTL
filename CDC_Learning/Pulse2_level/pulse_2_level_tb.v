module pulse_2_level_tb;

reg clk,rst,in;
wire out;

pulse_2_level dut( clk,rst,in,out);

initial begin
rst<=0;in<=0;
#30 rst<=1;
#20 rst<=0;
#20 in<=1;
#20 in<=0;
#60 in<=1;
#20 in<=0;
end

initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
#200 $stop;
end
endmodule