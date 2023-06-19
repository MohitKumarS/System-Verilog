// Write a class with one variable having default size 8. Take 4 objects of this class with 2 objects with size 8, 1 with size 10, 1 with size 16

class packet #(parameter int size = 8);
  bit [size-1 : 0] n;
endclass

module tb;
  packet pkt1;
  packet pkt2;
  packet #(.size(10))pkt3;
  packet #(.size(16))pkt4;
  
  initial begin
    pkt1 = new();
    pkt2 = new();
    pkt3 = new();
    pkt4 = new();
    
    $display("1st obj = %0p",$size(pkt1.n));
    $display("2nd obj = %0p",$size(pkt2.n));
    $display("3rd obj = %0p",$size(pkt3.n));
    $display("4th obj = %0p",$size(pkt4.n));
  end
endmodule

// Output

// 1st obj = 8
// 2nd obj = 8
// 3rd obj = 10
// 4th obj = 16
//            V C S   S i m u l a t i o n   R e p o r t 
