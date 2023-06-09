module arr_ass;
  int arr[int];
  integer i;
  initial begin
    repeat(20) begin
      i = $urandom_range(100,200);
      arr[i] = $urandom_range(500,600);
      $display("Array = %0p",arr[i]);
    end
  end
endmodule

// Output

// Array = 541
// Array = 500
// Array = 530
// Array = 519
// Array = 560
// Array = 583
// Array = 572
// Array = 575
// Array = 500
// Array = 501
// Array = 520
// Array = 555
// Array = 587
// Array = 538
// Array = 565
// Array = 546
// Array = 580
// Array = 523
// Array = 587
// Array = 520
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 11:30:41 2023
