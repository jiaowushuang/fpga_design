// SIM_CONFIG_S6: Behavioral Simulation-only Model of FPGA SelectMap Configuration
//                Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

SIM_CONFIG_S6 #(
   .DEVICE_ID(32'h00000000) // Specify DEVICE_ID
) SIM_CONFIG_S6_inst (
   .BUSY(BUSY), // 1-bit output Busy pin
   .CSOB(CSOB), // 1-bit output chip select pin
   .DONE(DONE), // 1-bit bi-directional Done pin
   .CCLK(CCLK), // 1-bit input configuration clock
   .CSIB(CSIB), // 1-bit input chip select
   .D(D),       // 16-bit bi-directional configuration data
   .INITB(INITB),  // 1-bit bi-directional INIT status pin
   .M(M),          // 2-bit input Mode pins
   .PROGB(PROGB),  // 1-bit input Program pin
   .RDWRB(RDWRB)   // 1-bit input Read/write pin
);

// End of SIM_CONFIG_S6_inst instantiation
