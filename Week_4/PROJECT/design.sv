// Code your design here
module fulladd(input a,b,c,clk,rst,output reg sum,carry);
  always@(posedge clk)
  	if(rst)begin
  		sum = 0;
    	carry = 0;
  	end
  	else begin
  		sum= a^b^c;
  		carry= a&b|b&c|c&a;
      

  end
endmodule
