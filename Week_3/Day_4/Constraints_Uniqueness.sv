//  

class unique_elements;
  rand bit [3:0] var_1,var_2,var_3;
  rand bit [7:0] array[6];
  constraint varis_c {unique{var_1,var_2,var_3};}
  constraint array_c {unique{array};}
  
  function void display();
    $display("Var_1 = %p",var_1);
    $display("Var_2 = %p",var_2);
    $display("Var_3 = %p",var_3);
    $display("array = %p",array);
  endfunction
endclass

module ique_elements_randomizaion;
  unique_elements pkt;
  initial begin
    pkt = new();
    repeat(2) begin
      pkt.randomize();
      pkt.display();
    end
  end
endmodule

// Output

// Var_1 = 14
// Var_2 =  2
// Var_3 =  5
// array = '{'hb3, 'h41, 'hfa, 'h42, 'h69, 'h87} 
// Var_1 =  1
// Var_2 = 11
// Var_3 = 13
// array = '{'hd8, 'h80, 'hbd, 'h6, 'h6e, 'h14} 
//            V C S   S i m u l a t i o n   R e p o r t 
