// LUT2: 2-input Look-Up Table with general output
//       Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT2 #(
   .INIT(4'h0)  // Specify LUT Contents
) LUT2_inst (
   .O(O),   // LUT general output
   .I0(I0), // LUT input
   .I1(I1)  // LUT input
);

// End of LUT2_inst instantiation
