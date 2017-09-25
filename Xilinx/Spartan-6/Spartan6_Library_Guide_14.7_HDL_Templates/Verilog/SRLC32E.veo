// SRLC32E: 32-bit variable length cascadable shift register LUT 
//          with clock enable
//          Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

SRLC32E #(
   .INIT(32'h00000000) // Initial Value of Shift Register
) SRLC32E_inst (
   .Q(Q),     // SRL data output
   .Q31(Q31), // SRL cascade output pin
   .A(A),     // 5-bit shift depth select input
   .CE(CE),   // Clock enable input
   .CLK(CLK), // Clock input
   .D(D)      // SRL data input
);

// End of SRLC32E_inst instantiation
