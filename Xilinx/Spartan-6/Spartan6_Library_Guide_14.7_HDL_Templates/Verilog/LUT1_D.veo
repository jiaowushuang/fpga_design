// LUT1_D: 1-input Look-Up Table with general and local outputs
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT1_D #(
   .INIT(2'b00)  // Specify LUT Contents
) LUT1_D_inst (
   .LO(LO), // LUT local output
   .O(O),   // LUT general output
   .I0(I0)  // LUT input
);

// End of LUT1_D_inst instantiation
