-- LUT5_D: 5-input Look-Up Table with general and local outputs
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT5_D_inst : LUT5_D
generic map (
   INIT => X"00000000") -- Specify LUT contents
port map (
   LO => LO, -- LUT local output
   O => O,   -- LUT general output
   I0 => I0, -- LUT input
   I1 => I1, -- LUT input
   I2 => I2, -- LUT input
   I3 => I3, -- LUT input
   I4 => I4  -- LUT input
);

-- End of LUT5_D_inst instantiation
