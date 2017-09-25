-- RAM64X1D: 64 x 1 negative edge write, asynchronous read 
--           dual-port distributed RAM
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

RAM64X1D_1_inst : RAM64X1D_1
generic map (
   INIT => X"0000000000000000") -- Initial contents of RAM
port map (
   DPO => DPO,     -- Read-only 1-bit data output
   SPO => SPO,     -- R/W 1-bit data output
   A0 => A0,       -- R/W address[0] input bit
   A1 => A1,       -- R/W address[1] input bit
   A2 => A2,       -- R/W address[2] input bit
   A3 => A3,       -- R/W address[3] input bit
   A4 => A4,       -- R/W address[4] input bit
   A5 => A5,       -- R/W address[5] input bit
   D => D,         -- Write 1-bit data input
   DPRA0 => DPRA0, -- Read-only address[0] input bit
   DPRA1 => DPRA1, -- Read-only address[1] input bit
   DPRA2 => DPRA2, -- Read-only address[2] input bit
   DPRA3 => DPRA3, -- Read-only address[3] input bit
   DPRA4 => DPRA4, -- Read-only address[4] input bit
   DPRA5 => DPRA5, -- Read-only address[5] input bit
   WCLK => WCLK,   -- Write clock input
   WE => WE        -- Write enable input
);

-- End of RAM64X1D_1_inst instantiation
