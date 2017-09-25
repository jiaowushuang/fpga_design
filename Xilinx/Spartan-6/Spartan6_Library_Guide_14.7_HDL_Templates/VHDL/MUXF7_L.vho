-- MUXF7_L: CLB MUX to tie two LUT6's together with local output
--          Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

MUXF7_L_inst : MUXF7_L
port map (
   LO => LO,  -- Output of MUX to local routing
   I0 => I0,  -- Input (tie to MUXF6 LO out or LUT6 O6 pin)
   I1 => I1,  -- Input (tie to MUXF6 LO out or LUT6 O6 pin)
   S => S     -- Input select to MUX
);

-- End of MUXF7_L_inst instantiation
