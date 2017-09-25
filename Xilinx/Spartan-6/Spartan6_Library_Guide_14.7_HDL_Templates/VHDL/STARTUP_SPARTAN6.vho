-- STARTUP_SPARTAN6: STARTUP Block
--                   Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

STARTUP_SPARTAN6_inst : STARTUP_SPARTAN6
port map (
   CFGCLK => CFGCLK,       -- 1-bit output: Configuration logic main clock output.
   CFGMCLK => CFGMCLK,     -- 1-bit output: Configuration internal oscillator clock output.
   EOS => EOS,             -- 1-bit output: Active high output signal indicates the End Of Configuration.
   CLK => CLK,             -- 1-bit input: User startup-clock input
   GSR => GSR,             -- 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
   GTS => GTS,             -- 1-bit input: Global 3-state input (GTS cannot be used for the port name)
   KEYCLEARB => KEYCLEARB  -- 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
);

-- End of STARTUP_SPARTAN6_inst instantiation
