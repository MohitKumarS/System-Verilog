module top;
  //1. declare clk and reset, env
  bit clk, rst;
  adder_intf pif_intf(clk,rst);
  adder_test test;
  
  //2. instantuiiate the physical interface
  
  //3. instantiate dut
  
  //4. clock and reset generation
  initial begin
    clk=0;
    forever begin
      #5;
      clk=~clk;
    end
  end
  
  initial begin
    rst=1;
    repeat (2) @(posedge clk); 
    rst=0;
    
    //5. assign physical interface to virtual interface
    common::vif = pif_intf;  // since vif is static hence need to use scope resolution operator (::) to access it
    
    
    //6. create object of env
    test=new();
    
    //7. call run task of env
    test.run();
    
    #100;
    $finish();
  end
 
  
endmodule
