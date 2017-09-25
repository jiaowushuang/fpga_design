// IBUFGDS_DIFF_OUT: Differential Global Clock Buffer with Differential Output
//                   Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IBUFGDS_DIFF_OUT #(
   .DIFF_TERM("FALSE"),   // Differential Termination, "TRUE"/"FALSE"
   .IOSTANDARD("DEFAULT") // Specify the input I/O standard
) IBUFGDS_DIFF_OUT_inst (
   .O(O),   // Buffer diff_p output
   .OB(OB), // Buffer diff_n output
   .I(I),   // Diff_p buffer input (connect directly to top-level port)
   .IB(IB)  // Diff_n buffer input (connect directly to top-level port)
);

// End of IBUFGDS_DIFF_OUT_inst instantiation
