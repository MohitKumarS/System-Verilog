// Inline Constraint

class inline;
  rand int arr[];
  constraint array_c {arr.size() == 10; unique {arr}; foreach (arr[i]) arr[i] inside {[0:10]};}
  function void display();
    $display("\t Array Value = %0p",arr);
  endfunction
endclass

module constr;
  inline pkt = new();
  initial begin
    repeat(5) begin
      pkt.randomize();
      pkt.display();
    end
  end
endmodule

// Output

//   Array Value = '{3, 2, 0, 10, 1, 4, 9, 8, 6, 7} 
// 	 Array Value = '{10, 9, 3, 0, 2, 4, 1, 7, 8, 5} 
// 	 Array Value = '{7, 5, 9, 4, 6, 8, 0, 3, 10, 2} 
// 	 Array Value = '{1, 5, 2, 6, 7, 4, 0, 8, 10, 9} 
// 	 Array Value = '{0, 1, 6, 7, 3, 9, 10, 5, 8, 2} 
//            V C S   S i m u l a t i o n   R e p o r t 
