module top;
  int ass_arr[*];
  int index;
   initial begin
     for(int i=0;i<10;i++)begin
       index=$urandom % 100;
       ass_arr[index]=$urandom_range(100,200);
       $display("a[%0d]=%p",index,ass_arr[index]);
     end
     $display("a=%p",ass_arr);
   end
endmodule
     
// Output

// a[38]=        141
// a[73]=        100
// a[7]=        130
// a[96]=        119
// a[22]=        160
// a[81]=        183
// a[78]=        172
// a[57]=        175
// a[74]=        100
// a[32]=        101
// a='{0x7:130, 0x16:160, 0x20:101, 0x26:141, 0x39:175, 0x49:100, 0x4a:100, 0x4e:172, 0x51:183, 0x60:119} 
//            V C S   S i m u l a t i o n   R e p o r t 
