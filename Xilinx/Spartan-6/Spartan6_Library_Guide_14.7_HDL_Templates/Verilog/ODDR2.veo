// ODDR2: Output Double Data Rate Output Register with Set, Reset
//        and Clock Enable.
//        Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

ODDR2 #(
   .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1"
   .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
   .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
) ODDR2_inst (
   .Q(Q),   // 1-bit DDR output data
   .C0(C0),   // 1-bit clock input
   .C1(C1),   // 1-bit clock input
   .CE(CE), // 1-bit clock enable input
   .D0(D0), // 1-bit data input (associated with C0)
   .D1(D1), // 1-bit data input (associated with C1)
   .R(R),   // 1-bit reset input
   .S(S)    // 1-bit set input
);

// End of ODDR2_inst instantiation
