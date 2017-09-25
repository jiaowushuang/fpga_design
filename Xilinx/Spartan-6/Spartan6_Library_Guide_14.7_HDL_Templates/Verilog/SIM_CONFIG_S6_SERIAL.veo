// SIM_CONFIG_S6_SERIAL: Behavioral Simulation-only Model of FPGA Serial Configuration
//                       Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

SIM_CONFIG_S6_SERIAL #(
   .DEVICE_ID(32'h00000000) // Specify DEVICE_ID
) SIM_CONFIG_S6_SERIAL_inst (
   .DONE(DONE),    // 1-bit bi-directional Done pin
   .CCLK(CCLK),    // 1-bit input configuration clock
   .DIN(DIN),      // 1-bit input configuration data
   .INITB(INITB),  // 1-bit bi-directional INIT status pin
   .M(M),          // 2-bit input Mode pins
   .PROGB(PROGB)   // 1-bit input Program pin
);

// End of SIM_CONFIG_S6_SERIAL_inst instantiation
