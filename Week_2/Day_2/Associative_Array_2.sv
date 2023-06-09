module ass_arr;
  
  int array[string];
  string index;
  
  initial begin
    array["Red"] = 0;
    array["Green"] = 1;
    array["Blue"] = 2;
    array["White"] = 3;
    array["Black"] = 4;
    array["Pink"] = 5;
    
    $display("Number of Entries in the array = %0d",array.num());
    $display(".....Associative Array of Name and Colour.....");
    foreach(array[i])$display("\t Array[%0s]\t=%0d",i,array[i]);
    
    array.last(index);
    $display("Last Entry is Array[%0s] = %0d",index,array[index]);
    
    array.prev(index);
    $display("Previous Entry is Array[%0s] = %0d",index,array[index]);
    
    array.prev(index);
    $display("Previous Entry is Array[%0s] = %0d",index,array[index]);
    
    array.first(index);
    $display("First Entry is Array[%0s] = %0d",index,array[index]);
    
    array.next(index);
    $display("Next Entry is Array[%0s] = %0d",index,array[index]);
  end
endmodule

// Output

// Number of Entries in the array = 6
// .....Associative Array of Name and Colour.....
// 	 Array[Black]	=4
// 	 Array[Blue]	=2
// 	 Array[Green]	=1
// 	 Array[Pink]	=5
// 	 Array[Red]	=0
// 	 Array[White]	=3
// Last Entry is Array[White] = 3
// Previous Entry is Array[Red] = 0
// Previous Entry is Array[Pink] = 5
// First Entry is Array[Black] = 4
// Next Entry is Array[Blue] = 2
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 11:41:02 2023
