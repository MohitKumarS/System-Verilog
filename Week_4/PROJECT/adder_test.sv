class adder_test;
  adder_env env = new();

  task run();
    $display("I'm Inside adder_test");
    $display("+++++++++++++++++++++++");
  	env.run();
    $display("+++++++++++++++++++++++");
  endtask
    
endclass
  
  
