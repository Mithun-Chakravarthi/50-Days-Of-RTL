
module edge_detector_tb;
reg clk, rst, d;
wire out;
wire q;

edge_detector dut(clk, rst, d, out, q); // updated ports

always #5 clk = ~clk;

initial begin

    clk = 0; rst = 0; d = 0;
    #3 rst = 1;
    #5 rst = 0;

    #7 d = 0;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 1; #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 0;
    #5 rst = 1;
    #5 rst = 0;
    #10 $finish;
end
endmodule

