module queue_1;
  int q[$];
  int a,b;
   initial begin
     repeat(10) begin
       a = $urandom_range(10,30);
       q.push_back(a);
     end
     
     repeat(q.size()) begin
       b = q.pop_front();
       $display(b);
     end
   end
endmodule

// Output

//          12
//          27
//          26
//          16
//          26
//          18
//          26
//          16
//          13
//          18
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
// Tue Jun  6 10:44:40 2023
