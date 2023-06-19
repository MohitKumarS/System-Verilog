// Deep Copy Question

class student;
  int roll_no;
  
  function new();
    roll_no = 08;
  endfunction
  
  function student copy;
    copy = new();
    copy.roll_no = this.roll_no;
    return copy;
  endfunction

endclass

class college;
  int code;
  student s;
  
  function new();
    code = 92;
    s = new();
  endfunction
  
  function void display();
    $display("College code = %0d",code);
    $display("Student roll_no = %0d",s.roll_no);
  endfunction
  
  function college copy;
    copy = new();
    copy.code = this.code;
    copy.s = s.copy;
    return copy;
  endfunction

endclass

module deep_copy;
  college c1,c2;
  initial begin
    c1 = new();
    $display(".....Calling C1 Display.....");
    c1.display();
    c2 = c1.copy;
    $display(".....Calling C2 Display.....");
    c2.display();
    
    c2.code = 22;
    c2.s.roll_no = 12;
    $display(".....Calling C1 Display After Changing C1 Property.....");
    c1.display();
    
    $display(".....Calling C2 Display After Changing C2 Property.....");
    c2.display();
  end
endmodule

// Output

// .....Calling C1 Display.....
// College code = 92
// Student roll_no = 8
// .....Calling C2 Display.....
// College code = 92
// Student roll_no = 8
// .....Calling C1 Display After Changing C1 Property.....
// College code = 92
// Student roll_no = 8
// .....Calling C2 Display After Changing C2 Property.....
// College code = 22
// Student roll_no = 12
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
// Wed Jun 14 01:31:48 2023
