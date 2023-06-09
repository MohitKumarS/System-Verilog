class my_class;
  int a,b,c;
  string s;
  task d_in(int i, int j, int k, string l);
    a = i;
    b = j;
    c = k;
    s = l;
  endtask
  function d_display();
    $display("The Value of A = %0d",a);
    $display("The Value of B = %0d",b);
    $display("The Value of C = %0d",c);
    $display("The Value of S = %0s",s);
  endfunction
endclass

module my_class_my;
  my_class c1,c2,c3;
  
  initial begin
    c1 = new();
    c2 = new();
    c3 = new();
    
    c1.a = 1;
    c1.b = 2;
    c1.c = 3;
    c1.s = "Red";
    
    $display("C1 : Direct Setting : a = %0d",c1.a);
    $display("C1 : Direct Setting : b = %0d",c1.b);
    $display("C1 : Direct Setting : c = %0d",c1.c);
    $display("C1 : Direct Setting : s = %0s",c1.s);
    
    c2.d_in(10,20,30,"Blue");
    c2.d_display();
    c1.d_display();
 
    c3 = c2;
    c2 = c1;
    c1 = c3;
    $display("After Swapping");
    c1.d_display();
    c2.d_display();
    
  end
endmodule

// Output

// C1 : Direct Setting : a = 1
// C1 : Direct Setting : b = 2
// C1 : Direct Setting : c = 3
// C1 : Direct Setting : s = Red
// The Value of A = 10
// The Value of B = 20
// The Value of C = 30
// The Value of S = Blue
// The Value of A = 1
// The Value of B = 2
// The Value of C = 3
// The Value of S = Red
// After Swapping
// The Value of A = 10
// The Value of B = 20
// The Value of C = 30
// The Value of S = Blue
// The Value of A = 1
// The Value of B = 2
// The Value of C = 3
// The Value of S = Red
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 10:48:01 2023
