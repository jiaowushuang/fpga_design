// IOBUFDS: Differential Bi-directional Buffer
//          Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IOBUFDS #(
   .IOSTANDARD("BLVDS_25")    // Specify the I/O standard
) IOBUFDS_inst (
   .O(O),     // Buffer output
   .IO(IO),   // Diff_p inout (connect directly to top-level port)
   .IOB(IOB), // Diff_n inout (connect directly to top-level port)
   .I(I),     // Buffer input
   .T(T)      // 3-state enable input, high=input, low=output
);
  
// End of IOBUFDS_inst instantiation
