-- SIM_CONFIG_S6_SERIAL: Behavioral Simulation-only Model of FPGA Serial Configuration 
--                       Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

SIM_CONFIG_S6_SERIAL_inst : SIM_CONFIG_S6_SERIAL
generic map (
   DEVICE_ID => X"00000000")  -- Specifies the Pre-programmed Device ID value
port map (
   DONE => DONE,   -- 1-bit bi-directional Done pine
   CCLK => CCLK,   -- 1-bit input configuration clock
   DIN => DIN,     -- 1-bit input configuration data
   INITB =>INITB,  -- 1-bit bi-directional INIT status pin
   M => M,         -- 3-bit input Mode pins
   PROGB => PROGB  -- 1-bit input Program pin
);

-- End of SIM_CONFIG_S6_SERIAL_inst instantiation
