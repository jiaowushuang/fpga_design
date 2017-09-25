// MULT_MACRO: Multiply Function implemented in a DSP48E
//             Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

MULT_MACRO #(
   .DEVICE("SPARTAN6"), // Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6"
   .LATENCY(3),        // Desired clock cycle latency, 0-4
   .WIDTH_A(18),       // Multiplier A-input bus width, 1-18
   .WIDTH_B(18)        // Multiplier B-input bus width, 1-18
) MULT_MACRO_inst (
   .P(P),     // Multiplier output bus, width determined by WIDTH_P parameter 
   .A(A),     // Multiplier input A bus, width determined by WIDTH_A parameter 
   .B(B),     // Multiplier input B bus, width determined by WIDTH_B parameter 
   .CE(CE),   // 1-bit active high input clock enable
   .CLK(CLK), // 1-bit positive edge clock input
   .RST(RST)  // 1-bit input active high reset
);

// End of MULT_MACRO_inst instantiation
