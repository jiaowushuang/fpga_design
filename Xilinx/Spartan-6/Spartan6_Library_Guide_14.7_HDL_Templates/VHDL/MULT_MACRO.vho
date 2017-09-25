-- MULT_MACRO: Multiply Function implemented in a DSP48E
--             Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

MULT_MACRO_inst : MULT_MACRO
generic map (
   DEVICE => "SPARTAN6",    -- Target Device: "VIRTEX5", "VIRTEX6", "SPARTAN6"
   LATENCY => 3,           -- Desired clock cycle latency, 0-4
   WIDTH_A => 18,          -- Multiplier A-input bus width, 1-25 
   WIDTH_B => 18)          -- Multiplier B-input bus width, 1-18
port map (
   P => P,     -- Multiplier output bus, width determined by WIDTH_P generic 
   A => A,     -- Multiplier input A bus, width determined by WIDTH_A generic 
   B => B,     -- Multiplier input B bus, width determined by WIDTH_B generic 
   CE => CE,   -- 1-bit active high input clock enable
   CLK => CLK, -- 1-bit positive edge clock input
   RST => RST  -- 1-bit input active high reset
);
-- End of MULT_MACRO_inst instantiation
