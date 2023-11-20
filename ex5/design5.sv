module design5 (
  input clk,
  input X,
  output logic s0, s3_0, s3_1,
  output reg [0:0] Y
);
reg [0:0] S0 = 1'bz;
reg [1:0] S3 = 2'b01;

assign Y = (S0 & S3[0]);
assign s0 = S0;
assign s3_0 = S3[0];
assign s3_1 = S3[1];

integer count0 = 0;
integer count3 = 0;

always @(posedge clk) begin
  if (count3 == 2) begin
    count3 <= 0;
    S3 <= 2'b01;
  end
  else begin
    if (X) begin
      S3[0] <= 1'b0;
      if (count3 == 0) S3[1] <= 1'b0;
      else if (count3 == 1) S3[1] <= 1'b1;
      count3 <= count3 + 1;
    end
  end
end

always @(posedge clk) begin
  if (count0 == 1) begin
    count0 <= 0;
    S0 <= 1'b1;
  end
  else begin
    if (~X) begin
      S0 <= 1'b0;
      count0 <= count0 + 1;
    end
  end
end

endmodule
