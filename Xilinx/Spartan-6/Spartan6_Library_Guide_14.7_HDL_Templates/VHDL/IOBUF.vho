-- IOBUF: Single-ended Bi-directional Buffer
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IOBUF_inst : IOBUF
generic map (
   DRIVE => 12,
   IOSTANDARD => "DEFAULT",
   SLEW => "SLOW")
port map (
   O => O,     -- Buffer output
   IO => IO,   -- Buffer inout port (connect directly to top-level port)
   I => I,     -- Buffer input
   T => T      -- 3-state enable input, high=input, low=output 
);
  
-- End of IOBUF_inst instantiation
