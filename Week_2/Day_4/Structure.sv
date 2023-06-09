module Structure;
  typedef struct{
    bit valid;
    bit ready;
    bit[31:0] addr;
    bit[64:0] data;
  }intr;
  
  intr i1;
  intr i2;
  
  initial begin
    i1.valid = 23;
    $display("The value of Valid = %0p",i1);
    
    i1.ready = 32;
    $display("The value of Ready = %0p",i1);
    
    i2.valid = 23;
    $display("The value of Valid = %0p",i2);
    
    i2.ready = 32;
    $display("The value of Ready = %0p",i2);
    
    i1.addr = 96;
    $display("The value of addr = %0p",i1);
    
    i1.data = 69;
    $display("The value of data = %0p",i1);
    
    i2.addr = 96;
    $display("The value of addr = %0p",i2);
    
    i2.data = 69;
    $display("The value of data = %0p",i2);
    
  end
endmodule

// Output

// The value of Valid = '{valid:'h1, ready:'h0, addr:'h0, data:'h0}
// The value of Ready = '{valid:'h1, ready:'h0, addr:'h0, data:'h0}
// The value of Valid = '{valid:'h1, ready:'h0, addr:'h0, data:'h0}
// The value of Ready = '{valid:'h1, ready:'h0, addr:'h0, data:'h0}
// The value of addr = '{valid:'h1, ready:'h0, addr:'h60, data:'h0}
// The value of data = '{valid:'h1, ready:'h0, addr:'h60, data:'h45}
// The value of addr = '{valid:'h1, ready:'h0, addr:'h60, data:'h0}
// The value of data = '{valid:'h1, ready:'h0, addr:'h60, data:'h45}
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 10:35:31 2023
