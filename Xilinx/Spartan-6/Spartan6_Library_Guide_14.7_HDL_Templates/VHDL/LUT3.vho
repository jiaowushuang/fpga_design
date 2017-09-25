-- LUT3: 3-input Look-Up Table with general output
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT3_inst : LUT3
generic map (
   INIT => X"00")
port map (
   O => O,   -- LUT general output
   I0 => I0, -- LUT input
   I1 => I1, -- LUT input
   I2 => I2  -- LUT input
);

-- End of LUT3_inst instantiation
