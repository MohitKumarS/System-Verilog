class mem_gen;
  int gen_num;
mem_tx tx,temp_tx;
  mem_tx txQ[$];
  
  task run();
    for(int i=0;i<`NUM_TX;i++)begin
    	tx=new();
   		tx.randomize() with {wr_rd==1;};
      mem_common::mbox.put(tx);
      txQ.push_back(tx);
      //$display("//////gen////");
      //tx.print();
    end
    for(int i=0;i<`NUM_TX;i++)begin
      tx=new();
      temp_tx=txQ.pop_front();
      tx.randomize() with {wr_rd==0; addr==temp_tx.addr;};
     
      mem_common::mbox.put(tx);
    end
  endtask
endclass
