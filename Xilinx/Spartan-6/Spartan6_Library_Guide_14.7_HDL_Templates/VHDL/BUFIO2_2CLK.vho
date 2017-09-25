-- BUFIO2_2CLK: Dual Input Differential Clock Buffer
--              Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFIO2_2CLK_inst : BUFIO2_2CLK
generic map (
   DIVIDE => 3  -- DIVCLK divider (3-8)
)
port map (
   DIVCLK => DIVCLK,             -- 1-bit output: Divided clock output
   IOCLK => IOCLK,               -- 1-bit output: I/O output clock
   SERDESSTROBE => SERDESSTROBE, -- 1-bit output: Output SERDES strobe (connect to ISERDES2/OSERDES2)
   I => I,                       -- 1-bit input: Clock input (connect to IBUFG)
   IB => IB                      -- 1-bit input: Secondary clock input
);

-- End of BUFIO2_2CLK_inst instantiation
