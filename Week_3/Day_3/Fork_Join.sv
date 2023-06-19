module fork_join;
  
  initial begin
    $display("-------------------------");
    
    fork
      //Process-1
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
      //Process-2
      begin
        $display($time,"\tProcess-2 Started");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join
    
    $display($time,"\tOutside Fork-Join");
    $display("---------------------------");
    $finish;
  end  
endmodule

// Output

// -------------------------
//                    0	Process-1 Started
//                    0	Process-2 Started
//                    5	Process-1 Finished
//                   20	Process-2 Finished
//                   20	Outside Fork-Join
// ---------------------------
// $finish called from file "testbench.sv", line 23.
// $finish at simulation time                   20
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 20 ns
// CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
// Mon Jun 19 00:13:22 2023
