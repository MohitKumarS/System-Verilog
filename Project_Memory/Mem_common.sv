`define WIDTH   32
`define ADDR_WIDTH 8
`define NUM_AGENT 3
`define NUM_TX 10
class mem_common;
  static mailbox mbox = new();///[`NUM_AGENT-1:0]; // = new();
static virtual mem_intf vif;
static semaphore smp = new(1);
static int total_gen_tx;
static int total_drive_tx=0;

/*function new();
	foreach (mbox[i]) begin
		mbox[i] = new();
	end
	total_gen_tx = 2*`NUM_AGENT*`NUM_TX;
endfunction*/
endclass
