// Inline Constraints Exclass packet;
class packet;
  rand bit [3:0] addr;
  
  constraint addr_range {addr < 5;};
endclass

module inline_constr;
  initial begin
    packet pkt = new();
    repeat(2) begin
      pkt.randomize(); //with {addr == 8;};
      $display("\taddress = %0d",pkt.addr);
    end
  end
endmodule
      
// Output

//  address = 1
// 	address = 3
//            V C S   S i m u l a t i o n   R e p o r t 
