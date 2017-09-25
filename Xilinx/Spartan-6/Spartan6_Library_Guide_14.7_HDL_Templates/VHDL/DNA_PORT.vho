-- DNA_PORT: Device DNA Data Access Port
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

DNA_PORT_inst : DNA_PORT
generic map (
   SIM_DNA_VALUE => X"000000000000000"  -- Specifies the Pre-programmed factory ID value
)
port map (
   DOUT => DOUT,   -- 1-bit output: DNA output data
   CLK => CLK,     -- 1-bit input: Clock input
   DIN => DIN,     -- 1-bit input: User data input pin
   READ => READ,   -- 1-bit input: Active high load DNA, active low read input
   SHIFT => SHIFT  -- 1-bit input: Active high shift enable input
);

-- End of DNA_PORT_inst instantiation
