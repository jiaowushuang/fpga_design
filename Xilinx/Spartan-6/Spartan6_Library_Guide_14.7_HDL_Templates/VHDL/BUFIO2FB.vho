-- BUFIO2FB: DCM/PLL Feedback Clock Buffer
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BUFIO2FB_inst : BUFIO2FB
generic map (
   DIVIDE_BYPASS => TRUE  -- Bypass divider (TRUE/FALSE)
)
port map (
   O => O, -- 1-bit output: Output feedback clock (connect to feedback input of DCM/PLL)
   I => I  -- 1-bit input: Feedback clock input (connect to input port)
);

-- End of BUFIO2FB_inst instantiation
