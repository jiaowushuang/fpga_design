-- BUFGMUX_1: Global Clock Mux Buffer with Output State 1
--            Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFGMUX_1_inst : BUFGMUX_1
generic map (
   CLK_SEL_TYPE => "SYNC"  -- Glitchles ("SYNC") or fast ("ASYNC") clock switch-over
)
port map (
   O => O,   -- 1-bit output: Clock buffer output
   I0 => I0, -- 1-bit input: Clock buffer input
   I1 => I1, -- 1-bit input: Clock buffer input
   S => S    -- 1-bit input: Clock buffer select
);

-- End of BUFGMUX_1_inst instantiation
