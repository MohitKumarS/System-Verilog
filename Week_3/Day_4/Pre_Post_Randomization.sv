class packet;
  rand  bit [7:0] addr;
  randc bit [7:0] data;   
  
  //pre randomization function
  function void pre_randomize();
    addr = 50;data = 100;
    $display("Inside pre_randomize");
    $display("Value of addr = %0d, data = %0d",addr,data);
    
  endfunction
  
  //post randomization function
  function void post_randomize();
    $display("Inside post_randomize");
    $display("value of addr = %0d, data = %0d",addr,data);
  endfunction
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt = new();
    pkt.randomize();
  end
endmodule

// Output

// Inside pre_randomize
// Value of addr = 50, data = 100
// Inside post_randomize
// value of addr = 185, data = 161
//            V C S   S i m u l a t i o n   R e p o r t 
