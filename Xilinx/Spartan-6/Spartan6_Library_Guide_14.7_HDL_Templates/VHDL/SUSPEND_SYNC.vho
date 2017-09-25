-- SUSPEND_SYNC: Suspend Mode Access
--               Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

SUSPEND_SYNC_inst : SUSPEND_SYNC
port map (
   SREQ => SREQ, -- 1-bit output: Suspend request output
   CLK => CLK,   -- 1-bit input: User clock input
   SACK => SACK  -- 1-bit input: SUSPEND acknowledgement output
);

-- End of SUSPEND_SYNC_inst instantiation
