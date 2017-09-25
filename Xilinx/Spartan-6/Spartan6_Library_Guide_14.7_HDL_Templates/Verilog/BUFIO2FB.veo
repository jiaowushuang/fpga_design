// BUFIO2FB: DCM/PLL Feedback Clock Buffer
//           Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

BUFIO2FB #(
   .DIVIDE_BYPASS("TRUE")  // Bypass divider (TRUE/FALSE)
)
BUFIO2FB_inst (
   .O(O), // 1-bit output: Output feedback clock (connect to feedback input of DCM/PLL)
   .I(I)  // 1-bit input: Feedback clock input (connect to input port)
);

// End of BUFIO2FB_inst instantiation
