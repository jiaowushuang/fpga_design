-- IBUF: Single-ended Input Buffer
--       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IBUF_inst : IBUF
generic map (
   IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "DEFAULT")
port map (
   O => O,     -- Buffer output
   I => I      -- Buffer input (connect directly to top-level port)
);
  
-- End of IBUF_inst instantiation
