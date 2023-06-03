// Code your testbench here
// or browse Examples
module count_tb;
  
  reg [7:0] data_in;
  wire [3:0] data_out;
  
  task_count(data_in,data_out);
  
  initial begin 
    
    $display("the counting sequence is given by:");
    
    $monitor("time = %d, data_in = %0d, data_out = %0d",$time,data_in,data_out);
    
    #20 data_in <= 31;
    #5 data_in <= 43;
    #10 data_in <= 50;
    
    #6 $finish; 
  end
  
endmodule

//Output

//the counting sequence is given by:
//time =                    0, data_in = x, data_out = x
//time =                   20, data_in = 31, data_out = 5
//time =                   25, data_in = 43, data_out = 4
// time =                   35, data_in = 50, data_out = 3
// $finish called from file "testbench.sv", line 20.
// $finish at simulation time                   41
