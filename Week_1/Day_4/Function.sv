// Code your testbench here
// or browse Examples
module function_sum(input [7:0]a,b, output reg [7:0]s);
  
  always @(a,b)
    s = sum_2_var(a,b);
  
  function[7:0] sum_2_var(input[7:0]a,b);
    begin
      sum_2_var = a+b;
    end
  endfunction
endmodule
