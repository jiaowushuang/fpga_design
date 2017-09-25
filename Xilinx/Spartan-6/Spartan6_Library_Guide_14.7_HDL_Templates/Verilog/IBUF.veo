// IBUF: Single-ended Input Buffer
//       Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IBUF #(
  .IOSTANDARD("DEFAULT")    // Specify the input I/O standard
)IBUF_inst (
   .O(O),     // Buffer output
   .I(I)      // Buffer input (connect directly to top-level port)
);
  
// End of IBUF_inst instantiation
