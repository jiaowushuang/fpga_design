// OBUFT: Single-ended 3-state Output Buffer
//        Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

OBUFT #(
   .DRIVE(12),   // Specify the output drive strength
   .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
   .SLEW("SLOW") // Specify the output slew rate
) OBUFT_inst (
   .O(O),     // Buffer output (connect directly to top-level port)
   .I(I),     // Buffer input
   .T(T)      // 3-state enable input 
);
  
  // End of OBUFT_inst instantiation
