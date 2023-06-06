module Array_ass;
  int array_1[0:4][0:4];

  initial begin
    array_1 = '{'{1,2,3,4,5},'{2,3,4,5,6},'{3,4,5,6,7},'{4,5,6,7,8},'{5,6,7,8,9}};
    
    $display(".......The Array in Matrix Format is.......");
    for (int i=0;i<5;i++)
      begin
        for (int j=0;j<5;j++)
          begin
            $display("\t %0d",array_1[i][j]);
            
          end
        
      end
    end
endmodule

// Output

// .......The Array in Matrix Format is.......
// 	 1
// 	 2
// 	 3
// 	 4
// 	 5
// 	 2
// 	 3
// 	 4
// 	 5
// 	 6
// 	 3
// 	 4
// 	 5
// 	 6
// 	 7
// 	 4
// 	 5
// 	 6
// 	 7
// 	 8
// 	 5
// 	 6
// 	 7
// 	 8
// 	 9
