[http://www.360doc.com/content/14/0116/16/15528092_345730642.shtml](http://www.360doc.com/content/14/0116/16/15528092_345730642.shtml "ddr3")

Features

• Differential bidirectional data strobe (DQS, DQS#)数据选通脉冲
• 8n-bit prefetch architecture (8n 预取)
• Differential clock inputs (CK, CK#)
• 8 internal banks
• Nominal and dynamic on-die termination (ODT:终端电阻) for data, strobe, and mask signals
• Programmable CAS READ latency (CL)
• Posted CAS additive latency (AL)
• Programmable CAS WRITE latency (CWL) based on tCK（时钟周期）
• Fixed burst length (BL) of 8 and burst chop (BC) of 4 (via the mode register set [MRS])
• Selectable BC4 or BL8 on-the-fly (OTF)
• Self refresh mode
• Self refresh temperature (SRT)
• Write leveling
• Multipurpose register（寄存器）
• Output driver calibration（校正）

**DDR3是一个存储阵列**，可以想象成一张表格。和表格的检索原理一样，先指定一个行（Row），再指定一个列（Column），我们就可以准确地找到所需要的单元格，这就是内存芯片寻址的基本原理。

对于内存，单元格可称为存储单元,表格（存储阵列）就是**逻辑 Bank**（Logical Bank，下面简称Bank）。
**B代表Bank地址编号，C代表列地址编号，R代表行地址编号。**如果寻址命令是B1、R2、C6，就能确定地址是图中红格的位置。目前DDR3内存芯片基本上都是8个Bank设计，也就是说一共有8个这样的“表格”。

![](http://img.blog.csdn.net/20140116161443671?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

**内存芯片寻址:先指定Bank地址，再指定行地址，然后指定列地址，确定寻址单元。**

1. 在实际工作中，*Bank地址与行地址* 是同时发出的，这个命令称为 *“行激活”（Row Active）*。
2. 之后发送 *列地址寻址命令与操作命令（读/写）*，这两个命令也是同时发出的，所以一般都会以 *“读/写命令”* 来表示。

**tRCD，即RAS ~ CAS Delay（RAS就是行地址选通脉冲，CAS就是列地址选通脉冲）{1~2间}**
tRCD以时钟周期数为单位，比如tRCD=3，就代表延迟周期为两个时钟周期；具体到确切的时间，则要根据时钟频率而定。（DDR3-800，tRCD=3，代表30ns的延迟。）

![](http://img.blog.csdn.net/20140116161514218?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

列地址被选通后，将会触发数据传输。但是从存储单元 输出到 内存芯片的 I/O 接口之间还需要一定的时间。

**CL（CAS Latency，列地址选通脉冲潜伏期）：数据触发本身就有延迟，而且还需要进行信号放大**。CL只针对读数据操作。
CL 的数值与 tRCD 一样，以时钟周期数表示。如 DDR3-800，时钟频率为 100MHz，时钟周期为 10ns，如果 CL=2 就意味着 20ns 的潜伏期。

存储单元中的电容容量很小，所以信号要经过放大来保证其有效的识别性，这个放大/驱动工作由S-AMP负责。一个存储单元对应一个S- AMP通道。
它要有一个准备时间才能保证信号的发送强度（事前还要进行电压比较以进行逻辑电平的判断），因此从数据I/O总线上有数据输出前的一个时钟上升沿开始，数据即已传向S-AMP，也就是说此时数据已经被触发，经过一定的驱动时间最终传向数据I/O总线进行输出，这段时间我们称之为 **tAC（Access Time from CLK，时钟触发后的访问时间）：在潜伏期内放大信号**。

![](http://img.blog.csdn.net/20140116161537890?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)


> 目前DDR3系统而言，还存在物理Bank的概念，这是对内存子系统的一个相关术语，并不针对内存芯片。内存为了保证CPU正常工作，必须一次传输完CPU 在一个传输周期内所需要的数据。而CPU在一个传输周期能接受的数据容量就是CPU数据总线的位宽，单位是bit(位)。控制内存与CPU之间数据交换的北桥芯片也因此将内存总线的数据位宽等同于CPU数据总线的位宽，这个位宽就称为**物理Bank（Physical Bank，称之为Rank）**的位宽。目前这个位宽基本为64bit。


内存读写基本都是连续的，因为与CPU交换的数据量以一个Cache Line（即CPU内Cache的存储单位）的容量为准，一般为64字节。
而 *现有Rank位宽为8字节（64bit）*，那么就要一次连续传输8次，这就涉及到我们也经常能遇到的突发传输的概念。

**突发（Burst）是指在同一行中相邻的存储单元 连续进行数据传输的方式，连续传输的周期数就是突发长度（Burst Lengths，简称BL）**。

- 连续读取模式：只要指定 起始列地址与突发长度，内存就会自动 对后面相应数量的存储单元进行读/写操作；而不需要控制器连续地提供列地址。**只要控制两段突发读取命令的间隔周期（与BL相同）即可做到连续的突发传输。**
- 除了第一次数据的传输需要若干个时钟周期（主要：tRCD+CL），其后每个数据只需一个时钟周期。

![](http://img.blog.csdn.net/20140116161605468?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

某个存储单元的数据读取完毕，需要释放“读出放大器”以供同一Bank内其他行使用，内存芯片将进行“预充电”来关闭当前工作行。

**tRP（Row Precharge command Period，行预充电命令周期）：从关闭现有工作行，到可以打开新工作行的时间间隔，其单位是时钟周期数**

1. 以上面Bank示意图为例，寻址的存储单元是B1、R2、C6。如果接下来的寻址命令是B1、R2、C4，则不用预充电，因为读出放大器正在为这一行服务。
但如果地址是B1、R4、C4，由于是同一Bank的不同行，那么就必须要先把R2关闭，才能对R4寻址。
2. 在不同Bank间读写也是这样，先把原来数据写回，再激活新的Bank/Row。

![](http://img.blog.csdn.net/20140116161657953?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)


**数据选取脉冲（DQS）:在一个时钟周期内 准确的区分出 每个传输周期，便于接收方准确接收数据。可以说是数据的同步信号。自同步?**
每一内存芯片都有一个DQS信号线，它是双向的：在写入时它用来传送由北桥发来的DQS信号；读取时则由芯片生成DQS向北桥发送。

1. 读取时，DQS与数据信号 同时生成（在CK与CK#的交叉点）。
2. CL（潜伏期）可以说是从CAS到DQS的间隔。
3. DQS生成时，芯片内部的预取已经完毕，由于预取的原因，实际的数据传出可能会提前于DQS发生（数据提前于DQS传出）。
4. 由于是并行传输，DDR内存对tAC（潜伏期内）也有一定的要求。对于DDR266，tAC的允许范围是±0.75ns；对于DDR333，则是±0.7ns；CL里包含一段DQS的导入期。


1. **DQS在读取时与数据同步传输，那么接收时也是以自己产生的DQS上下沿为准吗？**
2. 以DQS的上下沿区分数据周期 危险很大：**由于芯片有预取的操作，所以输出时精确同步很难控制，只能限制在一定的时间范围内；数据在各I/O端口的出现时间可能有快有慢，会与DQS有一定的间隔，这也就是为什么要有一个tAC规定的原因**。
3. 在接收方，必须保证精确同步接收，不能有tAC的偏差。
4. 在写入时，芯片不再自己生成DQS；而以发送方传来的DQS为基准，并适当延时，以DQS的中部作为 数据选取周期的分割点（而读取数据分割点：CK与CK#的交叉点），从这里分隔开两个传输周期。
5. 好处是：由于各数据信号都会有一个逻辑电平保持周期，即使发送时不同步，但在DQS上下沿时都处于保持周期中，此时触发数据接收，其准确性无疑是最高的。
**在写入时，以DQS的高/低电平中部为数据选取周期分割点，而不是上/下沿；但数据接收触发仍为DQS的上/下沿**

![](http://img.blog.csdn.net/20140116161712312?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

**容量计算**

如图为X8单颗DDR3架构图，行（Row）地址线复用14根，列（Column）地址线复用10根，Bank数量为8个，IO Buffer 通过8组位线（DQ0-DQ7）来完成对外的通信；故此单颗DDR3芯片的容量为2^14 * 2^10 * 8，结果为128MB。

1. 如果我们要做成容量为1GB的内存条则需要8颗这样的DDR3内存芯片，每颗芯片含8根位线（DQ0-DQ7）则总数宽为64bit，正好一个Rank。
2. 如果还用128MB的DDR3芯片去做2GB内存条，结果就会有所不同。我们最好选用4根位线（DQ0-DQ3），数量是16颗，也是一个Rank。
3. 要做容量为8GB的内存条，则数量用64颗128M的DDR3，这样位宽高达64X4=256bit，为4个Rank。
4. X8单颗DDR3{颗数与内存条大小有关，位线的数目以Rank为单位}

![](http://img.blog.csdn.net/20140116161755093?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)


**管脚描述**

![](http://img.blog.csdn.net/20140116161815187?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

**状态图**

![](http://img.blog.csdn.net/20140116161843375?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

1. Power on: 上电
2. Reset Procedure: 复位过程
3. Initialization: 初始化
4. ZQCL: 上电初始化后，ZQCL会触发DRAM内部的校准引擎；一旦校准完成，校准后的值会传递到DRAM的IO管脚上，并反映为输出驱动和ODT阻值
5. ZQCS: 周期性的校准，能够跟随电压和温度的变化而变化。校准需要更短的时间窗口， 一次校准，可以有效的纠正最小0.5%的RON和RTT电阻
6. Al：Additive latency；是用来在总线上保持命令/数据的有效时间。在ddr3允许直接操作读/写操作.AL是总线数据 进入到器件内部的时间。

下图为DDR3标准所支持的时间操作

![](http://img.blog.csdn.net/20140116161850343?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

1. Write Leveling:为了得到更好的信号完整性，DDR3存储模块采取了FLY_BY的拓扑结构来处理命令、地址、控制信号和时钟。
2. FLY_BY的拓扑结构可以有效的减少stub的数量和长度，但是却会导致时钟和strobe信号在每个芯片上的flight time skew,这使得控制器（FPGA或者CPU）很难以保持Tdqss/tdss/tdsh时序。
3. ddr3支持write leveling以允许控制器来补偿倾斜（flight time skew）。
4. 存储器控制器能够用该特性和从DDR3反馈的数据调成DQS和CK之间的关系。在这种调整中，存储器控制器可以对DQS信号可调整的延时，来与时钟信号的上升边沿对齐。控制器不停对DQS进行延时，直到发现从0到1之间的跳变出现，然后DQS的延时通过这样的方式被建立起来，由此可以保证tDQSS。

![](http://img.blog.csdn.net/20140116161859359?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

1. MRS: 可编程模式寄存器；模式寄存器MR没有缺省值，因此模式寄存器MR必须在上电或者复位后被完全初始化，这样才能使得DDR可以正常工作。
2. 正常工作模式下，MR也可以被重新写入。
2. 模式寄存器的设置命令周期：tMRD两次操作之间的最小时间
3. 模式寄存器，分为MR0、MR1、MR2和MR4
4. MR0用来存储DDR3的不同操作模式的数据：包括突发长度、读取突发种类、CAS长度、测试模式、DLL复位等。
5. MR1用来存储是否使能DLL、输出驱动长度、Rtt_Nom、额外长度、写电平使能等
6. MR2用来存储控制更新的特性，Rtt_WR阻抗，和CAS写长度。MR3用来控制MPR。

![](http://img.blog.csdn.net/20140116161908656?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

1. MPR:多用途寄存器。
2. MPR的功能是读出一个预先设定的系统时序校准比特序列。
3. 为了使能MPR功能，需要在MRS的寄存器MR3的A2位写1，并且在此之前需要将ddr3的所有bank处于idle状态
4. 一旦MPR被使能后，任何RD和RDA的命令都会被引入到MPR寄存器中，当MPR寄存器被使能后， 除非MPR被禁止（MR3的A2=0），否则就只有RD和RDA被允许。在MPR被使能的时候，RESET功能是被允许的。

1. Precharge Power Down: bank在in-progress命令后关闭
2. Active Power Down:bank在in-progress命令后依然打开
3. Idle：所有的bank必须预先充电满足所有时序；DRAM的**ODT**电阻RTT必须为高阻态

4. **CWL:CAS write latency.以时钟周期为单位，在内部写命令和第一位输入数据的时间延时，该单位始终为整数**
5. **在操作过程中，所有的写延时WL被定义为AL（Additive Latency）+CWL**

- RTT: DDR3引入的新特性，在特定的应用环境下为了更好的在数据总线上改善信号完整性，不需要特定的MRS命令即可改变终端匹配。在MR2中的A9和A10位设置了Rtt_WR。

	- RTT_Nom:当总线上没有数据的时候
	- RTT_WR:当总线上有数据后
	- RTT在ODT使能后出现
	- 具体的DDR3的ODT产生时序见图2。当ODT被使能后，必须要保持高电平ODTH4个时钟周期才可以有效；如果写命令被放入寄存器并且ODT是高，那么ODT必须保持ODTH4或者ODTH8，这样ODT才可以有效。

![](http://img.blog.csdn.net/20140116161927062?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)

- ACT = ACTIVATE
- PREA = PRECHARGE ALL
- SRX = 自刷新推出
- MPR = 多用处寄存器
- READ = RD，RDS4，RDS8                        
- WRITE=WR，WRS4，WRS8
- MRS=模式寄存器集                  
- READ AP=RDAP,RDAPS4,RDAPS8               
- WRITE=WRAP,WRAPS4,WRAPS8
- PDE=掉电进入                           
- REF=REFRESH                                           
- ZQCL=ZQ LONG CALIBR
- PDX=掉电推出                           
- RESET=启动复位过程                                
- ZACS=ZA SHORT CALIBTATION
- PRE=预充电                               
- SRE=自刷新进入

**工作原理**

1. 芯片进入上电，在上电最小为200us的平稳电平后，等待500usCKE使能，在这段时间芯片内部开始状态初始化，该过程与外部时钟无关。
2. 在时钟使能信号前（cke），必须保持最小10ns或者5个时钟周期，除此之外，还需要一个NOP命令或者Deselect命令出现在CKE的前面。
3. DDR3开始ODT的过程，在复位和CKE有效之前，ODT始终为高阻。
4. 在CKE为高后，等待tXPR(最小复位CKE时间)，然后开始从MRS中读取模式寄存器。
5. 加载MR2、MR3的寄存器，来配置应用设置；然后使能DLL，并且对DLL复位。
6. 启动ZQCL命令，来开始ZQ校准过程。等待校准结束后，DDR3就进入了可以正常操作的状态。
7. 对于基本的配置过程，现在就可以结束了。下面，结合CH1的控制器FPGA,说明对DDR3相关的配置。

![](http://img.blog.csdn.net/20140116161934000?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)
上表中MRS可以设置Mode寄存器值

![](http://img.blog.csdn.net/20140116161940937?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center ) 

![](http://img.blog.csdn.net/20140116161947421?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvbmp1aXRqZg==/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center)
以上图为例，CS#/RAS#/CAS#/WE#为L/L/H/H。指令为Row/Bank Active；随后CS#拉高，command无效，在第4个时钟周期这4个信号变为L/H/L/H，对照表格，指令为Read，经过几个时钟周期延迟，在3CLK后读数据。

**基本功能**
      
1. DDR3 SDRAM是高速动态随机存取存储器，内部配置有8个BANK。DDR3 SDRAM使用8n预取结构，以获得高速操作。8n预取结构同接口组合起来以完成在I/O脚上每个时钟两个数据字的传输。DDR3 SDRAM的一个单次读或写操作由两部分组成：一是在内部DRAM核中进行的8n位宽四个时钟数据传输，另一个是在I/O脚上进行的两个对应n位宽、半时钟周期的数据传输。

2. 对DDR3 SDRAM的读写操作是有方向性的突发操作，从一个选择的位置开始，突发长度是8或者是一个以编程序列的长度为4的Chopped突发方式。操作开始于Active命令，随后是一个Read/Write命令。Active命令同时并发含带地址位，以选择Bank和Row地址（BA0-BA2选择BANK、A0-A15选择Row）。
而Read/Write命令并发含带突发操作的起始Column地址，并确定是否发布自动预充电命令（通过A10）和选择BC4或BL8模式（通过A12）（如果模式寄存器使能）。

3. 在正常操作之前，DDR3 SDRAM必要以预先定义的方式上电和初始化。

由于DDR2内存的各种不足，制约了其进一步的广泛应用，DDR3内存的出现，正是为了解决DDR2内存出现的问题，具体有：
　
	- 更高的外部数据传输率 
	- 更先进的地址/命令与控制总线的拓朴架构 
	- 在保证性能的同时将能耗进一步降低
 
**DDR3内存在DDR2内存的基础上所做的主要改进包括：**
　　
	- 8bit预取设计，DDR2为4bit预取，这样DRAM内核的频率只有接口频率的1/8，DDR3-800的核心工作频率只有100MHz。
	- 采用点对点的拓朴架构，减轻地址/命令与控制总线的负担。 
	- 采用100nm以下的生产工艺，将工作电压从1.8V降至1.5V，增加异步重置（Reset）与ZQ校准功能

逻辑Bank数量:

　　DDR2 SDRAM中有4Bank和8Bank的设计，目的就是为了应对未来大容量芯片的需求。而DDR3很可能将从2Gb容量起步，因此起始的逻辑Bank就是8个，另外还为未来的16个逻辑Bank做好了准备。
 
封装（Packages）:

　　DDR3由于新增了一些功能，所以在引脚方面会有所增加，8bit芯片采用78球FBGA封装，16bit芯片采用96球FBGA封装，而DDR2则有60/68/84球FBGA封装三种规格。并且DDR3必须是绿色封装，不能含有任何有害物质。

突发长度（BL，Burst Length）：

　　由于DDR3的预取为8bit，所以突发传输周期（BL，Burst Length）也固定为8，而对于DDR2和早期的DDR架构的系统，BL=4也是常用的，DDR3为此增加了一个4-bit Burst Chop（突发突变）模式，即由一一个BL=4的读取操作加上一个BL=4的写入操作来合成一个BL=8的数据突发传输，届时可通过A12地址线来控制这一突发模式。而且需要指出的是，任何突发中断操作都将在DDR3内存中予以禁止，且不予支持，取而代之的是更灵活的突发传输控制（如4bit顺序突发）。
　　
寻址时序（Timing）：

　　就像DDR2从DDR转变而来后延迟周期数增加一样，DDR3的CL周期也将比DDR2有所提高。DDR2的CL范围一般在2至5之间，而DDR3则在5至11之间，且附加延迟（AL）的设计也有所变化。DDR2时AL的范围是0至4，而DDR3时AL有三种选项，分别是0、CL-1和CL-2。另外，DDR3还新增加了一个时序参数——写入延迟（CWD），这一参数将根据具体的工作频率而定。

**DDR3内存的新增功能**　
　　
重置（Reset）：

　　重置是DDR3新增的一项重要功能，并为此专门准备了一个引脚。DRAM业界已经很早以前就要求增这一功能，如今终于在DDR3身上实现。这一引脚将使DDR3的初始化处理变得简单。当Reset命令有效时，DDR3内存将停止所有的操作，并切换至最少量活动的状态，以节约电力。在Reset期间，DDR3内存将关闭内在的大部分功能，所以有数据接收与发送器都将关闭。所有内部的程序装置将复位，DLL（延迟锁相环路）与时钟电路将停止工作，而且不理睬数据总线上的任何动静。这样一来，将使DDR3达到最节省电力的目的。
　　
ZQ校准：

　　ZQ也是也是一个新增的脚，在这个引脚上接有一个240欧姆的低公差参考电阻。这个引脚通过一个命令集，通过片上校准引擎（ODCE，On-Die Calibration  Engine）来自动校验数据输出驱动器导通电阻与ODT的终结电阻值。当系统发出这一指令之后，将用相应的时钟周期（在加电与初始化之后用512个时钟周期，在退出自刷新操作后用256时钟周期、在其他情况下用64个时钟周期）对导通电阻和ODT电阻进行重新校准。
　　
参考电压分成两个：

　　对于内存系统工作非常重要的参考电压信号VREF，在DDR3系统中将分为两个信号。一个是为命令与地址信号服务的VREFCA，另一为数据总线服务的VREFDQ，它将有效的提高系统数据总线的信噪等级。
 
根据温度自动自刷新（SRT，Self-Refresh Temperature）：

　　为了保证所保存的数据不丢失，DRAM必须定时进行刷新，DDR3也不例外。不过，为了最大的节省电力，DDR3采用了一种新型的自动自刷新设计（ASR，Automatic Self-Refresh）。当开始ASR之后，将通过一个内置于DRAM芯片的温度传感器来控制刷新的频率，因为刷新频率高的话，消电就大，温度也随之升高。而温度传感器则在保证数据不丢失的情况下，尽量减少刷新频率，降低工作温度。不过DDR3的ASR是可选设计，并不见得市场上的DDR3内存都支持这一功能，因此还有一个附加的功能就是自刷新温度范围（SRT，Self-Refresh  Temperature）。通过模式寄存器，可以选择两个温度范围，一个是普通的的温度范围（例如0℃至85℃），另一个是扩展温度范围，比如最高到 95℃。对于DRAM内部设定的这两种温度范围，DRAM将以恒定的频率和电流进行刷新操作。
 
局部自刷新（RASR，Partial Array Self-Refresh）：

　　这是DDR3的一个可选项，通过这一功能，DDR3内存芯片可以只刷新部分逻辑Bank，而不是全部刷新，从而最大限度的减少因自刷新产生的电力消耗。这一点与移动型内存（Mobile DRAM）的设计很相似。
 
点对点连接（P2P，Point-to-Point）：

　　这是为了提高系统性能而进行了重要改动，也是与DDR2系统的一个关键区别。在DDR3系统中，一个内存控制器将只与一个内存通道打交道，而且这个内存通道只能一个插槽。因此内存控制器与DDR3内存模组之间是点对点（P2P，Point-to-Point）的关系（单物理Bank的模组），或者是点对双点（P22P，Point-to-two-Point）的关系（双物理Bank的模组），从而大大减轻了地址/命令/控制与数据总线的负载。而在内存模组方面，与DDR2的类别相类似，也有标准DIMM（台式PC）、SO-DIMM/Micro-DIMM（笔记本电脑）、FB-DIMM2（服务器）之分，其中第二代FB-DIMM将采用规格更高的AMB2（高级内存缓冲器）。







