module fork_join_none;
  initial begin
    $display("-----------------------------------------------------------------");
    fork
      //Process-1
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
      //Process-2
      begin
        $display($time,"\tProcess-2 Startedt");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join_none
 
    $display($time,"\tOutside Fork-Join_none");
    $display("-----------------------------------------------------------------");
  end
endmodule

// Output

// -----------------------------------------------------------------
//                    0	Outside Fork-Join_none
// -----------------------------------------------------------------
//                    0	Process-1 Started
//                    0	Process-2 Startedt
//                    5	Process-1 Finished
//                   20	Process-2 Finished
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 20 ns
