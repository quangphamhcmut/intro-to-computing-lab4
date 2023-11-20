module design1 (
  input logic [3:0] A,
  output logic [3:0] S
);

logic c0, c1, c2, c3;
logic a0, a1, a2;

assign a0 = A[3] ^ A[0];
assign a1 = A[3] ^ A[1];
assign a2 = A[3] ^ A[2];
assign c0 = A[3];

one_bit_adder adder0 (
  .a(a0),
  .b(1'b0),
  .C_in(c0),
  .C_out(c1),
  .sum(S[0])
);

one_bit_adder adder1 (
  .a(a1),
  .b(1'b0),
  .C_in(c1),
  .C_out(c2),
  .sum(S[1])
);

one_bit_adder adder2 (
  .a(a2),
  .b(1'b0),
  .C_in(c2),
  .C_out(c3),
  .sum(S[2])
);

assign S[3] = A[3] ^ A[3];

endmodule: design1
