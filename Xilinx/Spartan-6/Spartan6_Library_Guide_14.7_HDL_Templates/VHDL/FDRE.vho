-- FDRE: Single Data Rate D Flip-Flop with Synchronous Reset and
--       Clock Enable (posedge clk).  
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

FDRE_inst : FDRE
generic map (
   INIT => '0') -- Initial value of register ('0' or '1')  
port map (
   Q => Q,      -- Data output
   C => C,      -- Clock input
   CE => CE,    -- Clock enable input
   R => R,      -- Synchronous reset input
   D => D       -- Data input
);
  
-- End of FDRE_inst instantiation
