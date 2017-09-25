-- IBUFG: Single-ended global clock input buffer
--        Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IBUFG_inst : IBUFG
generic map (
   IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "DEFAULT")
port map (
   O => O, -- Clock buffer output
   I => I  -- Clock buffer input (connect directly to top-level port)
);

-- End of IBUFG_inst instantiation
