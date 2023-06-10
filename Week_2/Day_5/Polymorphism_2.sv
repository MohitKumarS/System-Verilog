// Poly

class parent;
  virtual function dis();
    $display("I'm in Parent Class");
  endfunction
endclass

class child extends parent;
  virtual function dis();
    $display("I'm in Child Class");
  endfunction
endclass

class sample;
  function dis();
    $display("I'm in Sample Class");
  endfunction
endclass

module top;
  sample s = new();
  parent p = new();
  child c = new();
  
  initial begin
    c.dis();
    p = c; // Virtual keyword allows extended class to be assigned to base class
    p.dis();
    s.dis();
  
  end
endmodule

// Output

// I'm in Child Class
// I'm in Child Class
// I'm in Sample Class
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
// Sat Jun 10 12:08:50 2023
