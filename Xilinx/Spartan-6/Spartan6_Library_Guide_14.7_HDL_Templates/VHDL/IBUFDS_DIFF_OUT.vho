-- IBUFDS_DIFF_OUT: Differential Input Buffer with Differential Output
--                  Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IBUFDS_DIFF_OUT_inst : IBUFDS_DIFF_OUT
generic map (
   DIFF_TERM => FALSE, -- Differential Termination 
   IOSTANDARD => "DEFAULT") -- Specify the input I/O standard
port map (
   O => O,     -- Buffer diff_p output
   OB => OB,   -- Buffer diff_n output
   I => I,  -- Diff_p buffer input (connect directly to top-level port)
   IB => IB -- Diff_n buffer input (connect directly to top-level port)
);

-- End of IBUFDS_DIFF_OUT_inst instantiation
