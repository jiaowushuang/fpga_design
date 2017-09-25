// LUT5_L: 5-input Look-Up Table with local output
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT5_L #(
   .INIT(32'h0000000)  // Specify LUT Contents
) LUT5_L_inst (
   .LO(LO), // LUT local output
   .I0(I0), // LUT input
   .I1(I1), // LUT input
   .I2(I2), // LUT input
   .I3(I3), // LUT input
   .I4(I4)  // LUT input
);

// End of LUT5_L_inst instantiation
