-- BUFGCE_1: Global Clock Buffer with Clock Enable and Output State 1
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFGCE_1_inst : BUFGCE_1
port map (
   O => O,   -- 1-bit output: Clock buffer output
   CE => CE, -- 1-bit input: Clock buffer select
   I => I    -- 1-bit input: Clock buffer input (S=0)
);

-- End of BUFGCE_1_inst instantiation
