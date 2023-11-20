module wrapper (
  input logic [3:0] SW,
  output logic [3:0] LEDR,
  output logic [3:0] LEDG
);

design1 dut (
  .A(SW[3:0]),
  .S(LEDG[3:0])
);

assign LEDR = SW;

endmodule: wrapper
