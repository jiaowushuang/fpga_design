// LUT2_L: 2-input Look-Up Table with local output
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT2_L #(
   .INIT(4'h0)  // Specify LUT Contents
) LUT2_L_inst (
   .LO(LO), // LUT local output
   .I0(I0), // LUT input
   .I1(I1)  // LUT input
);

// End of LUT2_L_inst instantiation
