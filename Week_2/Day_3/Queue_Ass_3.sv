module q_arr;
  int a[$],b[$];
  int temp,i,j,a_size;
  
  initial begin
    a = {10,20,30};
    b = {100,200,300};
    
    
    $display("Queue A is: ,");
    $display("\t A = %p",a);
    
    $display("Queue B is: ,");
    $display("\t B = %p",b);
    
    a_size = a.size();
    
    for(i=0;i<a_size;i++)begin
      temp = a.pop_front();
      b.insert(2*i+1,temp);
    end
    $display("After insertion : ,");
    $display("\t Queue B = %p",b);
  end
endmodule

// Output

// Queue A is: ,
// 	 A = '{10, 20, 30} 
// Queue B is: ,
// 	 B = '{100, 200, 300} 
// After insertion : ,
// 	 Queue B = '{100, 10, 200, 20, 300, 30} 
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 11:28:38 2023
