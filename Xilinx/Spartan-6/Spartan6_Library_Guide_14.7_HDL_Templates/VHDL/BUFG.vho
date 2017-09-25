-- BUFG: Global Clock Buffer
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFG_inst : BUFG
port map (
   O => O, -- 1-bit output: Clock buffer output
   I => I  -- 1-bit input: Clock buffer input
);

-- End of BUFG_inst instantiation
