// Code your testbench here
// or browse Examples
module dynamic_array;
  bit [9:0] d_array1[];
  int  d_array2[];
  
  initial begin
    $display("Before Memory Allocation");
    $display("\t Size of d_array1 %0d",d_array1.size());
    $display("\t Size of d_array2 %0d",d_array2.size());
    
    //memeory allocation
    d_array1 = new[4];
    d_array2 = new[6];
    
    $display("After Memory Allocation");
    $display("\t Size of d_array1 %0d",d_array1.size());
    $display("\t Size of d_array2 %0d",d_array2.size());
    
    //array initialization
    d_array1 = {0,1,2,1023};
    foreach(d_array2[j]) d_array2[j] = j;
    
    $display("...d_array1 Values are...");
    foreach(d_array1[i])$display("\t d_array1[%0d] = %0d",i,d_array1[i]);
    $display(".....................");
    
    $display("...d_array2 Values are...");
    foreach(d_array2[i])$display("\t d_array2[%0d] = %0d",i,d_array2[i]);
    $display(".....................");
    
  end
endmodule

// Output

// Before Memory Allocation
// 	 Size of d_array1 0
// 	 Size of d_array2 0
// After Memory Allocation
// 	 Size of d_array1 4
// 	 Size of d_array2 6
// ...d_array1 Values are...
// 	 d_array1[0] = 0
// 	 d_array1[1] = 1
// 	 d_array1[2] = 2
// 	 d_array1[3] = 1023
// .....................
// ...d_array2 Values are...
// 	 d_array2[0] = 0
// 	 d_array2[1] = 1
// 	 d_array2[2] = 2
// 	 d_array2[3] = 3
// 	 d_array2[4] = 4
// 	 d_array2[5] = 5
// .....................
