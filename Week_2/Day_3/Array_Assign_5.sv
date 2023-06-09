module arr_ass;
  int arr[*];
  integer i,index;
  initial begin
    for(i=0;i<10;i++)begin
      index = i*3;
      arr[index] = $urandom_range(100,200);
      $display("Array[%0d] = %p",index,arr[index]);
    end
    $display("Arr=%p",arr);
  end
endmodule

// Output

// Array[0] = 131
// Array[3] = 177
// Array[6] = 168
// Array[9] = 152
// Array[12] = 102
// Array[15] = 110
// Array[18] = 170
// Array[21] = 121
// Array[24] = 123
// Array[27] = 169
// Arr='{'h0:131, 'h3:177, 'h6:168, 'h9:152, 'hc:102, 'hf:110, 'h12:170, 'h15:121, 'h18:123, 'h1b:169}
