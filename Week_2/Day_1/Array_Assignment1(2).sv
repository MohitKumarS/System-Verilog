module Array_ass;
  int array_1[0:4][0:4];

  initial begin
    for (int i=0;i<5;i++)
      begin
        for (int j=0;j<5;j++)
          begin
            array_1[i][j] = i+j+1;
            
          end
      end
    
    $display(".......The Array in Matrix Format is.......");
    for (int i=0;i<5;i++)
      begin
        for (int j=0;j<5;j++)
          begin
            $write("\t %0d",array_1[i][j]);
            
          end
         $display(" ");
      end
    end
endmodule

// Output

// .......The Array in Matrix Format is.......
// 	 1	 2	 3	 4	 5 
// 	 2	 3	 4	 5	 6 
// 	 3	 4	 5	 6	 7 
// 	 4	 5	 6	 7	 8 
// 	 5	 6	 7	 8	 9 
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Tue Jun  6 10:34:54 2023
