-- DSP48A1: 48-bit Multi-Functional Arithmetic Block
--          Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

DSP48A1_inst : DSP48A1
generic map (
   A0REG => 0,              -- First stage A input pipeline register (0/1)
   A1REG => 1,              -- Second stage A input pipeline register (0/1)
   B0REG => 0,              -- First stage B input pipeline register (0/1)
   B1REG => 1,              -- Second stage B input pipeline register (0/1)
   CARRYINREG => 1,         -- CARRYIN input pipeline register (0/1)
   CARRYINSEL => "OPMODE5", -- Specify carry-in source, "CARRYIN" or "OPMODE5"
   CARRYOUTREG => 1,        -- CARRYOUT output pipeline register (0/1)
   CREG => 1,               -- C input pipeline register (0/1)
   DREG => 1,               -- D pre-adder input pipeline register (0/1)
   MREG => 1,               -- M pipeline register (0/1)
   OPMODEREG => 1,          -- Enable=1/disable=0 OPMODE input pipeline registers
   PREG => 1,               -- P output pipeline register (0/1)
   RSTTYPE => "SYNC"        -- Specify reset type, "SYNC" or "ASYNC"
)
port map (
   -- Cascade Ports: 18-bit (each) output: Ports to cascade from one DSP48 to another
   BCOUT => BCOUT,           -- 18-bit output: B port cascade output
   PCOUT => PCOUT,           -- 48-bit output: P cascade output (if used, connect to PCIN of another DSP48A1)
   -- Data Ports: 1-bit (each) output: Data input and output ports
   CARRYOUT => CARRYOUT,     -- 1-bit output: carry output (if used, connect to CARRYIN pin of another
                             -- DSP48A1)

   CARRYOUTF => CARRYOUTF,   -- 1-bit output: fabric carry output
   M => M,                   -- 36-bit output: fabric multiplier data output
   P => P,                   -- 48-bit output: data output
   -- Cascade Ports: 48-bit (each) input: Ports to cascade from one DSP48 to another
   PCIN => PCIN,             -- 48-bit input: P cascade input (if used, connect to PCOUT of another DSP48A1)
   -- Control Input Ports: 1-bit (each) input: Clocking and operation mode
   CLK => CLK,               -- 1-bit input: clock input
   OPMODE => OPMODE,         -- 8-bit input: operation mode input
   -- Data Ports: 18-bit (each) input: Data input and output ports
   A => A,                   -- 18-bit input: A data input
   B => B,                   -- 18-bit input: B data input (connected to fabric or BCOUT of adjacent DSP48A1)
   C => C,                   -- 48-bit input: C data input
   CARRYIN => CARRYIN,       -- 1-bit input: carry input signal (if used, connect to CARRYOUT pin of another
                             -- DSP48A1)

   D => D,                   -- 18-bit input: B pre-adder data input
   -- Reset/Clock Enable Input Ports: 1-bit (each) input: Reset and enable input ports
   CEA => CEA,               -- 1-bit input: active high clock enable input for A registers
   CEB => CEB,               -- 1-bit input: active high clock enable input for B registers
   CEC => CEC,               -- 1-bit input: active high clock enable input for C registers
   CECARRYIN => CECARRYIN,   -- 1-bit input: active high clock enable input for CARRYIN registers
   CED => CED,               -- 1-bit input: active high clock enable input for D registers
   CEM => CEM,               -- 1-bit input: active high clock enable input for multiplier registers
   CEOPMODE => CEOPMODE,     -- 1-bit input: active high clock enable input for OPMODE registers
   CEP => CEP,               -- 1-bit input: active high clock enable input for P registers
   RSTA => RSTA,             -- 1-bit input: reset input for A pipeline registers
   RSTB => RSTB,             -- 1-bit input: reset input for B pipeline registers
   RSTC => RSTC,             -- 1-bit input: reset input for C pipeline registers
   RSTCARRYIN => RSTCARRYIN, -- 1-bit input: reset input for CARRYIN pipeline registers
   RSTD => RSTD,             -- 1-bit input: reset input for D pipeline registers
   RSTM => RSTM,             -- 1-bit input: reset input for M pipeline registers
   RSTOPMODE => RSTOPMODE,   -- 1-bit input: reset input for OPMODE pipeline registers
   RSTP => RSTP              -- 1-bit input: reset input for P pipeline registers
);

-- End of DSP48A1_inst instantiation
