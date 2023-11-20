module wrapper (
  input logic [10:0] SW,
  output logic [10:0] LEDR,
  output logic [4:0] LEDG
);

design2 dut (
  .sel(SW[10:9]),
  .A(SW[3:0]),
  .B(SW[7:4]),
  .Cin(SW[8]),
  .Cout(LEDG[4]),
  .F(LEDG[3:0])
);

assign LEDR = SW;

endmodule: wrapper
