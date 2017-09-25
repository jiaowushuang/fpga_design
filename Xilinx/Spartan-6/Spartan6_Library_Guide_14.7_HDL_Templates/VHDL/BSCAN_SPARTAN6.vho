-- BSCAN_SPARTAN6: JTAG Boundary Scan Logic Control Circuit
--                 Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

BSCAN_SPARTAN6_inst : BSCAN_SPARTAN6
generic map (
   JTAG_CHAIN => 1  -- Value for USER command. Possible values: (1,2,3 or 4).
)
port map (
   CAPTURE => CAPTURE, -- 1-bit output: CAPTURE output from TAP controller.
   DRCK => DRCK,       -- 1-bit output: Data register output for USER functions.
   RESET => RESET,     -- 1-bit output: Reset output for TAP controller.
   RUNTEST => RUNTEST, -- 1-bit output: Output signal that gets asserted when TAP controller is in Run Test
                       -- Idle state.

   SEL => SEL,         -- 1-bit output: USER active output.
   SHIFT => SHIFT,     -- 1-bit output: SHIFT output from TAP controller.
   TCK => TCK,         -- 1-bit output: Scan Clock output. Fabric connection to TAP Clock pin.
   TDI => TDI,         -- 1-bit output: TDI output from TAP controller.
   TMS => TMS,         -- 1-bit output: Test Mode Select output. Fabric connection to TAP.
   UPDATE => UPDATE,   -- 1-bit output: UPDATE output from TAP controller
   TDO => TDO          -- 1-bit input: Data input for USER function.
);

-- End of BSCAN_SPARTAN6_inst instantiation
