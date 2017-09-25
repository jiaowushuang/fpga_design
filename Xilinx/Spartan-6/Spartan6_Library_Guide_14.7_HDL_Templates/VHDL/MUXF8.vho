-- MUXF8: CLB MUX to tie two MUXF7's together with general output
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

MUXF8_inst : MUXF8
port map (
   O => O,    -- Output of MUX to general routing
   I0 => I0,  -- Input (tie to MUXF7 LO out)
   I1 => I1,  -- Input (tie to MUXF7 LO out)
   S => S     -- Input select to MUX
);

-- End of MUXF8_inst instantiation
