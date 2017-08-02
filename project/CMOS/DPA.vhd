----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
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

entity DPA is
	port(Clk_DDR: std_logic;
		Clk_DDR_Div: std_logic;
		Cmd_Training:in  std_logic;    ----training command
		LVDS_IN_P:in std_logic;      ----LVDS data
		LVDS_IN_N:in std_logic;  
		Training_Done:out std_logic;       ----Training finish
		LVDS_Dout:out std_logic_vector (11 downto 0);	----LVDS Dout
		LVDS_Clk:out std_logic;
		LVDS_Dlen_n:out std_logic    ----LVDS Clk
		);
end DPA;

architecture Behavioral of DPA is
	
	signal Clk_DDR_Rst_n:std_logic:='0';
	signal Cnt_DDR_Rst_n:integer range 0 to 255:=0;
	signal Iserdes_Dlyce:std_logic:='0';
	signal Iserdes_Dlyrst:std_logic:='0';
	signal Iserdes_Bitslip:std_logic:='0';
	signal Tem_LVDS_OUT:std_logic_vector(11 downto 0);
	signal Cmd_Training_r,Cmd_Training_rr,Cmd_Training_rrr,Cmd_Training_rrrr:std_logic:='0';
	signal Tri_Cmd_Training:std_logic:='0';
	type FSM_Align is (S_IDLE, S_RESET_1, S_RESET_2, S_WORD_ALIGN, S_FINISH,
					S_EYE_SAMPLE, S_EYE_CHECK, S_EYE_DELAY, S_EYE_CALC, S_EYE_CENTER);
	type FSM_Eye is (S_FIND_EDGE_1, S_EDGE_1, S_FIND_EDGE_2);
	signal Eye_State: FSM_Eye := S_FIND_EDGE_1;
	signal Align_Ctl_State: FSM_Align := S_IDLE;
	signal Cnt_Align:integer range 0 to 15:=0;
	signal Data_Stable:std_logic := '0';
	signal Cnt_Step:integer range 0 to 127:=0;	
	signal Cnt_Error:integer range 0 to 7:=0;
	signal Cnt_Sample:integer range 0 to 15:=0;
	signal Data_Curr:std_logic_vector (11 downto 0) := (others => '0');	
	signal Data_Prev:std_logic_vector (11 downto 0) := (others => '0');	
	signal Loc_Eye_Start:integer range 0 to 127:=0;	
	signal Loc_Eye_Mid:integer range 0 to 127:=0;	
	signal Loc_Eye_End:integer range 0 to 127:=0;	
	signal Cnt_Bitslip:integer range 0 to 15;
	
	
	constant Training_Word : std_logic_vector(11 downto 0) := x"719";

	component IDB is
	  port (Data_Ser_p:in std_logic;
			Data_Ser_N:in std_logic;	
			Clk_DDR_Div:in std_logic;
			Clk_DDR:in std_logic;
			Dlyce:in std_logic;
			Dlyrst:in std_logic;
			Bitslip:in std_logic;		
			Data_Par:out std_logic_vector(11 downto 0);
			Data_Len_n:out std_logic
		);
	end component;

begin
	LVDS_Clk<=Clk_DDR;
	
------------------------------			
	process(Clk_DDR_Div) begin	
		if rising_edge(Clk_DDR_Div) then
			if Cnt_DDR_Rst_n=255 then	
				Cnt_DDR_Rst_n<=255;
			else	
				Cnt_DDR_Rst_n<=Cnt_DDR_Rst_n+1;
			end if;
			
			case Cnt_DDR_Rst_n is
				 when 255 =>
					Clk_DDR_Rst_n<='1';
				when others =>
					Clk_DDR_Rst_n<='0';
			end case;
		end if;
	end process;

	Inst_IDB: IDB
		port map(Data_Ser_p=>LVDS_IN_P,
				Data_Ser_N=>LVDS_IN_N,
				Clk_DDR_Div=>Clk_DDR_Div,
				Clk_DDR=>Clk_DDR,
				Dlyce=>Iserdes_Dlyce,
				Dlyrst=>Iserdes_Dlyrst,
				Bitslip=>Iserdes_Bitslip,
				Data_Par=>Tem_LVDS_OUT,
				Data_Len_n=>LVDS_Dlen_n
				);
	Data_Curr<=Tem_LVDS_OUT;	
	LVDS_Dout<=Tem_LVDS_OUT;
	
	
	process(Clk_DDR_Div) begin
		if rising_edge(Clk_DDR_Div) then
			Cmd_Training_r<=Cmd_Training;
			Cmd_Training_rr<=Cmd_Training_r;
			Cmd_Training_rrr<=Cmd_Training_rr;
			Cmd_Training_rrrr<=Cmd_Training_rrr;
		end if;
	end process;
	
	process(Clk_DDR_Div) begin
		if rising_edge(Clk_DDR_Div) then
			if Cmd_Training_rrrr='0' and Cmd_Training_rrr='1' then
				Tri_Cmd_Training<='1';
			else
				Tri_Cmd_Training<='0';
			end if;
		end if;
	end process;
--------------------------------------------------------------dynamic ajust
	process (Clk_DDR_Div) begin
		if (Clk_DDR_Div'event and Clk_DDR_Div = '1') then
			if (Clk_DDR_Rst_n = '0') then
				Align_Ctl_State<=S_IDLE;
				Eye_State<=S_FIND_EDGE_1;
				Cnt_Align<= 0;
				Cnt_Step<= 0;
				Cnt_Error<= 0;
				Cnt_Sample<= 0;
				Data_Prev<= (others => '0');
				Data_Stable<= '1';
				Iserdes_Dlyce<= '0';
				Iserdes_Dlyrst<= '0';
				Iserdes_Bitslip<= '0';
				Loc_Eye_Start<=0;
				Loc_Eye_Mid<=0;
				Loc_Eye_End<=0;
				Cnt_Bitslip<=0;
				Training_Done<='0';
			else
				Iserdes_Dlyrst    <= '0';
				Iserdes_Dlyce     <= '0';
				Iserdes_Bitslip   <= '0';

				case Align_Ctl_State is
					when S_IDLE =>
						if Tri_Cmd_Training = '1' then
							Align_Ctl_State <= S_RESET_1;	
							Training_Done<='1';
						end if;
						Cnt_Bitslip<=0;
						Cnt_Align<= 15;
						Cnt_Step<= 0;
						Loc_Eye_Start <= 0;
						Loc_Eye_Mid<=0;
						Loc_Eye_End<=0;
						
					when S_RESET_1 =>      ----first reset
						if (Cnt_Align = 0) then
							Align_Ctl_State   <= S_EYE_SAMPLE;
							Eye_State   <= S_FIND_EDGE_1;
							Data_Stable <= '1';
							Data_Prev   <= Data_Curr;
							Cnt_Sample <= 15;
							Cnt_Error   <= 0;
						else
							Cnt_Align   <= Cnt_Align - 1;
						end if;
					
						if (Cnt_Align = 15) then   ----the first cycle reset iserdes
							Iserdes_Dlyrst  <= '1';
						end if;
					
					when S_EYE_SAMPLE =>        ----to find the transition
						if (Cnt_Sample = 0) then
							Data_Prev   <= Data_Curr; ----compare 16 times,if not vary,then move one delay
							Align_Ctl_State   <= S_EYE_DELAY;
							Cnt_Align   <= 15;                -----if there is a vary,then catch the edge
						else
							Cnt_Sample <= Cnt_Sample - 1;
						end if;
						
						if (Data_Curr /= Data_Prev) then   -----data transition
							Data_Stable   <= '0';
						end if;
						
					when S_EYE_DELAY =>
						if (Cnt_Align = 15) then
							Iserdes_Dlyce <= '1';
						end if;

						if (Cnt_Align = 0) then
						  Align_Ctl_State   <= S_EYE_CHECK;
						else
						  Cnt_Align   <= Cnt_Align - 1;
						end if;

				  --
					when S_EYE_CHECK =>  ----if find the edge,then catch the steps,if not,move on ,to eye sample
						case Cnt_Step is
							when 63 =>
								Align_Ctl_State <= S_EYE_CALC;
								case Eye_State is
									when S_FIND_EDGE_1 =>
										Loc_Eye_Start <= 0;
										Loc_Eye_End <= 63;
									when S_EDGE_1 =>
										Loc_Eye_Start <= 0;
										Loc_Eye_End <= 0;
									when S_FIND_EDGE_2 =>
										case Loc_Eye_Start is
											when 0 to 28 =>
												Loc_Eye_Start <= 63;
												Loc_Eye_End <= 63;
											when others =>
												Loc_Eye_Start <= 0;
												Loc_Eye_End <= 0;
										end case;
									when others =>
										Cnt_Step<=0;
								end case;
									
							when others =>
								case Cnt_Error is  ---Cnt_Error:if catch the edge,make the data delay 8 cycle to find the next edge
									when 0 =>
										case Eye_State is
											when S_FIND_EDGE_1 =>
												if (Data_Stable = '0') then
													Eye_State   <= S_EDGE_1;
													Cnt_Error   <= 7;
													Loc_Eye_Start <= Cnt_Step;
												end if;
												Align_Ctl_State<= S_EYE_SAMPLE;
											when S_EDGE_1 =>
												if Data_Stable = '1' then
													Eye_State     <= S_FIND_EDGE_2;
													Cnt_Error     <= 0;
													
												end if;
												Align_Ctl_State<= S_EYE_SAMPLE;
											when S_FIND_EDGE_2 =>
												if Data_Stable = '0' then
													Align_Ctl_State   <= S_EYE_CALC;
													Loc_Eye_End <= Cnt_Step;
												else	
													Align_Ctl_State<= S_EYE_SAMPLE;
												end if;
												
											when others =>
												Eye_State<=S_FIND_EDGE_1;
										end case;
									when others =>
											Align_Ctl_State<= S_EYE_SAMPLE;
											Data_Stable <= '1';
								end case;
								Cnt_Step   <= Cnt_Step + 1;
						end case;
					
						Cnt_Sample <= 15;
						
						Data_Stable <= '1';	

						if (Cnt_Error /= 0) then
							Cnt_Error<= Cnt_Error - 1;
						end if;
					when S_EYE_CALC =>
						Align_Ctl_State   <= S_RESET_2;
						Cnt_Align   <= 15;
					--	Sum <= Loc_Eye_Start + Loc_Eye_End;
						
						Loc_Eye_Mid <= conv_integer("00" & conv_std_logic_vector(Loc_Eye_Start+Loc_Eye_End,7)(6 downto 1));-----(start + end )/2
						Cnt_Step<= conv_integer("00" & conv_std_logic_vector(Loc_Eye_Start+Loc_Eye_End,7)(6 downto 1));

					when S_RESET_2 =>
						if (Cnt_Align=15) then
							Iserdes_Dlyrst<='1';
						end if;

						if Cnt_Align=0 then
							Align_Ctl_State<= S_EYE_CENTER;
							Cnt_Align<= 15;
						else
							Cnt_Align<= Cnt_Align - 1;
						end if;
				  ------
				    when S_EYE_CENTER =>   ----turn back to data center
						if Cnt_Align = 15 then
						  Iserdes_Dlyce<= '1';
						end if;

						if Cnt_Align = 0 then
							case Cnt_Step is
								when 0 | 1 =>
								Align_Ctl_State<=S_WORD_ALIGN;
									Cnt_Align<= 0;
									Cnt_Step<= 0;
								when others =>
									Cnt_Step<= Cnt_Step - 1;
									Cnt_Align<= 15;
							end case;
						else
							Cnt_Align<=Cnt_Align - 1;
						end if;

				    when S_WORD_ALIGN =>         
						if Cnt_Align = 0 then
							if Data_Curr = Training_Word then				    
								Align_Ctl_State<= S_FINISH;
							else
								if Cnt_Bitslip=15 then	
									Align_Ctl_State<=S_IDLE;
								else
									Iserdes_Bitslip<= '1';
									Cnt_Align<=15;
									Cnt_Bitslip<=Cnt_Bitslip+1;
								end if;
							end if;
						else
						  Cnt_Align<=Cnt_Align-1;
						end if;
					when S_FINISH =>
						Training_Done<='1';
						Align_Ctl_State   <= S_IDLE;
				end case;
		    end if;
		end if;
	end process;
end Behavioral;
