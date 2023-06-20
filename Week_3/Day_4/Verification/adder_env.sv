class adder_env;
  //1. Declare and create the object of gen,bfm,mon
  adder_gen gen = new();
  adder_bfm bfm = new();
  //adder_mon mon = new();
  
  task run();
    $display("I'm inside adder_env");
    //2. Call the run() of all above components in fork join
    fork
      gen.run();
      $display("+++++++++++++++++++++++");
      bfm.run();
      $display("+++++++++++++++++++++++");
      //mon.run();
      //$display("+++++++++++++++++++++++");
    join
  endtask
endclass
