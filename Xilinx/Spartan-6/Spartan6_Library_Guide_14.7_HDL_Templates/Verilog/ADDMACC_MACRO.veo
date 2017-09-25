// ADDMACC_MACRO: Variable width & latency - Pre-Add -> Multiplier -> Accumulate
//                function implemented in a DSP48E
//                Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

ADDMACC_MACRO #(
   .DEVICE("SPARTAN6"),   // Target Device: "VIRTEX6", "SPARTAN6"
   .LATENCY(4),           // Desired clock cycle latency, 0-4
   .WIDTH_PREADD(18),     // Pre-adder input width, 1-18
   .WIDTH_MULTIPLIER(18), // Multiplier input width, 1-18
   .WIDTH_PRODUCT(48)     // MACC output width, 1-48
) ADDMACC_MACRO_inst (
   .PRODUCT(PRODUCT),   // MACC result output, width defined by WIDTH_PRODUCT parameter
   .CARRYIN(CARRYIN),   // 1-bit carry-in input
   .CLK(CLK),           // 1-bit clock input
   .CE(CE),             // 1-bit clock enable input
   .LOAD(LOAD),         // 1-bit accumulator load input
   .LOAD_DATA(LOAD_DATA),   // Accumulator load data input, width defined by WIDTH_PRODUCT parameter
   .MULTIPLIER(MULTIPLIER), // Multiplier data input, width defined by WIDTH_MULTIPLIER parameter
   .PREADD2(PREADD2),   // Preadder data input, width defined by WIDTH_PREADD parameter
   .PREADD1(PREADD1),   // Preadder data input, width defined by WIDTH_PREADD parameter
   .RST(RST)            // 1-bit active high synchronous reset
);

// End of ADDMACC_MACRO_inst instantiation
