// ISERDES2: Input SERial/DESerializer
//           Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

ISERDES2 #(
   .BITSLIP_ENABLE("FALSE"),      // Enable Bitslip Functionality (TRUE/FALSE)
   .DATA_RATE("SDR"),             // Data-rate ("SDR" or "DDR")
   .DATA_WIDTH(1),                // Parallel data width selection (2-8)
   .INTERFACE_TYPE("NETWORKING"), // "NETWORKING", "NETWORKING_PIPELINED" or "RETIMED"
   .SERDES_MODE("NONE")           // "NONE", "MASTER" or "SLAVE"
)
ISERDES2_inst (
   .CFB0(CFB0),           // 1-bit output: Clock feed-through route output
   .CFB1(CFB1),           // 1-bit output: Clock feed-through route output
   .DFB(DFB),             // 1-bit output: Feed-through clock output
   .FABRICOUT(FABRICOUT), // 1-bit output: Unsynchrnonized data output
   .INCDEC(INCDEC),       // 1-bit output: Phase detector output
   // Q1 - Q4: 1-bit (each) output: Registered outputs to FPGA logic
   .Q1(Q1),
   .Q2(Q2),
   .Q3(Q3),
   .Q4(Q4),
   .SHIFTOUT(SHIFTOUT),   // 1-bit output: Cascade output signal for master/slave I/O
   .VALID(VALID),         // 1-bit output: Output status of the phase detector
   .BITSLIP(BITSLIP),     // 1-bit input: Bitslip enable input
   .CE0(CE0),             // 1-bit input: Clock enable input
   .CLK0(CLK0),           // 1-bit input: I/O clock network input
   .CLK1(CLK1),           // 1-bit input: Secondary I/O clock network input
   .CLKDIV(CLKDIV),       // 1-bit input: FPGA logic domain clock input
   .D(D),                 // 1-bit input: Input data
   .IOCE(IOCE),           // 1-bit input: Data strobe input
   .RST(RST),             // 1-bit input: Asynchronous reset input
   .SHIFTIN(SHIFTIN)      // 1-bit input: Cascade input signal for master/slave I/O
);

// End of ISERDES2_inst instantiation
