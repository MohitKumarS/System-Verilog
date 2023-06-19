// Constraint Blocks Outside Class

class packet;
  rand bit [3:0] addr;
  // Constraint Block Declaration
  constraint addr_range;
endclass
 constraint packet :: addr_range {addr <= 10;}

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

//  addr = 3
// 	addr = 9
// 	addr = 4
// 	addr = 8
// 	addr = 8
// 	addr = 10
// 	addr = 6
// 	addr = 10
// 	addr = 7
// 	addr = 1
//            V C S   S i m u l a t i o n   R e p o r t 
