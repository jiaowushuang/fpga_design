-- LUT6_D: 6-input Look-Up Table with general and local outputs
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT6_D_inst : LUT6_D
generic map (
   INIT => X"0000000000000000") -- Specify LUT contents
port map (
   LO => LO, -- LUT local output
   O => O,   -- LUT general output
   I0 => I0, -- LUT input
   I1 => I1, -- LUT input
   I2 => I2, -- LUT input
   I3 => I3, -- LUT input
   I4 => I4, -- LUT input
   I5 => I5 -- LUT input
);

-- End of LUT6_D_inst instantiation
