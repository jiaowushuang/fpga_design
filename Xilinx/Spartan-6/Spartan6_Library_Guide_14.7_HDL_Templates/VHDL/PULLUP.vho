-- PULLUP: I/O Buffer Weak Pull-up
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

PULLUP_inst : PULLUP
port map (
   O => O     -- Pullup output (connect directly to top-level port)
);
  
-- End of PULLUP_inst instantiation
