// BUFGCE: Global Clock Buffer with Clock Enable
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

BUFGCE BUFGCE_inst (
   .O(O),   // 1-bit output: Clock buffer output
   .CE(CE), // 1-bit input: Clock buffer select
   .I(I)    // 1-bit input: Clock buffer input (S=0)
);

// End of BUFGCE_inst instantiation
