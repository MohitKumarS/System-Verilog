module disable_fork;  
  initial begin
    $display("-----------------");

    fork
      //Process-1
      begin
        $display($time,"\tProcess-1 of fork-1 Started");
        #5;
        $display($time,"\tProcess-1 of fork-1 Finished");
      end
      //Process-2
      begin
        sub_process();
      end
    join_any  
    
    disable fork;
      
    $display("---------------------");
      $display($time,"\tAfter disable-fork");
    $display("--------------------");
  
  end
  
  //Sub-Process
  task sub_process;
    $display($time,"\tSub-Process Started");
    #10;
    $display($time,"\tSub-Process Finished");
  endtask      
endmodule

// Output
      

// -----------------
//                    0	Process-1 of fork-1 Started
//                    0	Sub-Process Started
//                    5	Process-1 of fork-1 Finished
// ---------------------
//                    5	After disable-fork
// --------------------
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 5 ns
// CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
// Mon Jun 19 00:18:10 2023
