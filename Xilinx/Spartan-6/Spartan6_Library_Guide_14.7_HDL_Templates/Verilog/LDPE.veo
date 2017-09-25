// LDPE:  Transparent latch with Asynchronous Preset and Gate Enable.
//        Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LDPE LDPE_inst (
   .Q(Q),      // Data output
   .PRE(PRE),  // Asynchronous preset/set input
   .D(D),      // Data input
   .G(G),      // Gate input
   .GE(GE)     // Gate enable input
);
  
// End of LDPE_inst instantiation
