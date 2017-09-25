-- LUT2_D: 2-input Look-Up Table with general and local outputs
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT2_D_inst : LUT2_D
generic map (
   INIT => X"0")
port map (
   LO => LO, -- LUT local output
   O => O,   -- LUT general output
   I0 => I0, -- LUT input
   I1 => I1  -- LUT input
);

-- End of LUT2_D_inst instantiation
