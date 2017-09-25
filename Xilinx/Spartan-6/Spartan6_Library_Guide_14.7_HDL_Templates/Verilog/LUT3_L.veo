// LUT3_L: 3-input Look-Up Table with local output
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT3_L #(
   .INIT(8'h00)  // Specify LUT Contents
) LUT3_L_inst (
   .LO(LO), // LUT local output
   .I0(I0), // LUT input
   .I1(I1), // LUT input
   .I2(I2)  // LUT input
);

// End of LUT3_L_inst instantiation
