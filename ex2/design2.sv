module design2 (
  input logic [1:0] sel,
  input logic [3:0] A,
  input logic [3:0] B,
  input logic [0:0] Cin,
  output logic [0:0] Cout,
  output logic [3:0] F
);

always begin
  case (sel)
    2'b00: {Cout, F} = A + B + Cin;
    2'b01: {Cout, F} = A - B - Cin;
    2'b10: {Cout, F} = (A & B);
    2'b11: {Cout, F} = (A | B);
  endcase
end
endmodule: design2
