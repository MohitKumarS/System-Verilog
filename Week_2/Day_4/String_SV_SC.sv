module str;
  string A;
  string B;
  string C;
  int D;
  
  initial begin
    A = "TEST";
    C = "TEST";
    B = "BENCH";
    $display("A length = %d",A.len());
    $display("A Getchar 3 = %s",A.getc(3));
    $display("A to Lowercase = %s",A.tolower);
    $display("B to Uppercase = %s",B.toupper);
    $display("C compare to A = %d",C.compare(A));
    $display("A compare = %d",A.compare("tEST"));
    $display("A substring = %s",A.substr(1,3));
    A = "111";
    $display(" = %d",A.atoi());
    D = A.atoi();
    $display(" = %d ",D );
    
//    B={B, {A.substr(1,3)}};
//    $display("after joining  %s ",B);    

  end
endmodule

// Output

// A length =           4
// A Getchar 3 = T
// A to Lowercase = test
// B to Uppercase = BENCH
// C compare to A =           0
// A compare =         -32
// A substring = EST
//  =         111
//  =         111 
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 10:39:27 2023
