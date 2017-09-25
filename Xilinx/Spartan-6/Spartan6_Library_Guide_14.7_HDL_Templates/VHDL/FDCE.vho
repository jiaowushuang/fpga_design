-- FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
--       Clock Enable (posedge clk).  
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

FDCE_inst : FDCE
generic map (
   INIT => '0') -- Initial value of register ('0' or '1')  
port map (
   Q => Q,      -- Data output
   C => C,      -- Clock input
   CE => CE,    -- Clock enable input
   CLR => CLR,  -- Asynchronous clear input
   D => D       -- Data input
);
  
-- End of FDCE_inst instantiation
