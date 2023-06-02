// Code your testbench here
// or browse Examples

module task_tb;
  
  reg [7:0] a,b;
  wire [7:0] sum;
  
  task_sum s1(a,b,sum);
  
  initial begin
    
    $display("the sum of two arguement is given by:");
    $monitor("time = %d, a=%0d, b=%0d, sum=%0d",$time,a,b,sum);
    
    #20 a = 10; b = 30;
    
    #30 a = 5; b = 10;
    
    
  end
  
endmodule

// Output

the sum of two arguement is given by:
time =                    0, a=x, b=x, sum=x
time =                   20, a=10, b=30, sum=40
time =                   50, a=5, b=10, sum=15
