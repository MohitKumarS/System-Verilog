class parent;
  int a;
  function display();
    $display("a = %0d",a);
  endfunction
endclass

class child_1 extends parent;
  int b;
  function display();
    $display("b = %0d",b);
  endfunction
endclass

class child_2 extends parent;
  int c;
  function display();
    $display("c = %0d",c);
  endfunction
endclass

module inheritance;
  initial begin
    child_1 c1 = new();
    child_1 c2 = new();
    
    c1.a = 10;
    c1.b = 20;
    c1.display();
    
    c2.a = 30;
    c2.b = 40;
    c2.display();
  end
endmodule

// Output

// b = 20
// b = 40
//            V C S   S i m u l a t i o n   R e p o r t 
