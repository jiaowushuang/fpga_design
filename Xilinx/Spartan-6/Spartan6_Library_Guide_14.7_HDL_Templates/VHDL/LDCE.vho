-- LDCE: Transparent latch with Asynchronous Reset and
--        Gate Enable.
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LDCE_inst : LDCE
generic map (
   INIT => '0') -- Initial value of latch ('0' or '1')  
port map (
   Q => Q,      -- Data output
   CLR => CLR,  -- Asynchronous clear/reset input
   D => D,      -- Data input
   G => G,      -- Gate input
   GE => GE     -- Gate enable input
);

-- End of LDCE_inst instantiation
