module clock_phasing(
  input wire clk,rst,
  output wire clk_0, clk_90, clk_180, clk_270);
  reg [1:0] count;
  reg clk_2;
  always@(posedge clk or posedge rst) begin
    if(rst)
      count<=0;
    else 
      count<={~count[0], count[1]};
  end
  always@(posedge clk or posedge rst) begin
    if(rst)
      clk_2 <=0;
    else
      clk_2=~clk_2;
  end
  assign clk_0=count[1];
  assign clk_90=count[1]^clk_2;
  assign clk_180=~count[1];
  assign clk_270=~clk_90;
  endmodule
