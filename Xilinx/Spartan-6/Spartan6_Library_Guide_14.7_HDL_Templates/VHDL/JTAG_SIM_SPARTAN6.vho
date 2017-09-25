-- JTAG_SIM_SPARTAN6: JTAG Interface Simulation Model
--                   Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

JTAG_SIM_SPARTAN6_inst : JTAG_SIM_SPARTAN6 
generic map (
   PART_NAME => "LX4") -- Specify target S6 device. Possible values are:
                       -- "LX4","LX150","LX150T","LX16","LX45","LX45T"
port map (
   TDO => TDO,         -- JTAG data output (1-bit)
   TCK => TCK,         -- Clock input (1-bit)
   TDI => TDI,         -- JTAG data input (1-bit)
   TMS => TMS          -- JTAG command input (1-bit)
);

-- End of JTAG_SIM_SPARTAN6_inst instantiation
