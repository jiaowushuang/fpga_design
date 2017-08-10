--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:47:05 12/12/2014
-- Design Name:   
-- Module Name:   E:/working/Project/G200/Program/GVISION200/tb_clocking.vhd
-- Project Name:  GVISION200
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clocking
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_clocking IS
END tb_clocking;
 
ARCHITECTURE behavior OF tb_clocking IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clocking
    PORT(
         clk_25M : IN  std_logic;
         rst_n : IN  std_logic;
         clk_main : OUT  std_logic;
         clk_sdr_p : OUT  std_logic;
         clk_sdr_n : OUT  std_logic;
         clk_main_out : IN  std_logic;
         clk_ddr_p : IN  std_logic;
         clk_ddr_n : IN  std_logic;
         rst_sys_n : OUT  std_logic;
         clk_sys : OUT  std_logic;
         clk_col : OUT  std_logic;
         clk_rxg : OUT  std_logic;
         clk_rxio : OUT  std_logic;
         clk_rxg_x2 : OUT  std_logic;
         rx_strobe : OUT  std_logic;
         clk_txg : OUT  std_logic;
         clk_txio : OUT  std_logic;
         tx_strobe : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_25M : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal clk_main_out : std_logic := '0';
   signal clk_ddr_p : std_logic := '0';
   signal clk_ddr_n : std_logic := '0';

 	--Outputs
   signal clk_main : std_logic;
   signal clk_sdr_p : std_logic;
   signal clk_sdr_n : std_logic;
   signal rst_sys_n : std_logic;
   signal clk_sys : std_logic;
   signal clk_col : std_logic;
   signal clk_rxg : std_logic;
   signal clk_rxio : std_logic;
   signal clk_rxg_x2 : std_logic;
   signal rx_strobe : std_logic;
   signal clk_txg : std_logic;
   signal clk_txio : std_logic;
   signal tx_strobe : std_logic;

   -- Clock period definitions
   constant clk_25M_period : time := 10 ns;
   constant clk_main_period : time := 10 ns;
   constant clk_sdr_p_period : time := 10 ns;
   constant clk_sdr_n_period : time := 10 ns;
   constant clk_main_out_period : time := 10 ns;
   constant clk_ddr_p_period : time := 10 ns;
   constant clk_ddr_n_period : time := 10 ns;
   constant clk_sys_period : time := 10 ns;
   constant clk_col_period : time := 10 ns;
   constant clk_rxg_period : time := 10 ns;
   constant clk_rxio_period : time := 10 ns;
   constant clk_rxg_x2_period : time := 10 ns;
   constant clk_txg_period : time := 10 ns;
   constant clk_txio_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clocking PORT MAP (
          clk_25M => clk_25M,
          rst_n => rst_n,
          clk_main => clk_main,
          clk_sdr_p => clk_sdr_p,
          clk_sdr_n => clk_sdr_n,
          clk_main_out => clk_main_out,
          clk_ddr_p => clk_ddr_p,
          clk_ddr_n => clk_ddr_n,
          rst_sys_n => rst_sys_n,
          clk_sys => clk_sys,
          clk_col => clk_col,
          clk_rxg => clk_rxg,
          clk_rxio => clk_rxio,
          clk_rxg_x2 => clk_rxg_x2,
          rx_strobe => rx_strobe,
          clk_txg => clk_txg,
          clk_txio => clk_txio,
          tx_strobe => tx_strobe
        );

   -- Clock process definitions
   clk_25M_process :process
   begin
		clk_25M <= '0';
		wait for clk_25M_period/2;
		clk_25M <= '1';
		wait for clk_25M_period/2;
   end process;
 
   clk_main_process :process
   begin
		clk_main <= '0';
		wait for clk_main_period/2;
		clk_main <= '1';
		wait for clk_main_period/2;
   end process;
 
   clk_sdr_p_process :process
   begin
		clk_sdr_p <= '0';
		wait for clk_sdr_p_period/2;
		clk_sdr_p <= '1';
		wait for clk_sdr_p_period/2;
   end process;
 
   clk_sdr_n_process :process
   begin
		clk_sdr_n <= '0';
		wait for clk_sdr_n_period/2;
		clk_sdr_n <= '1';
		wait for clk_sdr_n_period/2;
   end process;
 
   clk_main_out_process :process
   begin
		clk_main_out <= '0';
		wait for clk_main_out_period/2;
		clk_main_out <= '1';
		wait for clk_main_out_period/2;
   end process;
 
   clk_ddr_p_process :process
   begin
		clk_ddr_p <= '0';
		wait for clk_ddr_p_period/2;
		clk_ddr_p <= '1';
		wait for clk_ddr_p_period/2;
   end process;
 
   clk_ddr_n_process :process
   begin
		clk_ddr_n <= '0';
		wait for clk_ddr_n_period/2;
		clk_ddr_n <= '1';
		wait for clk_ddr_n_period/2;
   end process;
 
   clk_sys_process :process
   begin
		clk_sys <= '0';
		wait for clk_sys_period/2;
		clk_sys <= '1';
		wait for clk_sys_period/2;
   end process;
 
   clk_col_process :process
   begin
		clk_col <= '0';
		wait for clk_col_period/2;
		clk_col <= '1';
		wait for clk_col_period/2;
   end process;
 
   clk_rxg_process :process
   begin
		clk_rxg <= '0';
		wait for clk_rxg_period/2;
		clk_rxg <= '1';
		wait for clk_rxg_period/2;
   end process;
 
   clk_rxio_process :process
   begin
		clk_rxio <= '0';
		wait for clk_rxio_period/2;
		clk_rxio <= '1';
		wait for clk_rxio_period/2;
   end process;
 
   clk_rxg_x2_process :process
   begin
		clk_rxg_x2 <= '0';
		wait for clk_rxg_x2_period/2;
		clk_rxg_x2 <= '1';
		wait for clk_rxg_x2_period/2;
   end process;
 
   clk_txg_process :process
   begin
		clk_txg <= '0';
		wait for clk_txg_period/2;
		clk_txg <= '1';
		wait for clk_txg_period/2;
   end process;
 
   clk_txio_process :process
   begin
		clk_txio <= '0';
		wait for clk_txio_period/2;
		clk_txio <= '1';
		wait for clk_txio_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_25M_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
