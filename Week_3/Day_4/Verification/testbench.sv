

//`include "adder_intf.sv"

`include "common.sv"

`include "adder_tx.sv"

`include "adder_gen.sv"

`include "adder_bfm.sv"

`include "adder_env.sv"

`include "top.sv"

// Output

// I'm inside adder_env
// I'm in adder_gen
// +++++++++++++++++++++++
// I'm in adder_bfm
// +++++++++++++++++++++++
// $finish called from file "top.sv", line 36.
// $finish at simulation time                  115
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 115 ns
// CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
// Sat Jun 17 07:54:44 2023
