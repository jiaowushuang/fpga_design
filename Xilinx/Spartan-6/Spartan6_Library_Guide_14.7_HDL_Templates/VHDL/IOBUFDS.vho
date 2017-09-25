-- IOBUFDS: Differential Bi-directional Buffer
--          Spartan-3/3E/3A
-- Xilinx HDL Libraries Guide, version 14.7

IOBUFDS_inst : IOBUFDS
generic map (
   IOSTANDARD => "BLVDS_25")
port map (
   O => O,     -- Buffer output
   IO => IO,   -- Diff_p inout (connect directly to top-level port)
   IOB => IOB, -- Diff_n inout (connect directly to top-level port)
   I => I,     -- Buffer input
   T => T      -- 3-state enable input, high=input, low=output
);
  
-- End of IOBUFDS_inst instantiation
