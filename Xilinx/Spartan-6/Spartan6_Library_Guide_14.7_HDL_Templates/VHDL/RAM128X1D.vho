-- RAM128X1D: 128-deep by 1-wide positive edge write, asynchronous read 
--            dual-port distributed LUT RAM
--            Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

RAM128X1D_inst : RAM128X1D
generic map (
   INIT => X"00000000000000000000000000000000")
port map (
   DPO => DPO,     -- Read/Write port 1-bit output
   SPO => SPO,     -- Read port 1-bit output
   A => A,         -- Read/Write port 7-bit address input
   D => D,         -- RAM data input
   DPRA => DPRA,   -- Read port 7-bit address input
   WCLK => WCLK,   -- Write clock input
   WE => WE        -- RAM data input
);

-- End of RAM128X1D_inst instantiation
