-- LDPE:  Transparent latch with Asynchronous Set and
--        Gate Enable.
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

LDPE_inst : LDPE
generic map (
   INIT => '0') -- Initial value of latch ('0' or '1')  
port map (
   Q => Q,      -- Data output
   CLR => CLR,  -- Asynchronous preset/set input
   D => D,      -- Data input
   G => G,      -- Gate input
   GE => GE     -- Gate enable input
);

-- End of LDPE_inst instantiation
