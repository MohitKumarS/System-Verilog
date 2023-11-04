// Code your design here
module memory(clk,rst,addr,wdata,rdata,wr_rd,valid,ready);
  parameter ADDR_WIDTH=8;
  parameter WIDTH=32;
  parameter DEPTH=256;

  
  
	input clk,rst;
  input wire[ADDR_WIDTH-1:0]addr;
  input wire [WIDTH-1:0]wdata;
  output reg [WIDTH-1:0]rdata;
  input wire wr_rd,valid;
  output reg ready;
  
  reg [WIDTH-1:0]mem[DEPTH-1:0];
  
  integer i;
  
  always@(posedge clk)begin
    if(rst)begin
      rdata=0;
      for(i=0;i<DEPTH;i++)begin
        mem[i]=0;
      end
    end
    else begin
      if(valid==1)begin
        ready=1;
        if(wr_rd==1)begin
      	    mem[addr]=wdata;
      	end
        if(wr_rd==0)begin
      	  rdata=mem[addr];
      	end
      end
      else ready=0;
    end
  end
endmodule
