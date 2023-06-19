// Write a class to have only single object of it (Singleton Class)

class single;
  static single s1; 
  
  protected function new();
    $display("First Object is Created.");
  endfunction
  
  static function single create();
    if (s1 == null)begin
      s1 = new();
    end
    else
      $display("ERROR : Object Already Created.");
    return s1;
  endfunction
endclass

module ton;
  single s2,s3,s4;
  initial begin
    s2 = s2.create();// 
    s3 = s3.create();
    s4 = single::create(); // Calling Through Scope Resolution
  end
endmodule

// Output

// First Object is Created.
// ERROR : Object Already Created.
// ERROR : Object Already Created.
//            V C S   S i m u l a t i o n   R e p o r t 
