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


module task_count(input [7:0] data_in, output reg [3:0] data_out);
  
  integer i;
  
  always @(data_in,data_out)
    
    count_is_in_byte(data_in,data_out);
  
  task count_is_in_byte(input [7:0] data_in, output reg [3:0] data_out);
    
    begin 
      data_out = 0;
      
      for(i=0;i<8;i++)
        
        if(data_in[i] == 1)
          
          data_out = data_out+1;
    end
    
  endtask
  
  
endmodule
