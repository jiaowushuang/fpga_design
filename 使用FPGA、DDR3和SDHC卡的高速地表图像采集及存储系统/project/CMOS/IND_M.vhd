----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:44 03/06/2017 
-- Design Name: 
-- Module Name:    IND_M - Behavioral 
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

entity IND_M is
	port(Clk200m:in std_logic;    -----for IDELAYCTRL  
		CLK200M_Rst:in std_logic;
		LVDS_IN_CLK_P:in std_logic;	    ----LVDS CLK								
		LVDS_IN_CLK_N:in std_logic;
		Cmd_Training:in std_logic;
		LVDS_IN_P:in std_logic_vector(11 downto 0);
		LVDS_IN_N:in std_logic_vector(11 downto 0);
		LVDS_OUT1:out std_logic_vector(11 downto 0);
		LVDS_OUT2:out std_logic_vector(11 downto 0);
		LVDS_OUT3:out std_logic_vector(11 downto 0);
		LVDS_OUT4:out std_logic_vector(11 downto 0);
		LVDS_OUT5:out std_logic_vector(11 downto 0);
		LVDS_OUT6:out std_logic_vector(11 downto 0);
		LVDS_OUT7:out std_logic_vector(11 downto 0);
		LVDS_OUT8:out std_logic_vector(11 downto 0);
		LVDS_OUT9:out std_logic_vector(11 downto 0);
		LVDS_OUT10:out std_logic_vector(11 downto 0);
		LVDS_OUT11:out std_logic_vector(11 downto 0);
		LVDS_OUT12:out std_logic_vector(11 downto 0);
		LVDS_OUT_Clk:out std_logic;
		Training_Done:out std_logic_vector(11 downto 0);
		LVDS_OUT_Dlen_n:out std_logic_vector(11 downto 0)
		);
end IND_M;

architecture Behavioral of IND_M is
	signal Clk_DDR:std_logic:='0';
	signal Tem_Clk_DDR:std_logic:='0';
	signal Clk_DDR_DIV:std_logic:='0';
	signal Tem_Clk_DDR_DIV:std_logic:='0';
	signal Cnt_DDRDIV:integer range 0 to 5:=0;
	signal Training_Down:std_logic;
	signal LVDS_Datain_P:std_logic_vector(11 downto 0);
	signal LVDS_Datain_N:std_logic_vector(11 downto 0);
	signal LVDS_OUT_Dlen:std_logic:='1';
	
	type  Tem_Data is array(11 downto 0) of std_logic_vector(11 downto 0);
	signal Tem_LVDS_OUT:Tem_Data:=(others=>(others=>'0'));
	component DPA is
		port(Clk_DDR: std_logic;
			Clk_DDR_Div: std_logic;
			Cmd_Training:in  std_logic;    ----training command
			LVDS_IN_P:in std_logic;      ----LVDS data
			LVDS_IN_N:in std_logic;  
			Training_Done:out std_logic;       ----Training finish
			LVDS_Dout:out std_logic_vector (11 downto 0);	----LVDS Out
			LVDS_Clk:out std_logic;
			LVDS_Dlen_n:out std_logic    ----LVDS Clk
			);
	end component;
	
--	attribute loc:string;
--	attribute loc of u1:label is "IDELAYCTRL_X0Y3";

begin
	LVDS_OUT_Clk<=Clk_DDR;
	
	LVDS_OUT1<=Tem_LVDS_OUT(0);
	LVDS_OUT2<=Tem_LVDS_OUT(1);
	LVDS_OUT3<=Tem_LVDS_OUT(2);
	LVDS_OUT4<=Tem_LVDS_OUT(3);
	LVDS_OUT5<=Tem_LVDS_OUT(4);
	LVDS_OUT6<=Tem_LVDS_OUT(5);
	LVDS_OUT7<=Tem_LVDS_OUT(6);
	LVDS_OUT8<=Tem_LVDS_OUT(7);
	LVDS_OUT9<=Tem_LVDS_OUT(8);
	LVDS_OUT10<=Tem_LVDS_OUT(9);
	LVDS_OUT11<=Tem_LVDS_OUT(10);
	LVDS_OUT12<=Tem_LVDS_OUT(11);

--	u1: IDELAYCTRL
--		port map (rst => Clk200m_Rst,
--				refclk => Clk200m);
				
	u2: IBUFGDS
		generic map (IOSTANDARD=> "DEFAULT")
			port map (i=> LVDS_IN_CLK_P,
					ib=> LVDS_IN_CLK_N,
					o=> Tem_Clk_DDR
					);
			
	u3 : BUFR
		generic map (
		BUFR_DIVIDE => "1", -- "BYPASS", "1", "2", "3", "4", "5", "6", "7", "8"
		SIM_DEVICE => "VIRTEX5") -- Specify target device, "VIRTEX4", "VIRTEX5", "VIRTEX6"
		port map (
		O =>Clk_DDR , -- Clock buffer output
		CE => '1', -- Clock enable input
		CLR => '0', -- Clock buffer reset input
		I => Tem_Clk_DDR -- Clock buffer input
		);
--	u3:BUFG
--		port map(I=>Tem_Clk_DDR,
--				O=>Clk_DDR
--				);
	process(Clk_DDR) begin
		if rising_edge(Clk_DDR) then
			if Cnt_DDRDIV=5 then
				Cnt_DDRDIV<=0;
			else
				Cnt_DDRDIV<=Cnt_DDRDIV+1;
			end if;
			
			case Cnt_DDRDIV is
				when 0 to 2 =>
					Tem_Clk_DDR_DIV<='1';
				when others =>
					Tem_Clk_DDR_DIV<='0';
			end case;
		end if;
	end process;
				
	u4:BUFG
		port map(I=>Tem_Clk_DDR_DIV,
				O=>Clk_DDR_DIV
				);			
---------------------------------------------------------				
	gen_DPA:for I_Gen in 11 downto 0 generate
	begin
		Inst_DPA:DPA
			port map(Clk_DDR=>Clk_DDR,
					Clk_DDR_Div=>Clk_DDR_Div,
					Cmd_Training=>Cmd_Training,
					LVDS_IN_P=>LVDS_IN_P(I_Gen),
					LVDS_IN_N=>LVDS_IN_N(I_Gen),
					Training_Done=>Training_Done(I_Gen),
					LVDS_Dout=>Tem_LVDS_OUT(I_Gen),
					--LVDS_Clk=>
					LVDS_Dlen_n=>LVDS_OUT_Dlen_n(I_Gen)
					);
	end generate;
	
	




	
--	
end Behavioral;

