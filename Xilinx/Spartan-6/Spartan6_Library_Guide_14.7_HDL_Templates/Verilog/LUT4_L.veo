// LUT4_L: 4-input Look-Up Table with local output
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT4_L #(
   .INIT(16'h0000)  // Specify LUT Contents
) LUT4_L_inst (
   .LO(LO), // LUT local output
   .I0(I0), // LUT input
   .I1(I1), // LUT input
   .I2(I2), // LUT input
   .I3(I3)  // LUT input
);

// End of LUT4_L_inst instantiation
