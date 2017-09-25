// MACC_MACRO: Multiply Accumulate Function implemented in a DSP48E
//             Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

MACC_MACRO #(
   .DEVICE("SPARTAN6"), // Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6"
   .LATENCY(3),        // Desired clock cycle latency, 1-4
   .WIDTH_A(18),       // Multiplier A-input bus width, 1-18
   .WIDTH_B(18),       // Multiplier B-input bus width, 1-18
   .WIDTH_P(48)        // Accumulator output bus width, 1-48
) MACC_MACRO_inst (
   .P(P),     // MACC output bus, width determined by WIDTH_P parameter 
   .A(A),     // MACC input A bus, width determined by WIDTH_A parameter 
   .ADDSUB(ADDSUB), // 1-bit add/sub input, high selects add, low selects subtract
   .B(B),     // MACC input B bus, width determined by WIDTH_B parameter 
   .CARRYIN(CARRYIN), // 1-bit carry-in input to accumulator
   .CE(CE),     // 1-bit active high input clock enable
   .CLK(CLK),   // 1-bit positive edge clock input
   .LOAD(LOAD), // 1-bit active high input load accumulator enable
   .LOAD_DATA(LOAD_DATA), // Load accumulator input data, width determined by WIDTH_P parameter
   .RST(RST)    // 1-bit input active high reset
);

// End of MACC_MACRO_inst instantiation
