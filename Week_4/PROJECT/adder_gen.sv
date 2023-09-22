class adder_gen;
  adder_tx tx;
  task run();
    $display("I'm in adder_gen");
    
    repeat(3) begin
      tx = new();
      $display("-------------Generated tx--------------");
      tx.randomize();
      tx.print();
      common::gen2bfm.put(tx);
      $display("---------------------------------------");
    end
  endtask
endclass
