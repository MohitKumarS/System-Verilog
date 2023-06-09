module q_arr;
  int a[$],b[$];
  int temp,i,a_size;
  
  initial begin
    a = {10,20,30};
    b = {100,200,300};
    
    
    $display("Queue A is: ,");
    $display("\t A = %p",a);
    
    $display("Queue B is: ,");
    $display("\t B = %p",b);
    
    a_size = a.size();
    
    for(i=0;i<=a.size+1;i++)begin
      temp = a.pop_back();
      b.push_front(temp);
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
// 	 Queue B = '{10, 20, 30, 100, 200, 300}
