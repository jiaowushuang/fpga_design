// IBUFGDS: Differential Global Clock Input Buffer
//          Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IBUFGDS #(
   .DIFF_TERM("FALSE"),    // Differential Termination
   .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
) IBUFGDS_inst (
   .O(O),  // Clock buffer output
   .I(I),  // Diff_p clock buffer input (connect directly to top-level port)
   .IB(IB) // Diff_n clock buffer input (connect directly to top-level port)
);

// End of IBUFGDS_inst instantiation
