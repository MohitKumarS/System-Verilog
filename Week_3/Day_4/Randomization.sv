// Randomization in System Verilog

class transaction;
  rand logic[31:0] addr;
  randc logic[31:0] data;
endclass

module top;
  transaction tx;
  initial begin
    tx = new();
    tx.randomize();
    $display("Address = %0d",tx.addr);
    $display("Data = %0d",tx.data);
    
  end
endmodule

// Output

// Address = 3910850489
// Data = 2701757548
//            V C S   S i m u l a t i o n   R e p o r t 
