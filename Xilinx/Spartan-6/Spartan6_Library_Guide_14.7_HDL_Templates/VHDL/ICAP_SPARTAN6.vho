-- ICAP_SPARTAN6: Internal Configuration Access Port
--                Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

ICAP_SPARTAN6_inst : ICAP_SPARTAN6
generic map (
   DEVICE_ID => X"4000093",     -- Specifies the pre-programmed Device ID value
   SIM_CFG_FILE_NAME => "NONE"  -- Specifies the Raw Bitstream (RBT) file to be parsed by the simulation
                                -- model
)
port map (
   BUSY => BUSY,   -- 1-bit output: Busy/Ready output
   O => O,         -- 16-bit output: Configuartion data output bus
   CE => CE,       -- 1-bit input: Active-Low ICAP Enable input
   CLK => CLK,     -- 1-bit input: Clock input
   I => I,         -- 16-bit input: Configuration data input bus
   WRITE => WRITE  -- 1-bit input: Read/Write control input
);

-- End of ICAP_SPARTAN6_inst instantiation
