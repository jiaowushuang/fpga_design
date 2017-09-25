// OBUF: Single-ended Output Buffer
//       Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

OBUF #(
   .DRIVE(12),   // Specify the output drive strength
   .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
   .SLEW("SLOW") // Specify the output slew rate
) OBUF_inst (
   .O(O),     // Buffer output (connect directly to top-level port)
   .I(I)      // Buffer input 
);
  
// End of OBUF_inst instantiation
