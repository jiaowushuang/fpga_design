-- SIM_CONFIG_S6: Behavioral Simulation-only Model of FPGA SelectMap Configuration 
--                Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

SIM_CONFIG_S6_inst : SIM_CONFIG_S6
generic map (
   DEVICE_ID => X"00000000")  -- Specifies the Pre-programmed Device ID value
port map (
   BUSY => BUSY,   -- 1-bit output Busy pin
   CSOB => CSOB,   -- 1-bit output chip select pin
   DONE => DONE,   -- 1-bit bi-directional Done pine
   CCLK => CCLK,   -- 1-bit input configuration clock
   D => D,         -- 8-bit bi-directional configuration data
   INITB =>INITB, -- 1-bit bi-directional INIT status pin
   M => M,         -- 3-bit input Mode pins
   PROGB => PROGB, -- 1-bit input Program pin
   RDWRB => RDWRB  -- 1-bit input Read/Write pin
);

-- End of SIM_CONFIG_S6_inst instantiation
