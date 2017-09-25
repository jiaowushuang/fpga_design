// IOBUF: Single-ended Bi-directional Buffer
//        Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IOBUF #(
   .DRIVE(12), // Specify the output drive strength
   .IOSTANDARD("DEFAULT"), // Specify the I/O standard
   .SLEW("SLOW") // Specify the output slew rate
) IOBUF_inst (
   .O(O),     // Buffer output
   .IO(IO),   // Buffer inout port (connect directly to top-level port)
   .I(I),     // Buffer input
   .T(T)      // 3-state enable input, high=input, low=output
);
  
// End of IOBUF_inst instantiation
