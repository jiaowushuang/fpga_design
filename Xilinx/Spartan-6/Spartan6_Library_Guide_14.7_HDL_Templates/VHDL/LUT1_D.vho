-- LUT1_D: 1-input Look-Up Table with general and local outputs
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LUT1_D_inst : LUT1_D
generic map (
   INIT => "00")
port map (
   LO => LO, -- LUT local output
   O => O,   -- LUT general output
   I0 => I0  -- LUT input
);

-- End of LUT1_D_inst instantiation
