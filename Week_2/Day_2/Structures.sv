module structures;
  bit [0:7][0:7]arr;
  int i,j;
  initial begin
    
    arr = $urandom_range(100,1000);
    foreach(arr[i,j])
      $display("arr[%0d][%0d] = %0d",i,j,arr[i][j]);
  end
endmodule

// Output

// arr[0][0] = 0
// arr[0][1] = 0
// arr[0][2] = 0
// arr[0][3] = 0
// arr[0][4] = 0
// arr[0][5] = 0
// arr[0][6] = 0
// arr[0][7] = 0
// arr[1][0] = 0
// arr[1][1] = 0
// arr[1][2] = 0
// arr[1][3] = 0
// arr[1][4] = 0
// arr[1][5] = 0
// arr[1][6] = 0
// arr[1][7] = 0
// arr[2][0] = 0
// arr[2][1] = 0
// arr[2][2] = 0
// arr[2][3] = 0
// arr[2][4] = 0
// arr[2][5] = 0
// arr[2][6] = 0
// arr[2][7] = 0
// arr[3][0] = 0
// arr[3][1] = 0
// arr[3][2] = 0
// arr[3][3] = 0
// arr[3][4] = 0
// arr[3][5] = 0
// arr[3][6] = 0
// arr[3][7] = 0
// arr[4][0] = 0
// arr[4][1] = 0
// arr[4][2] = 0
// arr[4][3] = 0
// arr[4][4] = 0
// arr[4][5] = 0
// arr[4][6] = 0
// arr[4][7] = 0
// arr[5][0] = 0
// arr[5][1] = 0
// arr[5][2] = 0
// arr[5][3] = 0
// arr[5][4] = 0
// arr[5][5] = 0
// arr[5][6] = 0
// arr[5][7] = 0
// arr[6][0] = 0
// arr[6][1] = 0
// arr[6][2] = 0
// arr[6][3] = 0
// arr[6][4] = 0
// arr[6][5] = 0
// arr[6][6] = 1
// arr[6][7] = 1
// arr[7][0] = 1
// arr[7][1] = 1
// arr[7][2] = 0
// arr[7][3] = 1
// arr[7][4] = 0
// arr[7][5] = 1
// arr[7][6] = 1
// arr[7][7] = 0
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 11:46:15 2023
