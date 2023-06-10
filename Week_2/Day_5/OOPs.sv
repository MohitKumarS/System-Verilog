// Window 1

//`include "encapsulation.sv"
`include "inheritance.sv"
module top;
  parent p=new();
  sample s=new();
  child c=new();
  
  initial begin
    s.disp();
    //p = c;
    //p.disp();
    c.disp();
  end
endmodule

// Window 2

class sample;
  int a;
  function disp();
    $display("I am in sample");
    a=20;
    $display("sample::a=%0d",a);
  endfunction
endclass
             
class parent;
  sample s=new();
  function disp();
    $display("I am in parent");
    s.a=10;
    $display("parent::a=%0d", s.a);
  endfunction
endclass
             
class child extends parent;
  function disp();
    $display("I am in child");
  endfunction
endclass


// Window 3

class sample;
  int a;
  function disp();
    $display("I am in sample");
    a=20;
    $display("sample::a=%0d",a);
  endfunction
endclass
             
class parent;
  //sample s=new();
  function disp();
    $display("I am in parent");
    //s.a=10;
    //$display("parent::a=%0d", s.a);
  endfunction
endclass
             
class child extends parent;
  function disp();
    super.disp();
    $display("I am in child");
  endfunction
endclass

// Output

// I am in sample
// sample::a=20
// I am in parent
// I am in child
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
// Sat Jun 10 12:12:11 2023
