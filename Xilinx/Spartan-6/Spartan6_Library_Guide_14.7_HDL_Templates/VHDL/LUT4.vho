-- LUT4: 4-input Look-Up Table with general output
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT4_inst : LUT4
generic map (
   INIT => X"0000")
port map (
   O => O,   -- LUT general output
   I0 => I0, -- LUT input
   I1 => I1, -- LUT input
   I2 => I2, -- LUT input
   I3 => I3  -- LUT input
);

-- End of LUT4_inst instantiation
