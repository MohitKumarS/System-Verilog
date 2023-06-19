// Constraint with Inside

class packet;
  rand bit [3:0] addr;
  
  constraint addr_range {addr inside {1,3,[5:10],12,[15:20]};}
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

//     addr = 6
// 	addr = 6
// 	addr = 8
// 	addr = 9
// 	addr = 3
// 	addr = 15
// 	addr = 15
// 	addr = 6
// 	addr = 15
// 	addr = 15
//            V C S   S i m u l a t i o n   R e p o r t 
