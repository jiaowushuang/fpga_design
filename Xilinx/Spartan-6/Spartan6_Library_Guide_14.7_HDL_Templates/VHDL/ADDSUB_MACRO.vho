-- ADDSUB_MACRO: Variable width & latency - Adder / Subtractor implemented in a DSP48E
--               Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

ADDSUB_MACRO_inst : ADDSUB_MACRO
generic map (
   DEVICE => "SPARTAN6", -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6"
   LATENCY => 2,        -- Desired clock cycle latency, 0-2
   WIDTH => 48)         -- Input / Output bus width, 1-48
port map (
   CARRYOUT => CARRYOUT, -- 1-bit carry-out output signal
   RESULT => RESULT,     -- Add/sub result output, width defined by WIDTH generic
   A => A,               -- Input A bus, width defined by WIDTH generic
   ADD_SUB => ADD_SUB,   -- 1-bit add/sub input, high selects add, low selects subtract
   B => B,               -- Input B bus, width defined by WIDTH generic
   CARRYIN => CARRYIN,   -- 1-bit carry-in input
   CE => CE,             -- 1-bit clock enable input
   CLK =>CLK,           -- 1-bit clock input
   RST => RST            -- 1-bit active high synchronous reset
);
-- End of ADDSUB_MACRO_inst instantiation
