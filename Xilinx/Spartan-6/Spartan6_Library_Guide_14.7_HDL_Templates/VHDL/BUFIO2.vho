-- BUFIO2: I/O Clock Buffer
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFIO2_inst : BUFIO2
generic map (
   DIVIDE => 1,           -- DIVCLK divider (1,3-8)
   DIVIDE_BYPASS => TRUE, -- Bypass the divider circuitry (TRUE/FALSE)
   I_INVERT => FALSE,     -- Invert clock (TRUE/FALSE)
   USE_DOUBLER => FALSE   -- Use doubler circuitry (TRUE/FALSE)
)
port map (
   DIVCLK => DIVCLK,             -- 1-bit output: Divided clock output
   IOCLK => IOCLK,               -- 1-bit output: I/O output clock
   SERDESSTROBE => SERDESSTROBE, -- 1-bit output: Output SERDES strobe (connect to ISERDES2/OSERDES2)
   I => I                        -- 1-bit input: Clock input (connect to IBUFG)
);

-- End of BUFIO2_inst instantiation
