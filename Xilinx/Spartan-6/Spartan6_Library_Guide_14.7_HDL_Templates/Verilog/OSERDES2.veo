// OSERDES2: Output SERial/DESerializer
//           Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

OSERDES2 #(
   .BYPASS_GCLK_FF("FALSE"),     // Bypass CLKDIV syncronization registers (TRUE/FALSE)
   .DATA_RATE_OQ("DDR"),         // Output Data Rate ("SDR" or "DDR")
   .DATA_RATE_OT("DDR"),         // 3-state Data Rate ("SDR" or "DDR")
   .DATA_WIDTH(2),               // Parallel data width (2-8)
   .OUTPUT_MODE("SINGLE_ENDED"), // "SINGLE_ENDED" or "DIFFERENTIAL"
   .SERDES_MODE("NONE"),         // "NONE", "MASTER" or "SLAVE"
   .TRAIN_PATTERN(0)             // Training Pattern (0-15)
)
OSERDES2_inst (
   .OQ(OQ),               // 1-bit output: Data output to pad or IODELAY2
   .SHIFTOUT1(SHIFTOUT1), // 1-bit output: Cascade data output
   .SHIFTOUT2(SHIFTOUT2), // 1-bit output: Cascade 3-state output
   .SHIFTOUT3(SHIFTOUT3), // 1-bit output: Cascade differential data output
   .SHIFTOUT4(SHIFTOUT4), // 1-bit output: Cascade differential 3-state output
   .TQ(TQ),               // 1-bit output: 3-state output to pad or IODELAY2
   .CLK0(CLK0),           // 1-bit input: I/O clock input
   .CLK1(CLK1),           // 1-bit input: Secondary I/O clock input
   .CLKDIV(CLKDIV),       // 1-bit input: Logic domain clock input
   // D1 - D4: 1-bit (each) input: Parallel data inputs
   .D1(D1),
   .D2(D2),
   .D3(D3),
   .D4(D4),
   .IOCE(IOCE),           // 1-bit input: Data strobe input
   .OCE(OCE),             // 1-bit input: Clock enable input
   .RST(RST),             // 1-bit input: Asynchrnous reset input
   .SHIFTIN1(SHIFTIN1),   // 1-bit input: Cascade data input
   .SHIFTIN2(SHIFTIN2),   // 1-bit input: Cascade 3-state input
   .SHIFTIN3(SHIFTIN3),   // 1-bit input: Cascade differential data input
   .SHIFTIN4(SHIFTIN4),   // 1-bit input: Cascade differential 3-state input
   // T1 - T4: 1-bit (each) input: 3-state control inputs
   .T1(T1),
   .T2(T2),
   .T3(T3),
   .T4(T4),
   .TCE(TCE),             // 1-bit input: 3-state clock enable input
   .TRAIN(TRAIN)          // 1-bit input: Training pattern enable input
);

// End of OSERDES2_inst instantiation
