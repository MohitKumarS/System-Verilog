class packet;
  bit[31:0] addr;
  bit[31:0] data;
  // function declaration - extern indicates out-of-body declaration
  extern virtual function void display();
endclass  
  // function implementation outside the class body  
  function void packet::display();
    $display("Addr = %0d Data = %0d",addr,data);
  endfunction

module extern_method;
  initial begin
    packet p = new();
    p.addr = 10;
    p.data = 20;
    p.display();
  end
endmodule
    
// Output
    
//     Addr = 10 Data = 20
//            V C S   S i m u l a t i o n   R e p o r t 
