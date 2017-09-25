-- COUNTER_LOAD_MACRO: Loadable variable counter implemented in a DSP48E
--                     Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

COUNTER_LOAD_MACRO_inst : COUNTER_LOAD_MACRO
generic map (
   COUNT_BY => X"000000000001", -- Count by value
   DEVICE => "SPARTAN6",         -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6"
   WIDTH_DATA => 48)            -- Counter output bus width, 1-48
port map (
   Q => Q,                 -- Counter output, width determined by WIDTH_DATA generic 
   CLK => CLK,             -- 1-bit clock input
   CE => CE,               -- 1-bit clock enable input
   DIRECTION => DIRECTION, -- 1-bit up/down count direction input, high is count up
   LOAD => LOAD,           -- 1-bit active high load input
   LOAD_DATA => LOAD_DATA, -- Counter load data, width determined by WIDTH_DATA generic 
   RST => RST              -- 1-bit active high synchronous reset
);
-- End of COUNTER_LOAD_MACRO_inst instantiation
