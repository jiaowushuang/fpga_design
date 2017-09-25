// OBUFTDS: Differential 3-state Output Buffer
//          Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

OBUFTDS #(
   .IOSTANDARD("DEFAULT") // Specify the output I/O standard
) OBUFTDS_inst (
   .O(O),     // Diff_p output (connect directly to top-level port)
   .OB(OB),   // Diff_n output (connect directly to top-level port)
   .I(I),     // Buffer input
   .T(T)      // 3-state enable input
);
  
// End of OBUFTDS_inst instantiation
