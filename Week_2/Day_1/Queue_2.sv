module top;
  int q[$];
  integer i,a,x;
  
  //push back
  initial begin
    for(i=0;i<10;i++)begin
      x = $urandom_range(20,30);
      q.push_front(x);
    end
    $display("q = %0p",q);
    
    //insert operation
    q.insert(0,10);
    $display("q = %p",q);
    
    //size operation
    a = q.size();
    $display("a = %0d",a);
    
    //reverse operation
    q.reverse();
    $display("q = %0p",q);
    
    //sort operation descending order
    q.rsort();
    $display("q = %0p",q);
    
    //sort operation ascending order
    q.sort();
    $display("q = %0p",q);
    
    //delete operation
    q.delete(3);
    $display("q = %0p",q);
    end
endmodule

// Output

// q = '{29, 28, 29, 29, 20, 25, 24, 27, 26, 26} 
// q = '{10, 29, 28, 29, 29, 20, 25, 24, 27, 26, 26} 
// a = 11
// q = '{26, 26, 27, 24, 25, 20, 29, 29, 28, 29, 10} 
// q = '{29, 29, 29, 28, 27, 26, 26, 25, 24, 20, 10} 
// q = '{10, 20, 24, 25, 26, 26, 27, 28, 29, 29, 29} 
// q = '{10, 20, 24, 26, 26, 27, 28, 29, 29, 29} 
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
// Tue Jun  6 10:46:36 2023
