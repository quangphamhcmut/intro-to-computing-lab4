module one_bit_adder (
  input logic a, b, C_in,
  output logic sum, C_out
);

assign sum = a^b^C_in;
assign C_out = a&b | (a^b)&C_in;

endmodule: one_bit_adder
