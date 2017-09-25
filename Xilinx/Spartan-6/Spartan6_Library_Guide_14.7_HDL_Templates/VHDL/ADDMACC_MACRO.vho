-- ADDMACC_MACRO: Add and Multiple Accumulate Function implemented in a DSP48E
--                Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

ADDMACC_MACRO_inst : ADDMACC_MACRO
generic map (
   DEVICE => "SPARTAN6",  -- Target Device: "VIRTEX6", "SPARTAN6"
   LATENCY => 4,         -- Desired clock cycle latency, 1-4
   WIDTH_PREADD => 25,   -- Pre-Adder input bus width, 1-25
   WIDTH_MULTIPLIER => 18, -- Multiplier input bus width, 1-18     
   WIDTH_PRODUCT => 48)    -- MACC output width, 1-48
port map (
   PRODUCT => PRODUCT,     -- MACC result output, width defined by WIDTH_PRODUCT generic 
   MULTIPLIER => MULTIPLIER, -- Multiplier data input, width determined by WIDTH_MULTIPLIER generic
   PREADDER1 => PREADDER1,   -- Preadder data input, width determined by WIDTH_PREADDER generic 
   PREADDER2 => PREADDER2,   -- Preadder data input, width determined by WIDTH_PREADDER generic 
   CARRYIN => CARRYIN, -- 1-bit carry-in input
   CE => CE,      -- 1-bit input clock enable
   CLK => CLK,    -- 1-bit clock input
   LOAD => LOAD, -- 1-bit accumulator load input
   LOAD_DATA => LOAD_DATA, -- Accumulator load data input, width defined by WIDTH_PRODUCT generic
   RST => RST    -- 1-bit input active high synchronous reset
);
-- End of ADDMACC_MACRO_inst instantiation
