ddr_rw instance_name (

    .camera_clk(camera_clk), 
    .vga_clk(vga_clk), 
    .c3_clk0(c3_clk0), 
    .usb_clk(usb_clk), 
	 
    .frame_switch(frame_switch),  
	.nframe(nframe), 

    .ddr_data_camera(ddr_data_camera), 
    .ddr_wren(ddr_wren), 
    .ddr_addr_wr_set(ddr_addr_wr_set), 
    .ddr_wr_req(ddr_wr_req), 
    .ddr_write_state(ddr_write_state),
 
    .ddr_data_vga(ddr_data_vga), 
    .ddr_rden(ddr_rden), 
    .ddr_rd_req(ddr_rd_req), 
    .ddr_addr_rd_set(ddr_addr_rd_set), 
    .ddr_rd_cmd(ddr_rd_cmd), 
   
	 
    .c3_p0_wr_underrun(c3_p0_wr_underrun), 
    .c3_p0_wr_full(c3_p0_wr_full), 
    .c3_p0_cmd_full(c3_p0_cmd_full), 
    .c3_p1_rd_overflow(c3_p1_rd_overflow), 
    .c3_p1_rd_empty(c3_p1_rd_empty), 
    .c3_p1_cmd_full(c3_p1_cmd_full), 
    .c3_calib_done(c3_calib_done),                  
	 
    .mcb3_dram_dq(mcb3_dram_dq), 
    .mcb3_dram_a(mcb3_dram_a), 
    .mcb3_dram_ba(mcb3_dram_ba), 
    .mcb3_dram_ras_n(mcb3_dram_ras_n), 
    .mcb3_dram_cas_n(mcb3_dram_cas_n), 
    .mcb3_dram_we_n(mcb3_dram_we_n), 
    .mcb3_dram_odt(mcb3_dram_odt), 
    .mcb3_dram_cke(mcb3_dram_cke), 
    .mcb3_dram_dm(mcb3_dram_dm), 
    .mcb3_dram_udqs(mcb3_dram_udqs), 
    .mcb3_dram_udqs_n(mcb3_dram_udqs_n), 
    .mcb3_rzq(mcb3_rzq), 
    .mcb3_zio(mcb3_zio), 
    .mcb3_dram_udm(mcb3_dram_udm), 
	 
    .c3_sys_clk(c3_sys_clk), 
    .c3_sys_rst_n(c3_sys_rst_n), 
    .c3_rst0(c3_rst0), 
	 
    .mcb3_dram_dqs(mcb3_dram_dqs), 
    .mcb3_dram_dqs_n(mcb3_dram_dqs_n), 
    .mcb3_dram_ck(mcb3_dram_ck), 
    .mcb3_dram_ck_n(mcb3_dram_ck_n)
);


mig_39_2 #
      (
         .C3_P0_MASK_SIZE                (8),
         .C3_P0_DATA_PORT_SIZE           (64),
         .C3_P1_MASK_SIZE                (8),
         .C3_P1_DATA_PORT_SIZE           (64),			
         .DEBUG_EN                       (0),                     //   = 0, Disable debug signals/controls.
         .C3_MEMCLK_PERIOD               (3200),
         .C3_CALIB_SOFT_IP               ("TRUE"),                // # = TRUE, Enables the soft calibration logic,
         .C3_SIMULATION                  ("FALSE"),               // # = FALSE, Implementing the design.
         .C3_RST_ACT_LOW                 (1),                     // # = 1 for active low reset change for AX516 board
         .C3_INPUT_CLK_TYPE              ("SINGLE_ENDED"),
         .C3_MEM_ADDR_ORDER              ("ROW_BANK_COLUMN"),
         .C3_NUM_DQ_PINS                 (16),
         .C3_MEM_ADDR_WIDTH              (13),  
         .C3_MEM_BANKADDR_WIDTH          (3)

       )

      mig_39_2_inst
      (
         .mcb3_dram_dq			                 (mcb3_dram_dq),
         .mcb3_dram_a			                 (mcb3_dram_a), 
         .mcb3_dram_ba			                 (mcb3_dram_ba),
         .mcb3_dram_ras_n			             (mcb3_dram_ras_n),
         .mcb3_dram_cas_n			             (mcb3_dram_cas_n),
         .mcb3_dram_we_n  	                     (mcb3_dram_we_n),
         .mcb3_dram_odt			                 (mcb3_dram_odt),
         .mcb3_dram_cke                          (mcb3_dram_cke),
         .mcb3_dram_dm                           (mcb3_dram_dm),
         .mcb3_dram_udqs                         (mcb3_dram_udqs),
         .mcb3_dram_udqs_n	                     (mcb3_dram_udqs_n),
         .mcb3_rzq	                             (mcb3_rzq),                 校准输入终端有效时连接
         .mcb3_zio	                             (mcb3_zio),                 校准输入终端有效时连接；软校验模式时不能连接信号
         .mcb3_dram_udm	                         (mcb3_dram_udm),

         .c3_sys_clk	                         (c3_sys_clk),
         .c3_sys_rst_i	                         (c3_sys_rst_n),			
		 .c3_calib_done	                         (c3_calib_done),
         .c3_clk0	                             (c3_clk0),
		 .camera_clk	                         (camera_clk),                //AX545: added for camera clock
		 .vga_clk	                             (vga_clk),                   //AX545: added for vga clock
         .c3_rst0	                             (c3_rst0),	
		
		 .mcb3_dram_dqs                         (mcb3_dram_dqs),
		 .mcb3_dram_dqs_n	                    (mcb3_dram_dqs_n),
		 .mcb3_dram_ck	                        (mcb3_dram_ck),			
		 .mcb3_dram_ck_n	                    (mcb3_dram_ck_n),				
			
         // User Port-0 command interface
         .c3_p0_cmd_clk                  (c3_clk0),          //c3_p0_cmd_clk->c3_clk0			
         .c3_p0_cmd_en                   (c3_p0_cmd_en),
         .c3_p0_cmd_instr                (c3_p0_cmd_instr),
         .c3_p0_cmd_bl                   (c3_p0_cmd_bl),
         .c3_p0_cmd_byte_addr            (c3_p0_cmd_byte_addr),
         .c3_p0_cmd_empty                (c3_p0_cmd_empty),
         .c3_p0_cmd_full                 (c3_p0_cmd_full),	
			
         // User Port-0 data write interface 			
         .c3_p0_wr_clk                   (c3_clk0),          //c3_p0_wr_clk->c3_clk0
		 .c3_p0_wr_en                    (c3_p0_wr_en),
         .c3_p0_wr_mask                  (c3_p0_wr_mask),
         .c3_p0_wr_data                  (c3_p0_wr_data),
         .c3_p0_wr_full                  (c3_p0_wr_full),
         .c3_p0_wr_empty                 (c3_p0_wr_empty),
         .c3_p0_wr_count                 (c3_p0_wr_count),
         .c3_p0_wr_underrun              (c3_p0_wr_underrun),
         .c3_p0_wr_error                 (c3_p0_wr_error),	
			
         // User Port-0 data read interface 
		 .c3_p0_rd_clk                   (c3_clk0),          //c3_p0_rd_clk->c3_clk0
         .c3_p0_rd_en                    (c3_p0_rd_en),
         .c3_p0_rd_data                  (c3_p0_rd_data),
         .c3_p0_rd_full                  (c3_p0_rd_full),			
         .c3_p0_rd_empty                 (c3_p0_rd_empty),
         .c3_p0_rd_count                 (c3_p0_rd_count),
         .c3_p0_rd_overflow              (c3_p0_rd_overflow),
         .c3_p0_rd_error                 (c3_p0_rd_error),
			
			
         // User Port-1 command interface
         .c3_p1_cmd_clk                  (c3_clk0),          //c3_p1_cmd_clk->c3_clk0			
         .c3_p1_cmd_en                   (c3_p1_cmd_en),
         .c3_p1_cmd_instr                (c3_p1_cmd_instr),
         .c3_p1_cmd_bl                   (c3_p1_cmd_bl),
         .c3_p1_cmd_byte_addr            (c3_p1_cmd_byte_addr),
         .c3_p1_cmd_empty                (c3_p1_cmd_empty),
         .c3_p1_cmd_full                 (c3_p1_cmd_full),	
			
         // User Port-1 data write interface 			
         .c3_p1_wr_clk                   (c3_clk0),          //c3_p1_wr_clk->c3_clk0
		 .c3_p1_wr_en                    (c3_p1_wr_en),
         .c3_p1_wr_mask                  (c3_p1_wr_mask),
         .c3_p1_wr_data                  (c3_p1_wr_data),
         .c3_p1_wr_full                  (c3_p1_wr_full),
         .c3_p1_wr_empty                 (c3_p1_wr_empty),
         .c3_p1_wr_count                 (c3_p1_wr_count),
         .c3_p1_wr_underrun              (c3_p1_wr_underrun),
         .c3_p1_wr_error                 (c3_p1_wr_error),	
			
         // User Port-1 data read interface 
		 .c3_p1_rd_clk                   (c3_clk0),          //c3_p1_rd_clk->c3_clk0
         .c3_p1_rd_en                    (c3_p1_rd_en),
         .c3_p1_rd_data                  (c3_p1_rd_data),
         .c3_p1_rd_full                  (c3_p1_rd_full),			
         .c3_p1_rd_empty                 (c3_p1_rd_empty),
         .c3_p1_rd_count                 (c3_p1_rd_count),
         .c3_p1_rd_overflow              (c3_p1_rd_overflow),
         .c3_p1_rd_error                 (c3_p1_rd_error)
       );