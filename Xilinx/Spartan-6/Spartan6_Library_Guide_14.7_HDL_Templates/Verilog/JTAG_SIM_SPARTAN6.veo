// JTAG_SIM_SPARTAN6: JTAG Interface Simulation Model
//                    Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

JTAG_SIM_SPARTAN6 #(
   .PART_NAME("LX4") // Specify target S6 device.  Possible values are:
                       // "LX4","LX150","LX150T","LX16","LX4","LX45","LX45T"
) JTAG_SIM_SPARTAN6_inst (
   .TDO(TDO), // 1-bit JTAG data output
   .TCK(TCK), // 1-bit Clock input
   .TDI(TDI), // 1-bit JTAG data input
   .TMS(TMS)  // 1-bit JTAG command input
);

// End of JTAG_SIM_SPARTAN6_inst instantiation
