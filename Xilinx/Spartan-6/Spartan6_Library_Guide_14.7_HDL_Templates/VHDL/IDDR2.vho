-- IDDR2: Input Double Data Rate Input Register with Set, Reset
--        and Clock Enable. 
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IDDR2_inst : IDDR2
generic map(
   DDR_ALIGNMENT => "NONE", -- Sets output alignment to "NONE", "C0", "C1"
   INIT_Q0 => '0', -- Sets initial state of the Q0 output to '0' or '1'
   INIT_Q1 => '0', -- Sets initial state of the Q1 output to '0' or '1'
   SRTYPE => "SYNC") -- Specifies "SYNC" or "ASYNC" set/reset
port map (
   Q0 => Q0, -- 1-bit output captured with C0 clock
   Q1 => Q1, -- 1-bit output captured with C1 clock
   C0 => C0, -- 1-bit clock input
   C1 => C1, -- 1-bit clock input
   CE => CE,  -- 1-bit clock enable input
   D => D,   -- 1-bit data input 
   R => R,    -- 1-bit reset input
   S => S     -- 1-bit set input
);
  
-- End of IDDR2_inst instantiation
