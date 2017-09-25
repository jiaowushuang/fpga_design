-- BUFH: HROW Clock Buffer for a Single Clocking Region
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFH_inst : BUFH
port map (
   O => O, -- 1-bit output: Clock output
   I => I  -- 1-bit input: Clock input
);

-- End of BUFH_inst instantiation
