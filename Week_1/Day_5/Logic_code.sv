// Code your testbench here
// or browse Examples
module logic_code;
  logic y1,y2;
  initial
    begin
      $display($time,"Value of y1 is %0d",y1,y2);
      y1 = 1'b1; //We need to declare y1 as reg then only it'll work
      #1; $display($time,"Value of y1 is %0d y2 is %0d",y1,y2);
    end
  assign y2 = 1'b1; // Default y2 as wire
endmodule:logic_code


// Output

//                    0Value of y1 is x1
//                    1Value of y1 is 1 y2 is 1
//            V C S   S i m u l a t i o n   R e p o r t 
