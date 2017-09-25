-- IODELAY2: Input and Output Fixed or Variable Delay Element
--           Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

IODELAY2_inst : IODELAY2
generic map (
   COUNTER_WRAPAROUND => "WRAPAROUND", -- "STAY_AT_LIMIT" or "WRAPAROUND"
   DATA_RATE => "SDR",                 -- "SDR" or "DDR"
   DELAY_SRC => "IO",                  -- "IO", "ODATAIN" or "IDATAIN"
   IDELAY2_VALUE => 0,                 -- Delay value when IDELAY_MODE="PCI" (0-255)
   IDELAY_MODE => "NORMAL",            -- "NORMAL" or "PCI"
   IDELAY_TYPE => "DEFAULT",           -- "FIXED", "DEFAULT", "VARIABLE_FROM_ZERO", "VARIABLE_FROM_HALF_MAX"
                                       -- or "DIFF_PHASE_DETECTOR"
   IDELAY_VALUE => 0,                  -- Amount of taps for fixed input delay (0-255)
   ODELAY_VALUE => 0,                  -- Amount of taps fixed output delay (0-255)
   SERDES_MODE => "NONE",              -- "NONE", "MASTER" or "SLAVE"
   SIM_TAPDELAY_VALUE => 75            -- Per tap delay used for simulation in ps
)
port map (
   BUSY => BUSY,         -- 1-bit output: Busy output after CAL
   DATAOUT => DATAOUT,   -- 1-bit output: Delayed data output to ISERDES/input register
   DATAOUT2 => DATAOUT2, -- 1-bit output: Delayed data output to general FPGA fabric
   DOUT => DOUT,         -- 1-bit output: Delayed data output
   TOUT => TOUT,         -- 1-bit output: Delayed 3-state output
   CAL => CAL,           -- 1-bit input: Initiate calibration input
   CE => CE,             -- 1-bit input: Enable INC input
   CLK => CLK,           -- 1-bit input: Clock input
   IDATAIN => IDATAIN,   -- 1-bit input: Data input (connect to top-level port or I/O buffer)
   INC => INC,           -- 1-bit input: Increment / decrement input
   IOCLK0 => IOCLK0,     -- 1-bit input: Input from the I/O clock network
   IOCLK1 => IOCLK1,     -- 1-bit input: Input from the I/O clock network
   ODATAIN => ODATAIN,   -- 1-bit input: Output data input from output register or OSERDES2.
   RST => RST,           -- 1-bit input: Reset to zero or 1/2 of total delay period
   T => T                -- 1-bit input: 3-state input signal
);

-- End of IODELAY2_inst instantiation
