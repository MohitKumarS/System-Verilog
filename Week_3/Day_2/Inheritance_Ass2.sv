// Write a code to add some extra behaviour/ line of code in the existing parent method through child class

class parent;
  int a=4,b=16,m,l;
  
  function void mul();
    m = a*b;
    $display("The multiplication of a=%0d & b=%0d = m=%0d",a,b,m);
  endfunction
endclass
 
class child extends parent;
  function void extra();
    super.mul();
    l = m+5;
    $display("The Addition of m=%0d & 5 = l=%0d",m,l);
  endfunction
endclass
  
module main;
  child c1 = new();
  parent p1 = new();
  
  initial begin
    $display("The Value is :");
    c1.extra();
    p1.mul();
    
  end
endmodule

// Output

// The Value is :
// The multiplication of a=4 & b=16 = m=64
// The Addition of m=64 & 5 = l=69
// The multiplication of a=4 & b=16 = m=64
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
// Wed Jun 14 05:59:07 2023
