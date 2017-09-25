// IBUFG: Single-ended global clock input buffer
//        Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

IBUFG #(
   .IOSTANDARD("DEFAULT")  // Specify the input I/O standard
) IBUFG_inst (
   .O(O), // Clock buffer output
   .I(I)  // Clock buffer input (connect directly to top-level port)
);

// End of IBUFG_inst instantiation
