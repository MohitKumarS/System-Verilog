// inline constraints example with class constraint

class packet;
  rand bit [3:0] addr;
  rand bit [3:0] data;
endclass

module inline_constr;
  initial begin
    packet pkt = new();
    repeat(2) begin
      pkt.randomize();// with {addr == 8;};
      $display("\tVALUE is = %0p",pkt);
      //$display("\taddress = %0d",pkt.addr);
    end
  end
endmodule
      
// Output

//  VALUE is = '{addr:'h3, data:'hf}
// 	VALUE is = '{addr:'h6, data:'h7}
//            V C S   S i m u l a t i o n   R e p o r t 
