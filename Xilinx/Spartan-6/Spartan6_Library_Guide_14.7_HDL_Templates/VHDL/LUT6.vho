-- LUT6: 6-input Look-Up Table with general output
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT6_inst : LUT6
generic map (
   INIT => X"0000000000000000") -- Specify LUT Contents
port map (
   O => O,  -- LUT general output
   I0 => I0,   -- LUT input
   I1 => I1,   -- LUT input
   I2 => I2,   -- LUT input
   I3 => I3,   -- LUT input
   I4 => I4,   -- LUT input
   I5 => I5    -- LUT input 
);

-- End of LUT6_inst instantiation
