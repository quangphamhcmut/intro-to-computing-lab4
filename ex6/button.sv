module button (
  input clk, rst,
  input logic [0:0] button, 
  output logic [0:0] stable_o
);

typedef enum logic [1:0] {
  IDLE,
  PRESS,
  HOLD
} state_e;

state_e next_state;
state_e state;

always_comb begin: proc_next_state
  case(state)
    IDLE: next_state = button ? PRESS : IDLE;
    PRESS: next_state = button ? HOLD : IDLE;
    HOLD: next_state = button ? HOLD : IDLE;
    default: next_state = IDLE;
  endcase
end

always_ff @(posedge clk) begin
  if (rst)
    state <= IDLE;
  else
    state <= next_state;
end

assign stable_o = (state == PRESS) ? 1'b1 : 1'b0;

endmodule: button
