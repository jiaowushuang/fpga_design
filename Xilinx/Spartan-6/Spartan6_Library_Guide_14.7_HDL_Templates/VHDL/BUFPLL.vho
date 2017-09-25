-- BUFPLL: High-speed I/O PLL clock buffer
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFPLL_inst : BUFPLL
generic map (
   DIVIDE => 1,         -- DIVCLK divider (1-8)
   ENABLE_SYNC => TRUE  -- Enable synchrnonization between PLL and GCLK (TRUE/FALSE)
)
port map (
   IOCLK => IOCLK,               -- 1-bit output: Output I/O clock
   LOCK => LOCK,                 -- 1-bit output: Synchronized LOCK output
   SERDESSTROBE => SERDESSTROBE, -- 1-bit output: Output SERDES strobe (connect to ISERDES2/OSERDES2)
   GCLK => GCLK,                 -- 1-bit input: BUFG clock input
   LOCKED => LOCKED,             -- 1-bit input: LOCKED input from PLL
   PLLIN => PLLIN                -- 1-bit input: Clock input from PLL
);

-- End of BUFPLL_inst instantiation
