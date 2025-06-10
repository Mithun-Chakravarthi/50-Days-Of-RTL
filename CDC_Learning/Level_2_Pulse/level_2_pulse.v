module level_2_pulse(
  input clk, rst, d,
    output out,
    output reg q
);
reg temp;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 1'b0;
        temp <= 1'b0;
    end else begin
        temp <= d;
        q <= temp;
    end
end

assign out = d & ~q;
endmodule

