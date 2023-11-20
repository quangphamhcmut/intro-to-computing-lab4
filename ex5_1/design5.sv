module design5 (
  input clk, rst, 
  input logic X,
  output reg [0:0] Y,
  output logic [3:0] present_state
);

localparam S0 = 4'b1100;
localparam S1 = 4'b1101;
localparam S2 = 4'b1110;
localparam S3 = 4'b0100;
localparam S4 = 4'b0101;
localparam S5 = 4'b0110;
localparam S6 = 4'b1000;
localparam S7 = 4'b1001;
localparam S8 = 4'b1010;

reg [3:0] state;
reg [3:0] next_state;

assign present_state = state;

always @(posedge clk) begin
  if (rst)
    state <= S0;
  else
    state <= next_state;
end

always @(X or state) begin
  case (state)
    S0: if (X) next_state <= S3;
	else next_state <= S1;
    S1: if (X) next_state <= S4;
	else next_state <= S2;
    S2: if (X) next_state <= S5;
	else next_state <= S1;
    S3: if (X) next_state <= S6;
	else next_state <= S4;
    S4: if (X) next_state <= S7;
	else next_state <= S5;
    S5: if (X) next_state <= S8;
	else next_state <= S4;
    S6: if (X) next_state <= S0;
	else next_state <= S7;
    S7: if (X) next_state <= S1;
	else next_state <= S8;
    S8: if (X) next_state <= S2;
	else next_state <= S7;
  endcase
end

always @(*) begin
  case (state)
    S0: Y <= 1'b0;
    S1: Y <= 1'b0;
    S2: Y <= 1'b1;
    S3: Y <= 1'b0;
    S4: Y <= 1'b0;
    S5: Y <= 1'b0;
    S6: Y <= 1'b0;
    S7: Y <= 1'b0;
    S8: Y <= 1'b0;
  endcase
end

endmodule: design5
