class parent;
  int a = 10;
endclass

class child extends parent;
  int a,c;
  function void see(int a);
    super.a = a;
    $display("The Value is : %0d",super.a);
  endfunction
endclass

module main;
  initial begin
    child c1 = new();
    c1.see(20);
  end
endmodule

// Output

// The Value is : 20
//            V C S   S i m u l a t i o n   R e p o r t 
