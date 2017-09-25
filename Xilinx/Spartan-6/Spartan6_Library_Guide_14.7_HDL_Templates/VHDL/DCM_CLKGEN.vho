-- DCM_CLKGEN: Frequency Aligned Digital Clock Manager
--             Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

DCM_CLKGEN_inst : DCM_CLKGEN
generic map (
   CLKFXDV_DIVIDE => 2,       -- CLKFXDV divide value (2, 4, 8, 16, 32)
   CLKFX_DIVIDE => 1,         -- Divide value - D - (1-256)
   CLKFX_MD_MAX => 0.0,       -- Specify maximum M/D ratio for timing anlysis
   CLKFX_MULTIPLY => 4,       -- Multiply value - M - (2-256)
   CLKIN_PERIOD => 0.0,       -- Input clock period specified in nS
   SPREAD_SPECTRUM => "NONE", -- Spread Spectrum mode "NONE", "CENTER_LOW_SPREAD", "CENTER_HIGH_SPREAD",
                              -- "VIDEO_LINK_M0", "VIDEO_LINK_M1" or "VIDEO_LINK_M2"
   STARTUP_WAIT => FALSE      -- Delay config DONE until DCM_CLKGEN LOCKED (TRUE/FALSE)
)
port map (
   CLKFX => CLKFX,         -- 1-bit output: Generated clock output
   CLKFX180 => CLKFX180,   -- 1-bit output: Generated clock output 180 degree out of phase from CLKFX.
   CLKFXDV => CLKFXDV,     -- 1-bit output: Divided clock output
   LOCKED => LOCKED,       -- 1-bit output: Locked output
   PROGDONE => PROGDONE,   -- 1-bit output: Active high output to indicate the successful re-programming
   STATUS => STATUS,       -- 2-bit output: DCM_CLKGEN status
   CLKIN => CLKIN,         -- 1-bit input: Input clock
   FREEZEDCM => FREEZEDCM, -- 1-bit input: Prevents frequency adjustments to input clock
   PROGCLK => PROGCLK,     -- 1-bit input: Clock input for M/D reconfiguration
   PROGDATA => PROGDATA,   -- 1-bit input: Serial data input for M/D reconfiguration
   PROGEN => PROGEN,       -- 1-bit input: Active high program enable
   RST => RST              -- 1-bit input: Reset input pin
);

-- End of DCM_CLKGEN_inst instantiation
