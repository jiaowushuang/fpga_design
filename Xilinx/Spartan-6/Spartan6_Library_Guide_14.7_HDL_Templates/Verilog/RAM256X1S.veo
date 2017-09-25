// RAM256X1S: 256-deep by 1-wide positive edge write, asynchronous read 
//            single-port distributed LUT RAM
//            Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

RAM256X1S #( 
   .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)
) RAM256X1S_inst (
   .O(O),       // Read/write port 1-bit output
   .A(A),       // Read/write port 8-bit address input
   .WE(WE),     // Write enable input
   .WCLK(WCLK), // Write clock input
   .D(D)        // RAM data input
);

// End of RAM256X1S_inst instantiation
