class sv_class;
  int x;
  
  task double(int x);
    $display("In Double Task Before Doubling : x = %0d",x);
    x = 2*x;
    $display("In Double Task After Doubling : x = %0d",x);
  endtask
  
  function int get();
    $display("In Function x = %0d",x);
    return x;
  endfunction
  
endclass

module sv_class_ex;
  sv_class class_1;
  
  initial begin
    class_1 = new();
    class_1.x = 5;
    $display("Class_1 : Printing Directly : x = %0d",class_1.x);
    
    class_1.double(10);
    $display("Class_1 : Printing Using et() : x = %0d",class_1.get());
  end
endmodule

// Output

// Class_1 : Printing Directly : x = 5
// In Double Task Before Doubling : x = 10
// In Double Task After Doubling : x = 20
// In Function x = 5
// Class_1 : Printing Using et() : x = 5
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 10:55:25 2023
