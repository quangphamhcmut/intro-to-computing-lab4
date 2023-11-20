module design4 (
  input clk, rst_in,
  output logic [6:0] hex
);

reg [3:0] count;
logic local_rst;
logic rst_tmp;

assign rst_tmp = rst_in | local_rst;

counter counter0 (
  .clk(clk),
  .rst(rst_tmp),
  .count(count)
);

always @(*) begin
  case (count)
    4'b0000: hex = 7'b1000000;
    4'b0001: hex = 7'b1111001;
    4'b0010: hex = 7'b0100100;
    4'b0011: hex = 7'b0110000;
    4'b0100: hex = 7'b0011001;
    4'b0101: hex = 7'b0010010;
    4'b0110: hex = 7'b0000010;
    4'b0111: hex = 7'b1111000;
    4'b1000: hex = 7'b0000000;
    4'b1001: hex = 7'b0011000;
    4'b1010: hex = 7'b0100111;
    4'b1011: hex = 7'b0110011;
    4'b1100: hex = 7'b0011101;
    4'b1101: hex = 7'b0010110;
    4'b1110: hex = 7'b0000111;
    4'b1111: hex = 7'b1111111;
  endcase
end

always @(count) begin
  if (count == 4'b1010)
    local_rst <= '1;
  else
    local_rst <= '0;
end
endmodule: design4
