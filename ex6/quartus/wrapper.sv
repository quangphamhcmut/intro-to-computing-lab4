module wrapper (
  input CLOCK_50,
  input logic [3:0] KEY,
  output logic [7:0] LEDG
);

logic rst;
assign rst = ~KEY[3];

design6 dut (
  .clk(CLOCK_50),
  .rst(rst),
  .RED(KEY[1]),
  .BLUE(KEY[0]),
  .FW(LEDG[5:4]),
  .present_state(LEDG[2:0])
);

assign LEDG[7] = rst;

endmodule
