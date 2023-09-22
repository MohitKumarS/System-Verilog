class adder_tx;
  rand int a;
  rand int b;
  rand int c;
  
  constraint range {a inside{[100:200]} ; b inside {[300:400]}; c inside {[500:600]};}
  function void print();
    $display("Printing Transaction :\n a = %0d \n b = %0d \n c = %0d",a,b,c);
  endfunction
endclass
