// LUT2_D: 2-input Look-Up Table with general and local outputs
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT2_D #(
   .INIT(4'h0)  // Specify LUT Contents
) LUT2_D_inst (
   .LO(LO), // LUT local output
   .O(O),   // LUT general output
   .I0(I0), // LUT input
   .I1(I1)  // LUT input
);

// End of LUT2_L_inst instantiation
