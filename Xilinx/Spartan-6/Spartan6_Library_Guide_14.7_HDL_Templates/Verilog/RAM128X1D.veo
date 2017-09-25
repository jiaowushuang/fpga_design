// RAM128X1D: 128-deep by 1-wide positive edge write, asynchronous read 
//            dual-port distributed LUT RAM
//            Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

RAM128X1D #(
   .INIT(128'h00000000000000000000000000000000)
) RAM128X1D_inst (
   .DPO(DPO),   // Read port 1-bit output
   .SPO(SPO),   // Read/write port 1-bit output
   .A(A),       // Read/write port 7-bit address input
   .D(D),       // RAM data input
   .DPRA(DPRA), // Read port 7-bit address input
   .WCLK(WCLK), // Write clock input
   .WE(WE)      // Write enable input
);

// End of RAM128X1D_inst instantiation
