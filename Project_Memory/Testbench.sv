
`include "mem_common.sv"
`include "mem_tx.sv"

`include "mem_intf.sv"

`include "mem_bfm.sv"
`include "mem_gen.sv"
`include "mem_agent.sv"
`include "mem_env.sv"
`include "mem_tb.sv"
module top;
  
  reg clk,rst;
  
    mem_common dummy_obj = new();

  mem_intf pif(clk,rst);
    
  initial begin
  	clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    mem_common::vif=pif;
  	rst=1;
    #10;
    rst=0;
    	wait (mem_common::total_gen_tx == mem_common::total_drive_tx);
    #4000;
    $finish;
  end
  
  memory dut(.clk(pif.clk),
             .rst(pif.rst),
             .addr(pif.addr),
             .wdata(pif.wdata),
             .rdata(pif.rdata),
             .wr_rd(pif.wr_rd),
             .valid(pif.valid),
             .ready(pif.ready));
  
  initial begin
    $dumpfile("test.vcd");
    $dumpvars();
  end
  
 mem_tb tb();
  
endmodule
