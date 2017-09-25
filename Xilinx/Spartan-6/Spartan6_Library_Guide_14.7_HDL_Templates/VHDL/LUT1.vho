-- LUT1: 1-input Look-Up Table with general output
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT1_inst : LUT1
generic map (
   INIT => "00")
port map (
   O => O,   -- LUT general output
   I0 => I0  -- LUT input
);

-- End of LUT1_inst instantiation
