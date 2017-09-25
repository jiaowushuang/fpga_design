-- POST_CRC_INTERNAL: Post-configuration CRC error detection
--                    Spartan-6
-- Xilinx HDL Libraries Guide, version 14.7

POST_CRC_INTERNAL_inst : POST_CRC_INTERNAL
port map (
   CRCERROR => CRCERROR  -- 1-bit output: Post-configuration CRC error output
);

-- End of POST_CRC_INTERNAL_inst instantiation
