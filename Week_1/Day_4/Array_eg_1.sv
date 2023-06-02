// Code your testbench here
// or browse Examples
module fixedsize_array;
  //declaratioin of arrays
  int array1[6];
  int array2[5:0];
  int array3[2:0][3:0];
  int array4[4:0];
  
  initial begin 
    //array initialization
    array1 = '{0,1,2,3,4,5};
    array2 = '{0,1,2,3,4,5};
    array3 = '{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
    
    $display(".......Displaying Array1.......");
    foreach (array1[i])$display("\t array1[%0d] = %0d",i,array1[i]);
    
    $display(".......Displaying Array1.......");
    for (int i=0;i<6;i++)
      $display("\t array2[%0d] = %0d",i,array2[i]);
    
    $display(".......Displaying Array2 using Foreach.......");
    foreach (array2[i])$display("\t array2[%0d] = %0d",i,array2[i]);
    
    $display(".......Displaying Array3.......");
    foreach (array3[i,j])$display("\t array3[%0d][%0d] = %0d",i,j,array3[i][j]);
    
    $display(".......Displaying Array4.......");
    foreach (array1[i])$display("\t array4[%0d] = %0d",i,array4[i]);
  end
endmodule
    
// Output

// .......Displaying Array1.......
// 	 array1[0] = 0
// 	 array1[1] = 1
// 	 array1[2] = 2
// 	 array1[3] = 3
// 	 array1[4] = 4
// 	 array1[5] = 5
// .......Displaying Array1.......
// 	 array2[0] = 5
// 	 array2[1] = 4
// 	 array2[2] = 3
// 	 array2[3] = 2
// 	 array2[4] = 1
// 	 array2[5] = 0
// .......Displaying Array2 using Foreach.......
// 	 array2[5] = 0
// 	 array2[4] = 1
// 	 array2[3] = 2
// 	 array2[2] = 3
// 	 array2[1] = 4
// 	 array2[0] = 5
// .......Displaying Array3.......
// 	 array3[2][3] = 0
// 	 array3[2][2] = 1
// 	 array3[2][1] = 2
// 	 array3[2][0] = 3
// 	 array3[1][3] = 4
// 	 array3[1][2] = 5
// 	 array3[1][1] = 6
// 	 array3[1][0] = 7
// 	 array3[0][3] = 8
// 	 array3[0][2] = 9
// 	 array3[0][1] = 10
// 	 array3[0][0] = 11
// .......Displaying Array4.......
// 	 array4[0] = 0
// 	 array4[1] = 0
// 	 array4[2] = 0
// 	 array4[3] = 0
// 	 array4[4] = 0
// 	 array4[5] = 0
