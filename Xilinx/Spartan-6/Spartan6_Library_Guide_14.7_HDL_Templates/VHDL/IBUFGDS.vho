-- IBUFGDS: Differential Global Clock Input Buffer
--          Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IBUFGDS_inst : IBUFGDS
generic map (
   DIFF_TERM => FALSE, -- Differential Termination 
   IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "DEFAULT")
port map (
   O => O,  -- Clock buffer output
   I => I,  -- Diff_p clock buffer input (connect directly to top-level port)
   IB => IB -- Diff_n clock buffer input (connect directly to top-level port)
);

-- End of IBUFGDS_inst instantiation
