`timescale 1ns/1ps

module tb_SimpleCounter;
  reg clk;       // Clock signal
  reg rst;       // Reset signal
  wire [3:0] count; // Output of the counter

  // Instantiate the SimpleCounter module
  SimpleCounter counter_inst (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Testbench stimulus
  initial begin
    // Initialize signals
    rst = 1;
    #10 rst = 0; // Release reset after 10 time units

    // Simulate for 50 time units
    #50 $finish; // End simulation after 50 time units
  end

  // Display count in the console
  always @(posedge clk) begin
    $display("Time %0t: Counter Value = %b", $time, count);
  end

endmodule
