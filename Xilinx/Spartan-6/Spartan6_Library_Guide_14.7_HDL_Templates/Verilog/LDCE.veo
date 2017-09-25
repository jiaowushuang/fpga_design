// LDCE:  Transparent latch with Asynchronous Reset and Gate Enable.
//        Spartan-6
// Xilinx HDL Libraries Guide, version 14.7

LDCE LDCE_inst (
   .Q(Q),      // Data output
   .CLR(CLR),  // Asynchronous clear/reset input
   .D(D),      // Data input
   .G(G),      // Gate input
   .GE(GE)     // Gate enable input
);
  
// End of LDCE_inst instantiation
