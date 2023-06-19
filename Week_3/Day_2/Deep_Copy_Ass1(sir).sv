
class studnet;
  int rn;
  function new();
    rn=1;
  endfunction
  
  function student copy;
    copy=new();
    copy.rn=this.rn;
    return copy;
  endfunction
endclass

class college; 
  int code;
  student st;
  
  function new();
    code=100;
    st=new();
  endfunction
  
  function void display();
    $display (" class:college code=%0d",code);
    $display (" class:college rn=%0d",st.rn);
  endfunction
  
  function college copy;
    copy=new();
    copy.code=this.code;
    copy.st=st.copy// calling copy function of st
    return copy
  endfunction
  
endclass

module deep_copy;
  college c1,c2;
  initial begin
    c1=new(); //creating c1 object
    $display ("*** calling c1 display ***");
    c1.display();
    
    c2=c1.copy;// calling copy method
    // changing values with c2 handle
    $display ("*** calling c2 display ***");
    c2.display();
    
    //changing values with c2 handle
    c2.code=200;
    c2.st.rn=2;
    $display ("*** calling c1 display after changing c2 property ***");
    c1.display();
    //changes made to c2.code and c2.st properties are not reflected on c1.code and c1.st, so new location is assigned to c2. this is deep copy
    
    $display ("*** calling c2 display after changing c2 property ***");
    c2.display();
  end 
endmodule
