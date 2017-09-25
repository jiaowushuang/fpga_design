// LUT1_L: 1-input Look-Up Table with local output
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT1_L #(
   .INIT(2'b00)  // Specify LUT Contents
) LUT1_L_inst (
   .LO(LO), // LUT local output
   .I0(I0)  // LUT input
);

// End of LUT1_L_inst instantiation
