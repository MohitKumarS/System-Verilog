class adder_bfm;
  adder_tx tx;
  virtual adder_intf vif;
  task run();
    vif = common::vif;
    wait(vif.rst==0);
    forever begin
      @(posedge vif.clk)
      repeat(3) begin
        common::gen2bfm.get(tx);
        $display("----------Recieved tx at bfm----------");
        tx.print();
        $display("--------------------------------------");
      end
    end
  endtask
endclass
