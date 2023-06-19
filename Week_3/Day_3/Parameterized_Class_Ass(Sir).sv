class size_diff #(int size = 8);
  function void display();
    bit [size-1 : 0]x;
    $display("Size of The Variable : %0d",$size(x));
  endfunction
endclass

module main;
  initial begin
    size_diff s1 = new();
    size_diff #(10)s2 = new();
    size_diff #(16)s3 = new();
    
    s1.display();
    s2.display();
    s3.display();
  end
endmodule

// Output

// Size of The Variable : 8
// Size of The Variable : 10
// Size of The Variable : 16
//            V C S   S i m u l a t i o n   R e p o r t 
