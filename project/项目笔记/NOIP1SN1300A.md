**基本信息**

• Size Options:
♦ PYTHON 300: 640 x 480 Active Pixels, 1/4” Optical Format
♦ PYTHON 500: 800 x 600 Active Pixels, 1/3.6” Optical Format
♦ **PYTHON 1300: 1280 x 1024 Active Pixels, 1/2” Optical Format**

• Data Output Options:
♦ **P1−SN/SE/FN: 4 LVDS Data Channels**
♦ **P2−SN/SE: 10 bit Parallel**
♦ P3−SN/SE/FN: 2 LVDS Data Channels

• Monochrome (SN：单色), Color (SE) and NIR (FN)
Color Filter Array for the Pixel Array： a Bayer RGB color pattern 
![](http://i.imgur.com/OJvC5DR.jpg)


• **Zero Row Overhead Time (ZROT) Mode Enabling Higher Frame Rate**
• Four/Two/One LVDS High Speed Serial Outputs or **Parallel CMOS Output**

• **Serial Peripheral Interface (SPI)**

• Frame Rate at Full Resolution, 4 LVDS Data Channels (P1−SN/SE/FN only)
♦ 210/165 frames per second @ SXGA (ZROT/NROT)1300
♦ 545/385 frames per second @ SVGA (ZROT/NROT)500
♦ 815/545 frames per second @ VGA (ZROT/NROT) 300

• **Frames Rate at Full Resolution (CMOS)：P2−SN/SE**
♦ 50/43 Frames per Second @ SXGA (ZROT/NROT)

· P3−SN/SE/FN: NA/90 fps(NROT)

. Master clock：•** Phase Locked Loop (PLL)**

  	. P1, P3−SN/SE/FN:
  	  72 MHz when PLL is used,
  	  360 MHz (10−bit) / 288 MHz (8−bit)when PLL is not used

	. P2−SN/SE: 72 MHz

• 10−bit/8-bit(ADC)

. LVDS outputs 

	P1−SN/SE/FN: 4/2/1{通路复用器} data + sync + clock{lvds}
	P3−SN/SE/FN: 2/1 data + sync + clock{lvds}

. CMOS outputs 

	P2−SN/SE: 10−bit parallel output,frame_valid, line_valid, clock{cmos}

. Data rate 

	P1−SN/SE/FN: 4 x 720 Mbps (10−bit) /4 x 576 Mbps (8−bit){时钟*位数=72M*10-bit} per channel
	P2−SN/SE: 72 Mhz
	P3−SN/SE/FN: 2 x 720 Mbps (10−bit)

. LVDS output driver :288 MHz{分频4路 288/4=72}
	

. I/O − P1−SN/SE/FN, P3−SN/SE/FN LVDS (EIA/TIA−644): Conforming to standard/additional specifications and deviations listed

1. fserdata: Data rate on data channels、 DDR signaling − 4 data channels, 1 synchronization channel{720 Mbps}
2. fserclock: Clock rate of output clock 、Clock output for mesochronous signaling{360 MHz}
3. fin： Input clock rate when PLL used {72 MHz}、fin： Input clock when LVDS input used {360 MHz}
4. ratspi(= fin/fspi)
	1. 10−bit (4 LVDS channels), PLL used {6}
	2. 10−bit (2 LVDS channels), PLL used 12
	3. 10−bit (1 LVDS channel), PLL used 24
	4. 10−bit (4 LVDS channels), LVDS input used {30}
	5. 10−bit (2 LVDS channels), LVDS input used 60
	6. 10−bit (1 LVDS channel), LVDS input used 120


----------------------------------------

额外信息


• Random Programmable Region of Interest (ROI){可采样区域}Readout
• Automatic Exposure Control (AEC)：Both integration timeand gains {积分时间增益} are controlled by this block to target a predefined illumination level{光照水平}.
• High Dynamic Range (HDR) Modes Possible

----------------------------------------

**通道选择**

**Parallel CMOS Output ~ 帧频 MIN43**,**但是咱们设计硬件的选材是NOIP1SN1300A{1：P1,SN,1300}。**
The P1−SN/SE/FN base part references the mono, color and NIR enhanced versions of the** 4 LVDS** interface;
the P2−SN/SE base part references the mono and color versions of the **CMOS** interface; 
the P3−SN/SE/FN base part references the mono,color and NIR enhanced version of the** 2 LVDS** interface. 

1. The image data interface of the P1−SN/SE/FN devices consists of four LVDS lanes, enabling frame rates up to **210 frames per second** in Zero ROT mode for the PYTHON 1300. 
2.** Each channel runs at 720 Mbps.** 
3. A separate synchronization channel containing payload information is provided to facilitate the image reconstruction at the receiving end. 

1. The P2−SN/SE devices provide a parallel CMOS output interface at** reduced frame rate.**
2.  The P3−SN/SE/FN devices are the same as the P1−SN/SE/FN but with only two of the four LVDS data channels enabled,
facilitating frame rates of **90 frames per second** in Normal ROT for the PYTHON 1300.

-----------------------------------------

**配置**

- The image sensors have on−chip **programmable gain amplifiers and 10−bit A/D converters**. 
- The **integration time and gain parameters can be reconfigured** without any visible image artifact. 
- Optionally the on−chip automatic exposure control loop (**AEC**) **controls these parameters dynamically**.

- The **image’s black level** is either **calibrated automatically** or can be adjusted by adding a user programmable offset.
- A high level of programmability using a four wire serial peripheral interface enables the user to read out specificregions of interest（**ROI**）. 
- Up to** eight regions can be programmed**,achieving even **higher frame rates**.

--------------------------------------

**OVERVIEW概览**

![](http://i.imgur.com/4yAbz9e.jpg)

Image Core

The sensors use in−pixel CDS architecture,which makes it possible to achieve a low noise** read out** of the **pixel array** **in global shutter mode** with CDS.

• Pixel Array
• Address Decoders and Row Drivers
• Pixel Biasing

1300 pixel array contains **1280 (H) x 1024 (V)** readable pixels. 300 and 500 image arrays contain 672 (H) x 512 (V) and 832 (H) x 632 (V) readable pixels respectively, **inclusive（包含） 16 pixel rows and 16 pixel columns at every side** to allow for reprocessing or color reconstruction.

The function of the row drivers is to access（访问） the image array line by line, or all lines together（从左到右/从上到下 The read pointer goes from left to right, bottom to top.）, to reset or read the pixel data. The row drivers are** controlled by the on−chip sequencer[1]** and can access(访问) **the pixel array**.

The pixel biasing block guarantees that the data on a pixel is transferred properly to the **column** multiplexer（**复用器**） when the **row drivers select a pixel line for readout**.


Data Formatting

The data block receives data from** two ADCs and multiplexes** this data **to one data stream**. 
A cyclic redundancy check (**CRC**) code is **calculated** on the passing data.

**A frame synchronization data block** transmits **synchronization infor such as frame start, line start, frame end, and line end indications.**

The data block calculates a **CRC** once **per line for every channel**. This CRC code can be used for error detection at the receiving end.

two extra LVDS outputs are available. One of these outputs carries the **output clock, which is skew aligned(对齐) to the output data channels.** The second LVDS output contains** frame format synchronization**codes to serve system−level image reconstruction.


Sequencer[1]

• Controls the image core. Starts and stops **integration time{积分时间}** and **control pixel readout[1]**.
•** Operates the sensor in master or slave mode.**
• Applies **the window settings**. Organizes readouts so that only the configured windows are read.
• Controls the column multiplexer and analog core. **Applies gain settings and subsampling modes** at the correct time, without corruptin（破坏）g image data.
• **Starts up the sensor correctly when leaving standby mode.**

-----------------------------------

**工作模式**

Global Shutter Mode in pipelined or triggered {达不到1帧/秒的要求}：the integration and readout are done in parallel.{并行}

**Triggered Global Shutter Mode：Control both the integration time and the start of readout.in a master or in a slave mode **

This mode requires manual intervention for every frame.The pixel array is kept in reset state until requested{针对每一个帧进行人工干预；除非请求有效，否则像素矩阵会处于复位状态}

1. After the integration time, indicated by a user controlled pin, the image core is read out. 
2. After this sequence（顺序）, the sensor goes to an idle mode until a new user action is detected.

The three main differences with the pipelined global shutter mode are:

• Upon user action{用户操作之后}, one single image is read{数据方可以读出}.
• Normally, **integration and readout** are done**sequentially**. However, the user can control the sensor in such a way that two consecutive batches are overlapping（重叠）, that is, having concurrent integration and readout.

**{串行和并行均可（积分和读出操作）}**

• Integration and readout{积分和读出操作} is **under user control through an external pin**.

**Master Mode**{若寄存器可以配置足够小的积分时间，便可以采用}

A rising edge on the synchronization pin is used to trigger the start of integration and readout. 

The integration time is defined by a register setting. 

The sensor autonomously integrates during this predefined time, after which the FOT starts and the image array is readout
sequentially. 

A falling edge on the synchronization pin does not have any impact on the readout or integration and subsequent frames are started again for each rising edge.{只有上升沿是有效的}

![](http://i.imgur.com/hmALqRg.jpg)


**Slave Mode**{若寄存器的最小积分时间都不满足1帧/秒，那么采用该方式}

Integration time control is identical（类似） to the pipelined shutter slave mode. 

**pipelined shutter Slave Mode**

1. The integration time registers are ignored in this mode and **the integration time is instead controlled by an external pin.**
2. As soon as the control pin is asserted（有效：上升沿）, the pixel array goes out of reset and integration starts. The integration continues until the user or system de-asserts（无效：下降沿） the external pin. the FOT starts、the image readout can start.
3. Upon a falling edge（下降沿） of the trigger input, the image is sampled（抽样） and the readout begins. 
4. A request for a new frame is started when the synchronization pin is asserted again.

![](http://i.imgur.com/LxKCiG6.jpg)

**Normal and Zero Row Overhead Time (ROT) Modes**{ROT和Readout 串、并行(重叠)}

![](http://i.imgur.com/F2ZUg0o.jpg)

-----------------------------------

**CMOS传感器操作**

![](http://i.imgur.com/AdvDUBm.jpg)

-----------------------------------

**数据输出格式：P1−SN/SE/FN, P3−SN/SE/FN: LVDS Interface Version**

LVDS Output Channels

four LVDS **data** channels where a **synchronization** LVDS channel ； an LVDS **output clock** signal synchronizes the data.

four **data **channels on the P1 option are used to output the image data only；on the P3 option, two data channel channels are utilized. 

The **sync** channel transmits **information about the data **sent over these data channels (includes codes indicating black pixels, normal pixels, and CRC codes).

-------------------------------

8−bit / 10−bit Mode

In 10−bit mode, the** words on data and sync channel** have a 10−bit length. The output data rate is 720 Mbps.

--------------------------------

Frame Format

The **frame format** in 8−bit mode is** identical** to the 10−bit mode with the **exception that the Sync and data word depth is reduced to eight bits**

The frame format in 10−bit mode is explained by example of the readout of two (overlapping) windows.
![](http://i.imgur.com/xcFSreu.jpg)

