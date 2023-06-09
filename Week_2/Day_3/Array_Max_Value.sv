module arr_max;
  int a[*];
  int max,i;
  
  initial begin
    for(i=0;i<=10;i++)begin
      a[i] = $urandom_range(100,200);
      $display("a[%0d]=%0d",i,a[i]);
    end
    
    for(i=0;i<=10;i++)begin
      if(a[i]>max)
        max = a[i];
    end
    $display("The Maximum Value = %0d",max);
    
  end
endmodule

// Output

// a[0]=103
// a[1]=141
// a[2]=181
// a[3]=100
// a[4]=200
// a[5]=130
// a[6]=173
// a[7]=119
// a[8]=152
// a[9]=160
// a[10]=112
// The Maximum Value = 200
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 11:14:50 2023
