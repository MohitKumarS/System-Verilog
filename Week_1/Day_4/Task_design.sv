// Code your design here

module task_sum(input [7:0] a,b, output reg [7:0] s);
  
  always@(a,b)
    
    sum_2_var(a,b,s);
  
  task sum_2_var(input [7:0] a,b, output reg [7:0] s);
    
    begin
      
      s = a+b;
      
    end
    
  endtask
  
endmodule


