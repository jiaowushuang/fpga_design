// LUT3_D: 3-input Look-Up Table with general and local outputs
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT3_D #(
   .INIT(8'h00)  // Specify LUT Contents
) LUT3_D_inst (
   .LO(LO), // LUT local output
   .O(O),   // LUT general output
   .I0(I0),   // LUT input
   .I1(I1),   // LUT input
   .I2(I2)    // LUT input
);

// End of LUT3_D_inst instantiation
