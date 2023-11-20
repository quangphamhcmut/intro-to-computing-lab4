module wrapper (
  input CLOCK_50,
  input [3:0] KEY,
  output logic [6:0] HEX0,
  output logic [6:0] HEX1,
  output logic [6:0] HEX2,
  output logic [6:0] HEX3,
  output logic [6:0] HEX4,
  output logic [6:0] HEX5,
  output logic [6:0] HEX6,
  output logic [6:0] HEX7
);

integer clk_count = 0;
logic clk;
logic rst;

assign rst = ~ KEY[3];

assign HEX1 = 7'b1111111;
assign HEX2 = 7'b1111111;
assign HEX3 = 7'b1111111;
assign HEX4 = 7'b1111111;
assign HEX5 = 7'b1111111;
assign HEX6 = 7'b1111111;
assign HEX7 = 7'b1111111;

always @(posedge CLOCK_50) begin
  clk_count <= clk_count + 1;
  if (clk_count == 25000000) begin
    clk = ~clk;
    clk_count <= 0;
  end
end

design4 dut (
  .clk(clk),
  .rst_in(rst),
  .hex(HEX0)
);

endmodule: wrapper
