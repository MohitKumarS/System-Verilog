program mem_tb();
mem_env env; //class or module or program? env? object
initial begin
  env = new(); //create the object
	env.run(); //start the functionality of the enviornemnt
		//run is just because we started running env funcitonality
end
endprogram
