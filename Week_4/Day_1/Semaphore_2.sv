// Semaphore With Single Key

module semaphore_ex;
  semaphore sema; //declaring semaphore sema
  
  initial begin
    sema=new(1); //creating sema with '1' key
    fork
      display(1); //process-1
      display(2); //process-2
    join
  end
  
  //display method
  task  display(int a);
    $display($time, " : process - %0d: Searching for key", a);
    sema.get(); //getting '1' key from sema
    $display($time, " : process - %0d started", a);
    #30;
    $display($time, " : process - %0d ended", a);
    #1
    sema.put(); //putting '1' key to sema
  endtask
endmodule

// Output




