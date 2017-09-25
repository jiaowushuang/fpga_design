-- LUT3_L: 3-input Look-Up Table with local output
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT3_L_inst : LUT3_L
generic map (
   INIT => X"00")
port map (
   LO => LO,   -- LUT local output
   I0 => I0,   -- LUT input
   I1 => I1,   -- LUT input
   I2 => I2    -- LUT input
);

-- End of LUT3_L_inst instantiation
