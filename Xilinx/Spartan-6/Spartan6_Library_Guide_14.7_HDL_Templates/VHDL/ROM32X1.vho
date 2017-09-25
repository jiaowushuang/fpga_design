-- ROM32X1: 32 x 1 Asynchronous Distributed (LUT) ROM
--          Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

ROM32X1_inst : ROM32X1
generic map (
   INIT => X"00000000")
port map (
   O => O,   -- ROM output
   A0 => A0, -- ROM address[0]
   A1 => A1, -- ROM address[1]
   A2 => A2, -- ROM address[2]
   A3 => A3, -- ROM address[3]
   A4 => A4  -- ROM address[4]
);
-- End of ROM32X1_inst instantiation
