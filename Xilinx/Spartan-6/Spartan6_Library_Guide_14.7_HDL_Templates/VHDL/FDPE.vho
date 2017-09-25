-- FDPE: Single Data Rate D Flip-Flop with Asynchronous Preset and
--       Clock Enable (posedge clk).  
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

FDPE_inst : FDPE
generic map (
   INIT => '0') -- Initial value of register ('0' or '1')  
port map (
   Q => Q,      -- Data output
   C => C,      -- Clock input
   CE => CE,    -- Clock enable input
   PRE => PRE,  -- Asynchronous preset input
   D => D       -- Data input
);
  
-- End of FDPE_inst instantiation
