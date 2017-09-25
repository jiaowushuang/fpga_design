// OBUFDS: Differential Output Buffer
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

OBUFDS #(
   .IOSTANDARD("DEFAULT") // Specify the output I/O standard
) OBUFDS_inst (
   .O(O),     // Diff_p output (connect directly to top-level port)
   .OB(OB),   // Diff_n output (connect directly to top-level port)
   .I(I)      // Buffer input 
);
  
// End of OBUFDS_inst instantiation
