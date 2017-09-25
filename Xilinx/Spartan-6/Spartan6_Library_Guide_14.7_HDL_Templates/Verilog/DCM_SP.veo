// DCM_SP: Digital Clock Manager
//         Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

DCM_SP #(
   .CLKDV_DIVIDE(2.0),                   // CLKDV divide value
                                         // (1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,9,10,11,12,13,14,15,16).
   .CLKFX_DIVIDE(1),                     // Divide value on CLKFX outputs - D - (1-32)
   .CLKFX_MULTIPLY(4),                   // Multiply value on CLKFX outputs - M - (2-32)
   .CLKIN_DIVIDE_BY_2("FALSE"),          // CLKIN divide by two (TRUE/FALSE)
   .CLKIN_PERIOD(10.0),                  // Input clock period specified in nS
   .CLKOUT_PHASE_SHIFT("NONE"),          // Output phase shift (NONE, FIXED, VARIABLE)
   .CLK_FEEDBACK("1X"),                  // Feedback source (NONE, 1X, 2X)
   .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), // SYSTEM_SYNCHRNOUS or SOURCE_SYNCHRONOUS
   .DFS_FREQUENCY_MODE("LOW"),           // Unsupported - Do not change value
   .DLL_FREQUENCY_MODE("LOW"),           // Unsupported - Do not change value
   .DSS_MODE("NONE"),                    // Unsupported - Do not change value
   .DUTY_CYCLE_CORRECTION("TRUE"),       // Unsupported - Do not change value
   .FACTORY_JF(16'hc080),                // Unsupported - Do not change value
   .PHASE_SHIFT(0),                      // Amount of fixed phase shift (-255 to 255)
   .STARTUP_WAIT("FALSE")                // Delay config DONE until DCM_SP LOCKED (TRUE/FALSE)
)
DCM_SP_inst (
   .CLK0(CLK0),         // 1-bit output: 0 degree clock output
   .CLK180(CLK180),     // 1-bit output: 180 degree clock output
   .CLK270(CLK270),     // 1-bit output: 270 degree clock output
   .CLK2X(CLK2X),       // 1-bit output: 2X clock frequency clock output
   .CLK2X180(CLK2X180), // 1-bit output: 2X clock frequency, 180 degree clock output
   .CLK90(CLK90),       // 1-bit output: 90 degree clock output
   .CLKDV(CLKDV),       // 1-bit output: Divided clock output
   .CLKFX(CLKFX),       // 1-bit output: Digital Frequency Synthesizer output (DFS)
   .CLKFX180(CLKFX180), // 1-bit output: 180 degree CLKFX output
   .LOCKED(LOCKED),     // 1-bit output: DCM_SP Lock Output
   .PSDONE(PSDONE),     // 1-bit output: Phase shift done output
   .STATUS(STATUS),     // 8-bit output: DCM_SP status output
   .CLKFB(CLKFB),       // 1-bit input: Clock feedback input
   .CLKIN(CLKIN),       // 1-bit input: Clock input
   .DSSEN(DSSEN),       // 1-bit input: Unsupported, specify to GND.
   .PSCLK(PSCLK),       // 1-bit input: Phase shift clock input
   .PSEN(PSEN),         // 1-bit input: Phase shift enable
   .PSINCDEC(PSINCDEC), // 1-bit input: Phase shift increment/decrement input
   .RST(RST)            // 1-bit input: Active high reset input
);

// End of DCM_SP_inst instantiation
