-- MUXF8_L: CLB MUX to tie two MUXF7's together with local output
--          Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

MUXF8_L_inst : MUXF8_L
port map (
   LO => LO,  -- Output of MUX to local routing
   I0 => I0,  -- Input (tie to MUXF7 LO out)
   I1 => I1,  -- Input (tie to MUXF7 LO out)
   S => S     -- Input select to MUX
);

-- End of MUXF8_L_inst instantiation
