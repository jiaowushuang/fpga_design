// LUT4_D: 4-input Look-Up Table with general and local outputs
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT4_D #(
   .INIT(16'h0000)  // Specify LUT Contents
) LUT4_D_inst (
   .LO(LO), // LUT local output
   .O(O),   // LUT general output
   .I0(I0), // LUT input
   .I1(I1), // LUT input
   .I2(I2), // LUT input
   .I3(I3)  // LUT input
);

// End of LUT4_D_inst instantiation
