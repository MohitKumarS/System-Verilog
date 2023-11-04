class mem_tx;
 rand bit[`ADDR_WIDTH-1:0]addr;
  rand bit[`WIDTH-1:0]data;
 rand bit wr_rd;
  
  function void print();
    $display("/////tx//////");
    $display("address=%0d",addr);
    $display("data=%0d",data);
    $display("wr_rd=%0d",wr_rd);

  endfunction
  
  function void copy(output mem_tx tx);
    tx= new this;
  endfunction
endclass
