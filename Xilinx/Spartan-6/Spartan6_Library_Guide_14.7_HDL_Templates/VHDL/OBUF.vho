-- OBUF: Single-ended Output Buffer
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

OBUF_inst : OBUF
generic map (
   DRIVE => 12,
   IOSTANDARD => "DEFAULT",
   SLEW => "SLOW")
port map (
   O => O,     -- Buffer output (connect directly to top-level port)
   I => I      -- Buffer input 
);
  
-- End of OBUF_inst instantiation
