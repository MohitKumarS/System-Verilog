// Semaphore Example 1

module semaphore_ex;
  initial begin
    fork
      display(1);
      display(2);
    join
  end
  
  //display method
  task display(int a);
    $display($time,": Process- %0d Started",a);
    #30;
    $display($time,": Process- %0d Ended",a);
  endtask
endmodule

// Output

//                    0: Process- 1 Started
//                    0: Process- 2 Started
//                   30: Process- 2 Ended
//                   30: Process- 2 Ended
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 30 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Wed Jun 21 01:10:14 2023
