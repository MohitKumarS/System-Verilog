interface mem_intf(input bit clk, rst);
bit [`ADDR_WIDTH-1:0] addr; //BFM? o/p, DUT? i/p, monitor? i/p
bit [`WIDTH-1:0] wdata; //BFM? o/p, DUT? i/p, monitor? i/p
bit [`WIDTH-1:0] rdata; //BFM? i/p, DUT? o/p, monitor? i/p
bit wr_rd, valid; //BFM? o/p, DUT? i/p, monitor? i/p
bit ready;

  

/*clocking bfm_cb@(posedge clk);
default input #1 output #3; //input and output skews
	
input rst;
output #1 addr;
output #2 wdata;
input rdata;
output #3 valid, wr_rd;
input ready;
endclocking

clocking mon_cb@(posedge clk);
default input #1; //input and output skews
input rst;
input addr;
input wdata;
input rdata;
input wr_rd, valid;
input ready;
endclocking

clocking slave_cb@(posedge clk);
default input #1 output #3; //input and output skews
input rst;
input #3 addr;
input #2 wdata;
output rdata;
input #3 valid, wr_rd;
output ready;
endclocking

modport bfm_mp(clocking bfm_cb);
modport mon_mp(clocking mon_cb);
modport slave_mp(clocking slave_cb);

task drive_tx(mem_tx tx);
	@(bfm_cb); //@(posedge vif.clk);
	bfm_cb.addr <= tx.addr;
	if (tx.wr_rd == 1) bfm_cb.wdata <= tx.data;
	if (tx.wr_rd == 1) bfm_cb.wr_rd <= 1;
	if (tx.wr_rd == 0) bfm_cb.wr_rd <= 0;
	bfm_cb.valid <= 1; //I want to do a valid tx(it can be write or it can be read)
	wait (bfm_cb.ready == 1);
	@(bfm_cb);
	bfm_cb.wr_rd <= 0;
	bfm_cb.valid <= 0;
	bfm_cb.addr <= 0;
	bfm_cb.wdata <= 0;
endtask

//we can also code functions, assertions inside interface

//always @(wr_en) begin
//end*/
endinterface
