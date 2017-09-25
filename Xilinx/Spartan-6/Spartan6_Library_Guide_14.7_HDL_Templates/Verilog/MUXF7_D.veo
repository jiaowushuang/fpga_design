// MUXF7_D: CLB MUX to tie two LUT6's together with general and local outputs
//          Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

MUXF7_D MUXF7_D_inst (
   .LO(LO),  // Output of MUX to local routing
   .O(O),    // Output of MUX to general routing
   .I0(I0),  // Input (tie to LUT6 O6 pin)
   .I1(I1),  // Input (tie to LUT6 O6 pin)
   .S(S)     // Input select to MUX
);

// End of MUXF7_D_inst instantiation
