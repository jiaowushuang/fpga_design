-- MUXF8_D: CLB MUX to tie two MUXF7's together with general and local outputs
--          Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

MUXF8_D_inst : MUXF8_D
port map (
   LO => LO,  -- Output of MUX to local routing
   O => O,    -- Output of MUX to general routing
   I0 => I0,  -- Input (tie to MUXF7 LO out)
   I1 => I1,  -- Input (tie to MUXF7 LO out)
   S => S     -- Input select to MUX
);

-- End of MUXF8_D_inst instantiation
