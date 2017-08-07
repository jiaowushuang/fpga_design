----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 本模块手工做了一个Bitslip的过程，速度应该很快
-- Create Date:   
-- Design Name: 
-- Module Name:   
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity IDB is
  port (Data_Ser_p:in std_logic;
		Data_Ser_N:in std_logic;	
		Clk_DDR_Div:in  std_logic;
		Clk_DDR:in std_logic;
		Dlyce:in std_logic;
		Dlyrst:in std_logic;
		Bitslip:in std_logic;		
		Data_Par:out std_logic_vector(11 downto 0);
		Data_Len_n:out std_logic
    );
end IDB;

architecture Behavioral of IDB is
	signal Cnt_DDR_Rst:integer range 0 to 255:=0;
	signal Rst_DDR_n:std_logic:='0';
	signal Data_Ser           : std_logic;			
	signal Data_Ser_Dly       : std_logic;		----serial data with delay time
	signal Bitslip_r,Bitslip_rr,Bitslip_rrr,Bitslip_rrrr : std_logic := '0';		

	signal Bitslip_req        : std_logic := '0';
	signal Bitslip_even       : std_logic := '0';

	signal Iddr_Q1            : std_logic;
	signal Iddr_Q2            : std_logic;  
	signal Data_1             : std_logic;
	signal Data_2             : std_logic;
	signal Data_2_q           : std_logic;

	signal Load_Parallel      : std_logic := '0';
	signal Shift_Timer        : std_logic_vector ( 4 downto 0):= (others => '1');
	signal Shift_Data         : std_logic_vector (11 downto 0):= (others => '0');
	signal ClkPipeline : std_logic_vector(2 downto 0):=(others =>'1');
	signal Data_Par_Temp         : std_logic_vector (11 downto 0):= (others => '0');
	signal Tem_Data_Len_n:std_logic:='1';

begin
	Data_Len_n<=Tem_Data_Len_n;

	inst_ibufds: IBUFDS
		generic map (IOSTANDARD => "LVDS_25",
					DIFF_TERM  => true)
		port map(i=> Data_Ser_p,
				ib=> Data_Ser_N,
				o=> Data_Ser
				);
	 
  -- 64-tap延迟器 动态调整
	inst_idelay: IDELAY
		generic map (IOBDELAY_TYPE=> "VARIABLE",
					IOBDELAY_VALUE=> 0)
		port map(i=> Data_Ser,
				o => Data_Ser_Dly,
				inc=> '1',
				rst=> Dlyrst,
				ce=> Dlyce,
				c=> Clk_DDR_Div
				);

  -- DDR 双倍时钟采样
	inst_iddr: IDDR
		generic map (DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
					INIT_Q1=> '0',
					INIT_Q2=> '0',
					SRTYPE=> "SYNC"
					)
		port map (d=> Data_Ser_Dly,
				q1=> Iddr_Q1,
				q2=> Iddr_Q2,
				c=> Clk_DDR,
				r=> '0',
				s => '0',
				ce=> '1'
				);
	process(Clk_DDR) begin
		if rising_edge(Clk_DDR) then
			if Cnt_DDR_Rst=255 then
				Cnt_DDR_Rst<=255;
			else
				Cnt_DDR_Rst<=Cnt_DDR_Rst+1;
			end if;
			
			case Cnt_DDR_Rst is
				when 255 =>
					Rst_DDR_n<='1';
				when others =>
					Rst_DDR_n<='0';
			end case;
		end if;
	end process;

	process(Clk_DDR) begin	
		if rising_edge(Clk_DDR) then
			Bitslip_r<=Bitslip;
			Bitslip_rr<=Bitslip_r;
			Bitslip_rrr<=Bitslip_rr;
			Bitslip_rrrr<=Bitslip_rrr;
		end if;
	end process;
				

	process (Clk_DDR) begin
		if rising_edge(Clk_DDR) then
			if (Rst_DDR_n = '0') then
				Bitslip_req       <= '0';
				Bitslip_even      <= '0';
				Load_Parallel     <= '0';
				Data_1            <= '0';
				Data_2            <= '0';
				Data_2_q          <= '0';
				Shift_Timer       <= (others => '1');
				Shift_Data        <= (others => '0');
				Data_Par          <= (others => '0');
				Tem_Data_Len_n<='1';
			else
				if (Bitslip_rrr = '1' and Bitslip_rrrr = '0') then   -----catch rising edge of Bitslip
					if (Bitslip_even = '0') then
						Bitslip_even  <= '1';
						Bitslip_req   <= '1';
					else
						Bitslip_even  <= '0';
					end if;
				end if;
				
				Shift_Timer   <= '0' & Shift_Timer(Shift_Timer'high downto 1);
			
				if (Shift_Timer (2 downto 0) = "000") then   ---every  6 times
					Shift_Timer   <= (others => '1');
					Load_Parallel <= '1';
				elsif (Shift_Timer (2 downto 0) = "001") then    ----every 5 times
					if (Bitslip_req = '1') then
						Shift_Timer   <= (others => '1');
						Bitslip_req   <= '0';
						Load_Parallel <= '0';
					end if;
				else	
					Load_Parallel <= '0';
				end if;

			-- Safety measure to prevent lock-up situations
				if (Shift_Timer (2 downto 0) = "000") then
					Shift_Timer   <= (others => '1');
					Load_Parallel <= '1';
				end if;
		  
				Data_1      <= Iddr_Q1;
				Data_2      <= Iddr_Q2;
				Data_2_q    <= Data_2;

				if (Bitslip_even = '1') then
					Shift_Data  <=  Data_2 & Data_1 & Shift_Data(Shift_Data'high downto 2);
				else          
					Shift_Data  <=  Data_1 & Data_2_q & Shift_Data(Shift_Data'high downto 2);
				end if;
				  
				-- COPY SHIFT REGISTER TO PARALLEL DATA OUTPUT
				if (Load_Parallel = '1') then
					Data_Par_Temp  <= Shift_Data;
				end if;

				-- Phase adjust towards rising edge of parallel clock
				if ClkPipeline(1) = '1' and ClkPipeline(2) = '0' then
					Data_Par(11) <= Data_Par_Temp(0);
					Data_Par(10) <= Data_Par_Temp(1);
					Data_Par(9) <= Data_Par_Temp(2);
					Data_Par(8) <= Data_Par_Temp(3);
					Data_Par(7) <= Data_Par_Temp(4);
					Data_Par(6) <= Data_Par_Temp(5);
					Data_Par(5) <= Data_Par_Temp(6);
					Data_Par(4) <= Data_Par_Temp(7);
					Data_Par(3) <= Data_Par_Temp(8);
					Data_Par(2) <= Data_Par_Temp(9);
					Data_Par(1) <= Data_Par_Temp(10);
					Data_Par(0) <= Data_Par_Temp(11);
--					Data_Par<=Data_Par_Temp;

					Tem_Data_Len_n<='0';
				else	
					Tem_Data_Len_n<='1';
				end if;
				ClkPipeline <= ClkPipeline(1 downto 0) & Clk_DDR_Div;
			end if;
		end if; 
	end process;	  
end Behavioral;

