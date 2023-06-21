// Semaphore Example 2 (Multiple Key)

module semaphore_ex;
  semaphore sema; // declaring semaphore sema
  initial begin
    sema = new(4); // creating sema with '4' keys
    fork
      display(1);
      display(2);
    join
  end
  
  //display method
  task automatic display(int a);
    $display($time," : Process - %0d : Searching for key",a);
    sema.get(3); // geting '2' keys from sema
    $display($time," : Process - %0d Started",a);
    #10;
    sema.put(2); // putting '2' keys to sema
    #20;
    $display($time," : Process - %0d Ended",a);
    sema.put(1); // putting '1' key to sema
  endtask
endmodule

// Output

//                    0 : Process - 1 : Searching for key
//                    0 : Process - 1 Started
//                    0 : Process - 2 : Searching for key
//                   10 : Process - 2 Started
//                   30 : Process - 1 Ended
//                   40 : Process - 2 Ended
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 40 ns

//  *********R E F E R  N O T E S  F O R  C L A R I T Y***********
