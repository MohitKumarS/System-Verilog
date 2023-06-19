// Write a super class having a method where a user will ask the testcase writer to mandatorily override the behaviour of the method from super class

virtual class parent;
  bit [31:0] addr;
  bit [15:0] data;
  virtual function dis();
  endfunction
endclass

class child_1 extends parent;
  function display();
    $display("Value of Addr = %0d",addr);
  endfunction
endclass

class child_2 extends parent;
  function display();
    $display("Value of data = %0d",data);
  endfunction
endclass

module virtual_class;
  child_1 c1 = new();;
  child_2 c2 = new();;
  
  
  initial begin
    c1.addr = 100;
    c1.display();
    c2.data = 20;
    c2.display();
  end
endmodule

// Output

// Value of Addr = 100
// Value of data = 20
//            V C S   S i m u l a t i o n   R e p o r t 
