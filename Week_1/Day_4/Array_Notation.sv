// Code your testbench here
// or browse Examples
module fixedsize_array;
  //declaratioin of arrays
  int A[1:7];
  int B[1:3];
  int C[4:1];
  int D[2:0];
  int E[2:0];
  int F[1:4];
  int G[1:4];
  
  initial begin 
    //array initialization
    A = {1,2,3,4,5,6,7};
    B = A[5:7];
    C = A[1:4];
    D = A[4+:3];
    E = A[4-:3];
    F = A[2+:4];
    G[1:3] = A[3:5]; 
    
    $display(".......Displaying A.......");
    foreach (A[i])$display("\t A[%0d] = %0d",i,A[i]);
    
    $display(".......Displaying B.......");
    foreach (B[i])$display("\t B[%0d] = %0d",i,B[i]);
    
    $display(".......Displaying Array3.......");
    foreach (C[i])$display("\t C[%0d] = %0d",i,C[i]);
    
    $display(".......Displaying D.......");
    foreach (D[i])$display("\t D[%0d] = %0d",i,D[i]);
    
    $display(".......Displaying E.......");
    foreach (E[i])$display("\t E[%0d] = %0d",i,E[i]);
    
    $display(".......Displaying F.......");
    foreach (F[i])$display("\t F[%0d] = %0d",i,F[i]);
    
    $display(".......Displaying G.......");
    foreach (G[i])$display("\t G[%0d] = %0d",i,G[i]);
    
  end
endmodule
    
// Output

// .......Displaying A.......
// 	 A[1] = 1
// 	 A[2] = 2
// 	 A[3] = 3
// 	 A[4] = 4
// 	 A[5] = 5
// 	 A[6] = 6
// 	 A[7] = 7
// .......Displaying B.......
// 	 B[1] = 5
// 	 B[2] = 6
// 	 B[3] = 7
// .......Displaying Array3.......
// 	 C[4] = 1
// 	 C[3] = 2
// 	 C[2] = 3
// 	 C[1] = 4
// .......Displaying D.......
// 	 D[2] = 4
// 	 D[1] = 5
// 	 D[0] = 6
// .......Displaying E.......
// 	 E[2] = 2
// 	 E[1] = 3
// 	 E[0] = 4
// .......Displaying F.......
// 	 F[1] = 2
// 	 F[2] = 3
// 	 F[3] = 4
// 	 F[4] = 5
// .......Displaying G.......
// 	 G[1] = 3
// 	 G[2] = 4
// 	 G[3] = 5
// 	 G[4] = 0
