-- RAM32X2S: 32 x 2 posedge write distributed (LUT) RAM
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

RAM32X2S_inst : RAM32X2S
generic map (
   INIT_00 => X"00000000", --  INIT for bit 0 of RAM
   INIT_01 => X"00000000") --  INIT for bit 1 of RAM
port map (
   O0 => O0,     -- RAM data[0] output
   O1 => O1,     -- RAM data[1] output
   A0 => A0,     -- RAM address[0] input
   A1 => A1,     -- RAM address[1] input
   A2 => A2,     -- RAM address[2] input
   A3 => A3,     -- RAM address[3] input
   A4 => A4,     -- RAM address[4] input
   D0 => D0,     -- RAM data[0] input
   D1 => D1,     -- RAM data[1] input
   WCLK => WCLK, -- Write clock input
   WE => WE      -- Write enable input
);

-- End of RAM32X2S_inst instantiation
