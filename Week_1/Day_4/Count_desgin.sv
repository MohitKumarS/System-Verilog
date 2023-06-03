// Code your design here
module task_count(input [7:0] data_in, output reg [3:0] data_out);
  
  always @(data_in,data_out)
    
    count_is_in_byte(data_in,data_out);
  
  task count_is_in_byte(input [7:0] data_in, output reg [3:0] data_out);
    
    integer i;
  
    begin 
      data_out = 0;
      
      for(i=0;i<8;i++)
        
        if(data_in[i] == 1)
          
          data_out = data_out+1;
    end
    
  endtask
  
endmodule
