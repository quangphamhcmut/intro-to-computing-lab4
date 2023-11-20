module wrapper (
  input logic [3:0] KEY,
  input logic [0:0] SW,
  output logic [0:0] LEDR,
  output logic [7:0] LEDG,
  output logic [6:0] HEX0,
  output logic [6:0] HEX1
);

logic [0:0] clk;
logic [0:0] rst;
logic [3:0] state;
logic [3:0] count0;
logic [3:0] count3;

assign clk = ~ KEY[3];
assign rst = ~ KEY[2];

design5 dut (
  .clk(clk),
  .rst(rst),
  .X(SW[0]),
  .Y(LEDG[0]),
  .present_state(state)
);

assign LEDR = SW;
assign LEDG[7] = clk;
assign LEDG[6] = rst;
assign LEDG[4:1] = state;

assign count0 = {2'b00, state[1], state[0]};
assign count3 = {2'b00, state[3], state[2]};

always @(posedge clk) begin
  case (count3)
    4'b0000: HEX1 <= 7'b1000000;
    4'b0001: HEX1 <= 7'b1111001;
    4'b0010: HEX1 <= 7'b0100100;
    4'b0011: HEX1 <= 7'b0110000;
  endcase
end

always @(posedge clk) begin
  case (count0)
    4'b0000: HEX0 <= 7'b1000000;
    4'b0001: HEX0 <= 7'b1111001;
    4'b0010: HEX0 <= 7'b0100100;
    4'b0011: HEX0 <= 7'b0110000;
  endcase
end

endmodule: wrapper
