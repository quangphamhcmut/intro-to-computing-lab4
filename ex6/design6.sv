module design6 (
  input clk, rst,
  input logic [0:0] RED,
  input logic [0:0] BLUE,
  output logic [1:0] FW,
  output logic [2:0] present_state
);

logic [1:0] X;

button red_button (
  .clk(clk),
  .rst(rst),
  .button(RED),
  .stable_o(X[1])
);

button blue_button (
  .clk(clk),
  .rst(rst),
  .button(BLUE),
  .stable_o(X[0])
);

typedef enum logic [2:0] {
  S0 = 3'b000,
  S1 = 3'b001,
  S2 = 3'b010,
  S3 = 3'b011,
  S4 = 3'b100,
  S5 = 3'b101
} state_type;

state_type current_state;
state_type next_state;

assign present_state = current_state;

always @(posedge clk) begin
  if (rst)
    current_state <= S0;
  else
    current_state <= next_state;
end
    
always_comb begin
  case (current_state)
    S0: begin
      case(X) 
	2'b00: next_state = S0;
	2'b01: next_state = S4;
	2'b10: next_state = S1;
	2'b11: next_state = S0;
      endcase
    end
    S1: begin
      case(X) 
	2'b00: next_state = S1;
	2'b01: next_state = S0;
	2'b10: next_state = S2;
	2'b11: next_state = S1;
      endcase
    end
    S2: begin
      case(X) 
	2'b00: next_state = S2;
	2'b01: next_state = S0;
	2'b10: next_state = S3;
	2'b11: next_state = S2;
      endcase
    end
    S3: begin
      case(X) 
	2'b00: next_state = S3;
	2'b01: next_state = S4;
	2'b10: next_state = S1;
	2'b11: next_state = S0;
      endcase
    end
    S4: begin
      case(X) 
	2'b00: next_state = S4;
	2'b01: next_state = S5;
	2'b10: next_state = S0;
	2'b11: next_state = S4;
      endcase
    end
    S5: begin
      case(X) 
	2'b00: next_state = S5;
	2'b01: next_state = S4;
	2'b10: next_state = S1;
	2'b11: next_state = S0;
      endcase
    end
    default: next_state = S0;
  endcase
end

always @(*) begin
  case (current_state)
    S0: FW <= 2'b00;
    S1: FW <= 2'b00;
    S2: FW <= 2'b00;
    S3: FW <= 2'b10;
    S4: FW <= 2'b00;
    S5: FW <= 2'b01;
  endcase
end

endmodule: design6
