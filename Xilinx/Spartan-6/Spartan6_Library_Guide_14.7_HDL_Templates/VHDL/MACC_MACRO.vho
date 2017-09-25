-- MACC_MACRO: Multiple Accumulate Function implemented in a DSP48E
--             Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

MACC_MACRO_inst : MACC_MACRO
generic map (
   DEVICE => "SPARTAN6",  -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6"
   LATENCY => 3,         -- Desired clock cycle latency, 1-4
   WIDTH_A => 25,        -- Multiplier A-input bus width, 1-25
   WIDTH_B => 18,        -- Multiplier B-input bus width, 1-18     
   WIDTH_P => 48)        -- Accumulator output bus width, 1-48
port map (
   P => P,     -- MACC output bus, width determined by WIDTH_P generic 
   A => A,     -- MACC input A bus, width determined by WIDTH_A generic 
   ADDSUB => ADDSUB, -- 1-bit add/sub input, high selects add, low selects subtract
   B => B,           -- MACC input B bus, width determined by WIDTH_B generic 
   CARRYIN => CARRYIN, -- 1-bit carry-in input to accumulator
   CE => CE,      -- 1-bit active high input clock enable
   CLK => CLK,    -- 1-bit positive edge clock input
   LOAD => LOAD, -- 1-bit active high input load accumulator enable
   LOAD_DATA => LOAD_DATA, -- Load accumulator input data, 
                           -- width determined by WIDTH_P generic
   RST => RST    -- 1-bit input active high reset
);

-- End of MACC_MACRO_inst instantiation
