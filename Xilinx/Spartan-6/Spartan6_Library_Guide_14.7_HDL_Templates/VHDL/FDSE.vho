-- FDSE: Single Data Rate D Flip-Flop with Synchronous Set and
--       Clock Enable (posedge clk).  
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

FDSE_inst : FDSE
generic map (
   INIT => '0') -- Initial value of register ('0' or '1')  
port map (
   Q => Q,      -- Data output
   C => C,      -- Clock input
   CE => CE,    -- Clock enable input
   S => S,      -- Synchronous Set input
   D => D       -- Data input
);
  
-- End of FDSE_inst instantiation
