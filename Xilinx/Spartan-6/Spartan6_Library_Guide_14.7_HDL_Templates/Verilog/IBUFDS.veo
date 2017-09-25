// IBUFDS: Differential Input Buffer
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IBUFDS #(
   .DIFF_TERM("FALSE"),   // Differential Termination
   .IOSTANDARD("DEFAULT") // Specify the input I/O standard
) IBUFDS_inst (
   .O(O),  // Buffer output
   .I(I),  // Diff_p buffer input (connect directly to top-level port)
   .IB(IB) // Diff_n buffer input (connect directly to top-level port)
);

// End of IBUFDS_inst instantiation
