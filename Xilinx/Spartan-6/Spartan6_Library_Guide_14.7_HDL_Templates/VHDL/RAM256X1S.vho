-- RAM256X1S: 256-deep by 1-wide positive edge write, asynchronous read 
--            single-port distributed LUT RAM
--            Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

RAM256X1S_inst : RAM256X1S
generic map (
   INIT => X"0000000000000000000000000000000000000000000000000000000000000000")
port map (
   O => O,  -- Read/Write port 1-bit output
   A => A,  -- Read/Write port 8-bit address input
   D => D,  -- RAM data input
   WCLK => WCLK,  -- Write clock input
   WE => WE -- Write enable input
);

-- End of RAM256X1S_inst instantiation
