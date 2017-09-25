-- CARRY4: Fast Carry Logic Component
--         Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

CARRY4_inst : CARRY4
port map (
   CO => CO,         -- 4-bit carry out
   O => O,           -- 4-bit carry chain XOR data out
   CI => CI,         -- 1-bit carry cascade input
   CYINIT => CYINIT, -- 1-bit carry initialization
   DI => DI,         -- 4-bit carry-MUX data in
   S => S            -- 4-bit carry-MUX select input
);

-- End of CARRY4_inst instantiation
