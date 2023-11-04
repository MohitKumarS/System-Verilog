class mem_bfm;
int bfm_num;
mem_tx tx;
virtual mem_intf vif; //Since drive_tx is done by Interface, we don't need clocking block here

task run();
 vif= mem_common::vif ;
wait (vif.rst == 0); //wait for reset to be released
forever begin
	mem_common::mbox.get(tx);
  
		drive_tx(tx);
  		tx.print();
		mem_common::total_drive_tx++;

end
  endtask
  task drive_tx(mem_tx tx);
    @(posedge vif.clk);
	vif.addr <= tx.addr;
	if (tx.wr_rd == 1) vif.wdata <= tx.data;
	if (tx.wr_rd == 1) vif.wr_rd <= 1;
	if (tx.wr_rd == 0) vif.wr_rd <= 0;
	vif.valid <= 1; //I want to do a valid tx(it can be write or it can be read)
	wait (vif.ready == 1);
    @(posedge vif.clk);
	vif.wr_rd <= 0;
	vif.valid <= 0;
	vif.addr <= 0;
	vif.wdata <= 0;
endtask
	
 

endclass
