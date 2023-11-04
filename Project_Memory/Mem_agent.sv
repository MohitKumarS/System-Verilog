class mem_agent;
mem_bfm bfm;
mem_gen gen;
function new();
	//bfm = new(vif);
	//gen = new();
  	bfm = new();
	gen = new();
endfunction

task run();
fork
	bfm.run(); //this process is forever running, hence this fork join will never exit
	gen.run();
join
endtask
endclass
