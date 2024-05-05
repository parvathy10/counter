module SimpleCounter(
  input wire clk,   // Clock input
  input wire rst,   // Reset input
  output reg [3:0] count // 4-bit counter output
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      // Reset the counter to 4'b0000
      count <= 4'b0000;
    end else begin
      // Increment the counter on each clock edge
      count <= count + 1;
    end
 

endmodule
