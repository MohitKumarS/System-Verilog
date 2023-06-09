class sv_class;
  int x;
  task data_in(int i);
    x = i;
  endtask
  
  function int get();
    return x;
  endfunction
endclass

module sv_class_ex;
  sv_class class_1;
  
  initial begin
    sv_class class_2 = new();//Creating Handle
    //Creating Handle and Object
    class_1 = new();
    //Creating Object for the Handle
    class_1.x = 5;
    class_2.x = 6;
    $display("Class_1 : Direct Setting : x = %0d",class_1.x);
    $display("Class_2 : Direct Setting : x = %0d",class_2.x);
    
    //Accessing Class Methods
    class_1.data_in(10);
    class_2.data_in(20);
    $display("Class_1 : Function Calling : x = %0d",class_1.get());
    $display("Class_2 : Function Calling : x = %0d",class_2.get());
    
  end
endmodule

// Output

// Class_1 : Direct Setting : x = 5
// Class_2 : Direct Setting : x = 6
// Class_1 : Function Calling : x = 10
// Class_2 : Function Calling : x = 20
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 10:42:49 2023
