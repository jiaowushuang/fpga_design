// LUT1: 1-input Look-Up Table with general output
//       Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LUT1 #(
   .INIT(2'b00)  // Specify LUT Contents
) LUT1_inst (
   .O(O),   // LUT general output
   .I0(I0)  // LUT input
);

// End of LUT1_inst instantiation
