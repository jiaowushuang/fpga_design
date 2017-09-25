-- PLL_BASE: Phase Locked Loop (PLL) Clock Management Component
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

PLL_BASE_inst : PLL_BASE
generic map (
   BANDWIDTH => "OPTIMIZED",             -- "HIGH", "LOW" or "OPTIMIZED"
   CLKFBOUT_MULT => 1,                   -- Multiply value for all CLKOUT clock outputs (1-64)
   CLKFBOUT_PHASE => 0.0,                -- Phase offset in degrees of the clock feedback output
                                         -- (0.0-360.0).
   CLKIN_PERIOD => 0.0,                  -- Input clock period in ns to ps resolution (i.e. 33.333 is 30
                                         -- MHz).
   -- CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for CLKOUT# clock output (1-128)
   CLKOUT0_DIVIDE => 1,
   CLKOUT1_DIVIDE => 1,
   CLKOUT2_DIVIDE => 1,
   CLKOUT3_DIVIDE => 1,
   CLKOUT4_DIVIDE => 1,
   CLKOUT5_DIVIDE => 1,
   -- CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for CLKOUT# clock output (0.01-0.99).
   CLKOUT0_DUTY_CYCLE => 0.5,
   CLKOUT1_DUTY_CYCLE => 0.5,
   CLKOUT2_DUTY_CYCLE => 0.5,
   CLKOUT3_DUTY_CYCLE => 0.5,
   CLKOUT4_DUTY_CYCLE => 0.5,
   CLKOUT5_DUTY_CYCLE => 0.5,
   -- CLKOUT0_PHASE - CLKOUT5_PHASE: Output phase relationship for CLKOUT# clock output (-360.0-360.0).
   CLKOUT0_PHASE => 0.0,
   CLKOUT1_PHASE => 0.0,
   CLKOUT2_PHASE => 0.0,
   CLKOUT3_PHASE => 0.0,
   CLKOUT4_PHASE => 0.0,
   CLKOUT5_PHASE => 0.0,
   CLK_FEEDBACK => "CLKFBOUT",           -- Clock source to drive CLKFBIN ("CLKFBOUT" or "CLKOUT0")
   COMPENSATION => "SYSTEM_SYNCHRONOUS", -- "SYSTEM_SYNCHRONOUS", "SOURCE_SYNCHRONOUS", "EXTERNAL"
   DIVCLK_DIVIDE => 1,                   -- Division value for all output clocks (1-52)
   REF_JITTER => 0.1,                    -- Reference Clock Jitter in UI (0.000-0.999).
   RESET_ON_LOSS_OF_LOCK => FALSE        -- Must be set to FALSE
)
port map (
   CLKFBOUT => CLKFBOUT, -- 1-bit output: PLL_BASE feedback output
   -- CLKOUT0 - CLKOUT5: 1-bit (each) output: Clock outputs
   CLKOUT0 => CLKOUT0,
   CLKOUT1 => CLKOUT1,
   CLKOUT2 => CLKOUT2,
   CLKOUT3 => CLKOUT3,
   CLKOUT4 => CLKOUT4,
   CLKOUT5 => CLKOUT5,
   LOCKED => LOCKED,     -- 1-bit output: PLL_BASE lock status output
   CLKFBIN => CLKFBIN,   -- 1-bit input: Feedback clock input
   CLKIN => CLKIN,       -- 1-bit input: Clock input
   RST => RST            -- 1-bit input: Reset input
);

-- End of PLL_BASE_inst instantiation
