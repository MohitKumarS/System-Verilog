module stringg;
  string A,B;
  initial begin
    A = "Silicon";
    B = "Institute";
    $display("A to Lowercase = %s",A.tolower);
    $display("B to Uppercase = %s",B.toupper);
    $display("A compare to B = %d",A.compare(B));
    $display("B substring = %s",B.substr(6,8));
  end
endmodule

// Output

// A to Lowercase = silicon
// B to Uppercase = INSTITUTE
// A compare to B =          10
// B substring = ute
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 10:41:35 2023
