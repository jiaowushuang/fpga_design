`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    sd_write 
//////////////////////////////////////////////////////////////////////////////////
module sd_write(  
						input SD_clk,
						output reg SD_cs,
						output reg SD_datain,
						input  SD_dataout,
						
						input [31:0] sec,            //写SD的sec地址
						input write_req,    

						output reg rx_valid,         
						
						input init,

						output reg [3:0] mystate,
						output reg write_o
						
						
    );
	 
wire [3:0] mystate_o;

reg [7:0] rx;
reg en;

reg [5:0] aa;	 
reg [21:0] cnt;

reg [7:0] write_data;

reg [47:0] CMD24={8'h58,8'h00,8'h00,8'h00,8'h00,8'hff};//CMD24的字节序列

reg [7:0] Sblock_token=8'hfe;

reg [7:0] CMDX;
reg [7:0] CMDY=8'hff;
reg [2:0] cnta;

/////////////////////////////
reg flag=0;
reg [11:0] sec_size;
parameter SEC_LEN=12'd3072;    //total sector size of one picture : 1024 * 768 * 2 /512
reg [15:0] delay_cnt;
reg [63:0] SD_datain_1;
reg [63:0] n=0;
/////////////////////////////

parameter idle=4'd0;
parameter write_cmd=4'd1;
parameter wait_8clk=4'd2;
parameter start_taken=4'd3;
parameter writea=4'd4;
parameter write_crc=4'd5;
parameter write_wait=4'd6;
parameter write_done=4'd7;
	 
always @(posedge SD_clk)
begin
	rx[0]<=SD_dataout;
	rx[7:1]<=rx[6:0];
end

//接收SD卡的应答数据
always @(posedge SD_clk)
begin
	if(!SD_dataout&&!en)begin rx_valid<=1'b0; aa<=1;en<=1'b1;end      //等待SD_dataout为低,SD_dataout为低,开始接收数据
   else if(en)	begin 
		if(aa<7) begin
			aa<=aa+1'b1; 
			rx_valid<=1'b0;
		end
		else begin
			aa<=0;
			en<=1'b0;
			rx_valid<=1'b1;             //接收完第8bit后,rx_valid信号开始有效
		end
	end
	else begin en<=1'b0;aa<=0;rx_valid<=1'b0;end
end

//SD卡写程序
always @(negedge SD_clk)
if(!init)
	begin
		mystate<=idle;
		CMD24<={8'h58,8'h00,8'h00,8'h00,8'h00,8'hff};
		write_o<=1'b0;
		sec_size<=0;
	end
else
	begin
	case(mystate)
		idle:	begin
				SD_cs<=1'b1;
				SD_datain<=1'b1;
				cnt<=22'd0;	
				if((write_o==1'b0) && (delay_cnt==10000)) begin          //如果有写请求			
						mystate<=write_cmd;
						CMD24<={8'h58,sec[31:24],sec[23:16],sec[15:8],sec[7:0],8'hff};
						Sblock_token<=8'hfe;
						write_o<=1'b0;
					end
				else begin
				mystate<=idle;
				delay_cnt<=delay_cnt+1'b1;	//延迟一秒，每个一秒写一个图像
				end
		end
		write_cmd: begin                    //发送CMD24命令 (single Block write)	
			   if(CMD24!=48'd0) begin
					SD_cs<=1'b0;
					SD_datain<=CMD24[47];
					CMD24<={CMD24[46:0],1'b0};     //移位输出						
				end
				else begin 
				   if(rx_valid) begin         //等待应答信号			
						cnta<=7;
						mystate<=wait_8clk;
						SD_cs<=1'b1;
					    SD_datain<=1'b1;					
					end
				end
		end
		wait_8clk: begin                     //写数据之前等待8clock
			 if(cnta>0) begin
					 cnta<=cnta-1'b1;
					 SD_cs<=1'b1;
					 SD_datain<=1'b1;
			 end
			 else begin
					 SD_cs<=1'b1;
					 SD_datain<=1'b1;
					 mystate<=start_taken;
					 cnta<=7;
			 end
		end		
		start_taken: begin             //发送Start Block Taken ：oxfe
			 if(cnta>0) begin
					 cnta<=cnta-1'b1;
					 SD_cs<=1'b0;
					 SD_datain<=Sblock_token[cnta];
			 end
			 else begin
					 SD_cs<=1'b0;
					 SD_datain<=Sblock_token[0];
					 mystate<=writea;
					 cnta<=7;
					 cnt<=0;
				end
		end
////////////////////////////////////////////////////////设置标志位flag，flag=0写入配置文件和图像数据；flag=1写入图像数据
		writea: begin
		if(flag==0)begin
			flag<=1;
			////////////////////////////////////////////配置文件内容，（簇）地址单位是4字节
			if(cnt<512)	begin		
			     if(cnta>0)	begin
				  		SD_cs<=1'b0;
						if(sec)begin
							SD_datain_1<=64'h2020202054534554;
							case(SD_datain_1[n])
							1'b0:begin
								SD_datain<=SD_datain_1[0];
						        cnta<=cnta-1'b1;
								n<=n+1;
							end
							1'b0:begin
								SD_datain<=SD_datain_1[0];
						        cnta<=cnta-1'b1;
								n<=n+1;
							end
							1'b1:begin
								SD_datain<=SD_datain_1[0];
						        cnta<=cnta-1'b1;
								n<=n+1;
							end
							default:n<=0;
							endcase
							end
							sec<=sec+2;
						end
						else if(sec+2)begin
							SD_datain_1<=64'h4D80841820545854;
							sec<=sec+2;
						end
						else if(sec+4)begin
							SD_datain_1<=64'h4D78000042A942A9;
							sec<=sec+2;
						end
						else if(sec+6)begin
							SD_datain_1<=64'h00000c00000342A9;//文件大小需写
							sec<=sec+2;
						end
					end
						else begin
				        SD_datain<=cnt[cnta];
						cnta<=cnta-1'b1;
					end
				  end
				else begin
				  		SD_cs<=1'b0;
						SD_datain<=cnt[0];
						cnta<=7;
						cnt<=cnt+1'b1;
				  end
				end
				else begin              //last byte
			     if(cnta>0)	begin
				        SD_datain<=cnt[cnta];
					    cnta<=cnta-1'b1;
				  end
				  else begin
						SD_datain<=cnt[cnta];
						cnta<=7;
						cnt<=0;
					    mystate<=write_crc;						
				  end
				end
			
			end
		else begin             //写512个bytes
				if(cnt<512)	begin		
			     if(cnta>0)	begin
				  		SD_cs<=1'b0;
				        SD_datain<=cnt[cnta];
						cnta<=cnta-1'b1;
				  end
				  else begin
				  		SD_cs<=1'b0;
						SD_datain<=cnt[0];
						cnta<=7;
						cnt<=cnt+1'b1;
				  end
				end
				else begin              //last byte
			     if(cnta>0)	begin
				        SD_datain<=cnt[cnta];
					    cnta<=cnta-1'b1;
				  end
				  else begin
						SD_datain<=cnt[cnta];
						cnta<=7;
						cnt<=0;
					    mystate<=write_crc;						
				  end
				end
			end
		end

///////////////////////////////////////////////////////////////////
		write_crc: begin               //写crc:0xff
				if(cnt<16) begin
					 SD_cs<=1'b0;
					 SD_datain<=1'b1;
					 cnt<=cnt+1'b1;
				 end
				 else begin
				    if(rx_valid)         //等待Data Response Token
							mystate<=write_wait;
					 else
							mystate<=write_crc;					 
				end
		end
		write_wait: begin               //等待数据写入完成
				if(rx==8'hff) begin
					mystate<=write_done;	 
				end
				else begin 
					mystate<=write_wait;
				end
		end
		write_done:begin
			  if(cnt<22'd15) begin      //等待15个clock
					SD_cs<=1'b1;
					SD_datain<=1'b1;
					cnt<=cnt+1'b1;
			  end
			  else begin  
				    cnt<=0;
					 if (sec_size<SEC_LEN) begin            //如果整幅图像还未写完 
 					     write_o<=1'b0;
                         sec <= sec + 8'h80;                 //加 512/4=128
						 sec_size <= sec_size +8'h80;
						 mystate<=idle;
					 end	 
					 else	begin	 
					     write_o<=1'b1;
						 mystate<=idle;
					 end	 

				end					
		end		
		default:mystate<=idle;
		endcase		
	end					
endmodule
