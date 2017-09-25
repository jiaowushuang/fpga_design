-- OBUFT: Single-ended 3-state Output Buffer
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

OBUFT_inst : OBUFT
generic map (
   DRIVE => 12,
   IOSTANDARD => "DEFAULT",
   SLEW => "SLOW")
port map (
   O => O,     -- Buffer output (connect directly to top-level port)
   I => I,     -- Buffer input
   T => T      -- 3-state enable input 
);
  
-- End of OBUFT_inst instantiation
