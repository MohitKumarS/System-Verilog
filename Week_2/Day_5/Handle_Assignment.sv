//-------------------------------------------------------------------------
//						www.verificationguide.com
//-------------------------------------------------------------------------
//-- class ---   
class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address  ;
  
  function new();
    start_address = 10;
    end_address   = 50;
  endfunction
endclass

//-- class ---    
class packet;
  
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  address_range ar; //class handle
  
  //constructor
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    ar = new(); //creating object
  endfunction
  
  //method to display class prperties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t start_address  = %0d",ar.start_address);
    $display("\t end_address  = %0d",ar.end_address);
    $display("---------------------------------------------------------");
  endfunction
  
endclass

// -- module ---
module class_assignment;
  packet pkt_1;
  packet pkt_2;

  initial begin
    
    pkt_1 = new();   //creating pkt_1 object
    $display("\t****  calling pkt_1 display  ****");
    pkt_1.display();
    
    pkt_2 = new pkt_1;   //creating pkt_2 object and copying pkt_1 to pkt_2
    $display("\t****  calling pkt_2 display  ****");
    pkt_2.display();
    
    //changing values with pkt_2 handle
    pkt_2.addr = 32'h68;
    pkt_2.ar.start_address = 60;
    pkt_2.ar.end_address = 80;
    $display("\t****  calling pkt_1 display after changing pkt_2 properties ****");
    //changes made to pkt_2.ar properties reflected on pkt_1.ar, so only handle of the object get copied, this is called shallow copy 
    pkt_1.display();
    $display("\t****  calling pkt_2 display after changing pkt_2 properties ****");
    pkt_2.display(); //
  end
  
endmodule

// Output

// 	****  calling pkt_1 display  ****
// ---------------------------------------------------------
// 	 addr  = 10
// 	 data  = ff
// 	 start_address  = 10
// 	 end_address  = 50
// ---------------------------------------------------------
// 	****  calling pkt_2 display  ****
// ---------------------------------------------------------
// 	 addr  = 10
// 	 data  = ff
// 	 start_address  = 10
// 	 end_address  = 50
// ---------------------------------------------------------
// 	****  calling pkt_1 display after changing pkt_2 properties ****
// ---------------------------------------------------------
// 	 addr  = 10
// 	 data  = ff
// 	 start_address  = 60
// 	 end_address  = 80
// ---------------------------------------------------------
// 	****  calling pkt_2 display after changing pkt_2 properties ****
// ---------------------------------------------------------
// 	 addr  = 68
// 	 data  = ff
// 	 start_address  = 60
// 	 end_address  = 80
// ---------------------------------------------------------
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
// Sat Jun 10 11:52:40 2023
