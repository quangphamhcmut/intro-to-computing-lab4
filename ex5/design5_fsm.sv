module design5_fsm (
  input clk, rst,
  input logic [0:0] X, 
  output reg [0:0] Y
);

localparam S0 = 3'b000;
localparam S1 = 3'b001;
localparam S2 = 3'b100;
localparam S3 = 3'b101;
localparam S4 = 3'b010;
localparam S5 = 3'b011;

reg [0:0] preset = 1'b0;
reg [2:0] state;
reg [2:0] next_state = S5;

always @(posedge clk) begin
  if (rst) begin
    state <= S5;
    preset <= 1'b0;
  end
  else begin
    state <= next_state;
    preset <= 1'b1;
  end
end

always @(X or state) begin
  case (state)
    S0: if (X) next_state = S2;
	else next_state = S1;
    S1: if (X) next_state = S3;
	else next_state = S0;
    S2: if (X) next_state = S4;
	else next_state = S3;
    S3: if (X) next_state = S5;
	else next_state = S2;
    S4: if (X) next_state = S0;
	else next_state = S5;
    S5: if (X) next_state = S1;
	else next_state = S4;
  endcase
end

always @(*) begin
  case (state)
    S0: Y <= 1'b0;
    S1: Y <= 1'b0;
    S2: Y <= 1'b0;
    S3: Y <= 1'b0;
    S4: Y <= 1'b0;
    S5: if (preset) Y <= 1'b1;
	else Y <= 1'b0;
  endcase
end

endmodule
