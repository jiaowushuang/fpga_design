-- LUT3_D: 3-input Look-Up Table with general and local outputs
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT3_D_inst : LUT3_D
generic map (
   INIT => X"00")
port map (
   LO => LO,  -- LUT local output
   O => O,    -- LUT general output
   I0 => I0,  -- LUT input
   I1 => I1,  -- LUT input
   I2 => I2   -- LUT input
);

-- End of LUT3_D_inst instantiation
