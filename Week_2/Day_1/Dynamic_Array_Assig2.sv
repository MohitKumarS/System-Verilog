module dynamic;
  int arr[];
  initial begin
    int temp,flag;
    arr = new[20];
    for(int i=0;i<20;)
      begin
        temp = $urandom_range(1,100);
        if(temp%2 != 0)
          begin
            arr[i] = temp;
            $display("arr [%0d] = %0d",i,arr[i]);
            i = i+1;
          end
      end
  end
endmodule

// Output

// arr [0] = 39
// arr [1] = 61
// arr [2] = 71
// arr [3] = 97
// arr [4] = 23
// arr [5] = 91
// arr [6] = 79
// arr [7] = 71
// arr [8] = 75
// arr [9] = 33
// arr [10] = 27
// arr [11] = 73
// arr [12] = 41
// arr [13] = 37
// arr [14] = 85
// arr [15] = 83
// arr [16] = 73
// arr [17] = 95
// arr [18] = 61
// arr [19] = 11
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
// Tue Jun  6 10:42:19 2023
