`include "p.sv"
`include "c.sv"
module top;
  //parent p=new();
  child pkt1;
  child pkt2;
  initial begin
    pkt1=new();
    pkt2=new();
    $display("\t#######displatyng pkt 1###############");
    pkt1.print();
    $display("\t#######displaying pkt 2###############");
    pkt1.print();
    pkt2=pkt1.copy();
    pkt2.print();

    
    pkt2.data3=3225;
    pkt1.p.data1=500;
    pkt1.p.data2=1000;
    $display("\t#######displaying pkt 1 after change in pkt 2###############");
    pkt1.print();
    $display("\t#######displaying pkt 2 after change in pkt 2###############");
    pkt2.print();
    
    
    /*pkt2.data3=1500;
    pkt2.data4=2000;
    $display("\t#######displaying pkt 1 after change in pkt 1###############");
    pkt1.print();
    $display("\t#######displaying pkt 2 after change in pkt 1###############");
    pkt2.print();
*/  end
endmodule

// Output

// 	#######displatyng pkt 1###############
// data3=        100
// data4=        200
// parent pskt='{data1:50, data2:70}
// 	#######displaying pkt 2###############
// data3=        100
// data4=        200
// parent pskt='{data1:50, data2:70}
// data3=        100
// data4=        200
// parent pskt='{data1:50, data2:70}
// 	#######displaying pkt 1 after change in pkt 2###############
// data3=        100
// data4=        200
// parent pskt='{data1:500, data2:1000}
// 	#######displaying pkt 2 after change in pkt 2###############
// data3=       3225
// data4=        200
// parent pskt='{data1:50, data2:70}
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
// Sat Jun 10 11:20:31 2023
