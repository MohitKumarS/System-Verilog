module wait_fork;
  
  initial begin
    $display("---------------------");
    
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
    join_any;
    
    $display("--------------------------");
    $finish;//calling finish to end the simulation  
  end  
endmodule

// Output

// ---------------------
//                    0	Process-1 Started
//                    0	Process-2 Started
//                    5	Process-1 Finished
// --------------------------
// $finish called from file "testbench.sv", line 22.
// $finish at simulation time                    5
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 5 ns
// CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
// Mon Jun 19 00:17:24 2023
