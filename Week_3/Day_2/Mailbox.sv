module mailbox_example();
  mailbox mb = new();
  int value;
  initial
      begin
        for(int i =0 ;i<10;i++)begin
          value = $urandom_range(1, 50);
          mb.put(value);
          $display("%t Put %0d data = %0d",$time,i, value);
     
          mb.get(value);
          $display("%t Retrieved %0d data = %0d",$time,i, value);
        end
      end
endmodule

// Output

//                    0 Put 0 data = 39
//                    0 Retrieved 0 data = 39
//                    0 Put 1 data = 11
//                    0 Retrieved 1 data = 11
//                    0 Put 2 data = 24
//                    0 Retrieved 2 data = 24
//                    0 Put 3 data = 21
//                    0 Retrieved 3 data = 21
//                    0 Put 4 data = 8
//                    0 Retrieved 4 data = 8
//                    0 Put 5 data = 2
//                    0 Retrieved 5 data = 2
//                    0 Put 6 data = 47
//                    0 Retrieved 6 data = 47
//                    0 Put 7 data = 4
//                    0 Retrieved 7 data = 4
//                    0 Put 8 data = 23
//                    0 Retrieved 8 data = 23
//                    0 Put 9 data = 8
//                    0 Retrieved 9 data = 8
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
// Wed Jun 14 07:01:36 2023
