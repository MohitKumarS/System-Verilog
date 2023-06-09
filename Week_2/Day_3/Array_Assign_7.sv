module iterative_array;
  int arr[];
  int i;
  
  initial begin
    arr = new[5];
    $display("arr= %p",arr);
    for(i=0;i<5;i++)begin
      arr[i] = i;
      $display("arr[%0d]= %p",i,arr);
    end
 
  end
endmodule

// Output

// arr= '{0, 0, 0, 0, 0}
// arr[0]= '{0, 0, 0, 0, 0}
// arr[1]= '{0, 1, 0, 0, 0}
// arr[2]= '{0, 1, 2, 0, 0}
// arr[3]= '{0, 1, 2, 3, 0}
// arr[4]= '{0, 1, 2, 3, 4}
