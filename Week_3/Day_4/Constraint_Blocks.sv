// Constraint Blocks Inside class

class packet;
  rand bit [3:0] addr;
  
  constraint addr_range1 {addr > 5;}
  constraint addr_range2 {addr <= 10;}
endclass

module constr_blocks;
  initial begin
    packet pkt;
    pkt = new();
    repeat (10) begin
      pkt.randomize;
      $display("\taddr = %0d",pkt.addr);
    end
  end
endmodule

// Output

//  addr = 7
// 	addr = 7
// 	addr = 9
// 	addr = 9
// 	addr = 7
// 	addr = 6
// 	addr = 10
// 	addr = 7
// 	addr = 9
// 	addr = 7
//            V C S   S i m u l a t i o n   R e p o r t 
