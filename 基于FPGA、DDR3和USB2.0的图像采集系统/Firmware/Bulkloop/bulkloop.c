//-----------------------------------------------------------------------------
//   File:      bulkloop.c
//   Contents:  Hooks required to implement USB peripheral function.
//
// $Archive: /USB/Examples/FX2LP/bulkloop/bulkloop.c $
//
//
//-----------------------------------------------------------------------------
// Copyright (c) 2011, Cypress Semiconductor Corporation All rights reserved
//-----------------------------------------------------------------------------
#pragma NOIV               // Do not generate interrupt vectors

#include "..\inc\fx2.h"
#include "..\inc\fx2regs.h"
#include "..\inc\syncdly.h"            // SYNCDELAY macro

extern BOOL GotSUD;             // Received setup data flag
extern BOOL Sleep;
extern BOOL Rwuen;
extern BOOL Selfpwr;

BYTE Configuration;             // Current configuration
BYTE AlternateSetting;          // Alternate settings

#define VR_NAKALL_ON    0xD0
#define VR_NAKALL_OFF   0xD1

//-----------------------------------------------------------------------------
// Task Dispatcher hooks
//   The following hooks are called by the task dispatcher.
//-----------------------------------------------------------------------------

void TD_Init(void)             // Called once at startup
{
   // set the CPU clock to 48MHz
   CPUCS = ((CPUCS & ~bmCLKSPD) | bmCLKSPD1) ;

   // Set Slave FIFO mode  
   IFCONFIG |=  0xE3;           

  // Registers which require a synchronization delay, see section 15.14
  // FIFORESET        FIFOPINPOLAR
  // INPKTEND         OUTPKTEND
  // EPxBCH:L         REVCTL
  // GPIFTCB3         GPIFTCB2
  // GPIFTCB1         GPIFTCB0
  // EPxFIFOPFH:L     EPxAUTOINLENH:L
  // EPxFIFOCFG       EPxGPIFFLGSEL
  // PINFLAGSxx       EPxFIFOIRQ
  // EPxFIFOIE        GPIFIRQ
  // GPIFIE           GPIFADRH:L
  // UDMACRCH:L       EPxGPIFTRIG
  // GPIFTRIG
  
  // Note: The pre-REVE EPxGPIFTCH/L register are affected, as well...
  //      ...these have been replaced by GPIFTC[B3:B0] registers

  // default: all endpoints have their VALID bit set
  // default: TYPE1 = 1 and TYPE0 = 0 --> BULK  
  // default: EP2 and EP4 DIR bits are 0 (OUT direction)
  // default: EP6 and EP8 DIR bits are 1 (IN direction)
  // default: EP2, EP4, EP6, and EP8 are double buffered
  SYNCDELAY;
  PINFLAGSAB = 0x6A;            // FLAGB - EP6PF  FLAGA - EP6EF（修改）
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  PINFLAGSCD = 0xDE;            // FLAGD - EP4FF      FLAGC - EP6FF??

  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  PORTACFG = 0x80;              // func. of PA7 pin is FLAGD#（修改）
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  FIFOPINPOLAR = 0x00;          // all signals active low
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  // we are just using the default values, yes this is not necessary...
  EP1OUTCFG = 0xA0;
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  EP1INCFG = 0xA0;
  SYNCDELAY;
  SYNCDELAY;// see TRM section 15.14
  SYNCDELAY;
  EP2CFG = 0x00;		    	//EP2 OUT, OFF（修改）
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;        
  EP4CFG = 0x00;               	//EP4 OUT, OFF
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;        
  EP6CFG = 0xE2;                //EP6 IN, ON
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;        
  EP8CFG = 0x00;                //EP8 IN, OFF

 SYNCDELAY;
 SYNCDELAY;
 SYNCDELAY;
  // handle the case where we were already in AUTO mode...
  EP6FIFOCFG = 0x00;            // AUTOIN=0, WORDWIDE=0
  //EP8FIFOCFG = 0x00;            // AUTOIN=0, WORDWIDE=0
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  EP6FIFOCFG = 0x09;            // AUTOIN=1, WORDWIDE=1
  //EP8FIFOCFG = 0x09;            // AUTOIN=1, WORDWIDE=1
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  // out endpoints do not come up armed
  EP6FIFOPFH = 0xC1 ;（修改）
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  EP6FIFOPFL = 0xFF ;
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  // out endpoints do not come up armed
  EP6FIFOPFH = 0xC1 ;（修改）
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  EP6FIFOPFL = 0xFF ;
  // since the defaults are double buffered we must write dummy byte counts twice
  SYNCDELAY; 
  SYNCDELAY;
  SYNCDELAY;       
  EP6FIFOBCH = 0x04; 
  SYNCDELAY; 
  SYNCDELAY;
  SYNCDELAY; // arm EP2OUT by writing byte count w/skip.
  EP6FIFOBCL = 0x00;（修改）
  SYNCDELAY; 
  SYNCDELAY;
  SYNCDELAY;                
  EP6FIFOBCH = 0x04;（修改）
  SYNCDELAY; // arm EP2OUT by writing byte count w/skip.
  SYNCDELAY;
  SYNCDELAY;
  EP6FIFOBCL = 0x00;
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY; 
  
  EP6BCH = 0x02;（修改）
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  EP6BCL = 0x00; （修改）
  SYNCDELAY; // arm EP4OUT by writing byte count w/skip.
  SYNCDELAY;
  SYNCDELAY;                  
  EP6BCH = 0x02;
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  EP6BCL = 0x00;  
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  
  FIFORESET = 0x80;             // activate NAK-ALL to avoid race conditions
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  FIFORESET = 0x86;（修改）             // reset, FIFO 6
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  FIFORESET = 0x00;             // deactivate NAK-ALL// enable dual autopointer feature
  SYNCDELAY;
  SYNCDELAY;
  SYNCDELAY;
  // enable dual autopointer feature
  AUTOPTRSETUP |= 0x01;
  SYNCDELAY; 
  SYNCDELAY;
  SYNCDELAY;

}


void TD_Poll(void)              // Called repeatedly while the device is idle
{
 /* WORD i;
  WORD count;

  if(!(EP2468STAT & bmEP2EMPTY))
  { // check EP2 EMPTY(busy) bit in EP2468STAT (SFR), core set's this bit when FIFO is empty
     if(!(EP2468STAT & bmEP6FULL))
     {  // check EP6 FULL(busy) bit in EP2468STAT (SFR), core set's this bit when FIFO is full
        APTR1H = MSB( &EP2FIFOBUF );
        APTR1L = LSB( &EP2FIFOBUF );

        AUTOPTRH2 = MSB( &EP6FIFOBUF );
        AUTOPTRL2 = LSB( &EP6FIFOBUF );

        count = (EP2BCH << 8) + EP2BCL;

        // loop EP2OUT buffer data to EP6IN
        for( i = 0x0000; i < count; i++ )
        {
           // setup to transfer EP2OUT buffer to EP6IN buffer using AUTOPOINTER(s)
           EXTAUTODAT2 = EXTAUTODAT1;
        }
        EP6BCH = EP2BCH;  
        SYNCDELAY;  
        EP6BCL = EP2BCL;        // arm EP6IN
        SYNCDELAY;                    
        EP2BCL = 0x80;          // re(arm) EP2OUT
     }
  }

  if(!(EP2468STAT & bmEP4EMPTY))
  { // check EP4 EMPTY(busy) bit in EP2468STAT (SFR), core set's this bit when FIFO is empty
     if(!(EP2468STAT & bmEP8FULL))
     {  // check EP8 FULL(busy) bit in EP2468STAT (SFR), core set's this bit when FIFO is full
        APTR1H = MSB( &EP4FIFOBUF );
        APTR1L = LSB( &EP4FIFOBUF );

        AUTOPTRH2 = MSB( &EP8FIFOBUF );
        AUTOPTRL2 = LSB( &EP8FIFOBUF );

        count = (EP4BCH << 8) + EP4BCL;

        // loop EP4OUT buffer data to EP8IN
        for( i = 0x0000; i < count; i++ )
        {
           // setup to transfer EP4OUT buffer to EP8IN buffer using AUTOPOINTER(s)
           EXTAUTODAT2 = EXTAUTODAT1;
        }
        EP8BCH = EP4BCH;  
        SYNCDELAY;  
        EP8BCL = EP4BCL;        // arm EP8IN
        SYNCDELAY;                    
        EP4BCL = 0x80;          // re(arm) EP4OUT
     }
  } */
}

BOOL TD_Suspend(void)          // Called before the device goes into suspend mode
{
   return(TRUE);
}

BOOL TD_Resume(void)          // Called after the device resumes
{
   return(TRUE);
}

//-----------------------------------------------------------------------------
// Device Request hooks
//   The following hooks are called by the end point 0 device request parser.
//-----------------------------------------------------------------------------

BOOL DR_GetDescriptor(void)
{
   return(TRUE);
}

BOOL DR_SetConfiguration(void)   // Called when a Set Configuration command is received
{
   Configuration = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

BOOL DR_GetConfiguration(void)   // Called when a Get Configuration command is received
{
   EP0BUF[0] = Configuration;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

BOOL DR_SetInterface(void)       // Called when a Set Interface command is received
{
   AlternateSetting = SETUPDAT[2];
   return(TRUE);            // Handled by user code
}

BOOL DR_GetInterface(void)       // Called when a Set Interface command is received
{
   EP0BUF[0] = AlternateSetting;
   EP0BCH = 0;
   EP0BCL = 1;
   return(TRUE);            // Handled by user code
}

BOOL DR_GetStatus(void)
{
   return(TRUE);
}

BOOL DR_ClearFeature(void)
{
   return(TRUE);
}

BOOL DR_SetFeature(void)
{
   return(TRUE);
}

BOOL DR_VendorCmnd(void)
{
  BYTE tmp;
  
  switch (SETUPDAT[1])
  {
     case VR_NAKALL_ON:
        tmp = FIFORESET;
        tmp |= bmNAKALL;      
        SYNCDELAY;                    
        FIFORESET = tmp;
        break;
     case VR_NAKALL_OFF:
        tmp = FIFORESET;
        tmp &= ~bmNAKALL;      
        SYNCDELAY;                    
        FIFORESET = tmp;
        break;
     default:
        return(TRUE);
  }

  return(FALSE);
}

//-----------------------------------------------------------------------------
// USB Interrupt Handlers
//   The following functions are called by the USB interrupt jump table.
//-----------------------------------------------------------------------------

// Setup Data Available Interrupt Handler
void ISR_Sudav(void) interrupt 0
{
   GotSUD = TRUE;            // Set flag
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUDAV;         // Clear SUDAV IRQ
}

// Setup Token Interrupt Handler
void ISR_Sutok(void) interrupt 0
{
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUTOK;         // Clear SUTOK IRQ
}

void ISR_Sof(void) interrupt 0
{
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSOF;            // Clear SOF IRQ
}

void ISR_Ures(void) interrupt 0
{
   // whenever we get a USB reset, we should revert to full speed mode
   pConfigDscr = pFullSpeedConfigDscr;
   ((CONFIGDSCR xdata *) pConfigDscr)->type = CONFIG_DSCR;
   pOtherConfigDscr = pHighSpeedConfigDscr;
   ((CONFIGDSCR xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;

   EZUSB_IRQ_CLEAR();
   USBIRQ = bmURES;         // Clear URES IRQ
}

void ISR_Susp(void) interrupt 0
{
   Sleep = TRUE;
   EZUSB_IRQ_CLEAR();
   USBIRQ = bmSUSP;
}

void ISR_Highspeed(void) interrupt 0
{
   if (EZUSB_HIGHSPEED())
   {
      pConfigDscr = pHighSpeedConfigDscr;
      ((CONFIGDSCR xdata *) pConfigDscr)->type = CONFIG_DSCR;
      pOtherConfigDscr = pFullSpeedConfigDscr;
      ((CONFIGDSCR xdata *) pOtherConfigDscr)->type = OTHERSPEED_DSCR;
   }

   EZUSB_IRQ_CLEAR();
   USBIRQ = bmHSGRANT;
}
void ISR_Ep0ack(void) interrupt 0
{
}
void ISR_Stub(void) interrupt 0
{
}
void ISR_Ep0in(void) interrupt 0
{
}
void ISR_Ep0out(void) interrupt 0
{
}
void ISR_Ep1in(void) interrupt 0
{
}
void ISR_Ep1out(void) interrupt 0
{
}
void ISR_Ep2inout(void) interrupt 0
{
}
void ISR_Ep4inout(void) interrupt 0
{
}
void ISR_Ep6inout(void) interrupt 0
{
}
void ISR_Ep8inout(void) interrupt 0
{
}
void ISR_Ibn(void) interrupt 0
{
}
void ISR_Ep0pingnak(void) interrupt 0
{
}
void ISR_Ep1pingnak(void) interrupt 0
{
}
void ISR_Ep2pingnak(void) interrupt 0
{
}
void ISR_Ep4pingnak(void) interrupt 0
{
}
void ISR_Ep6pingnak(void) interrupt 0
{
}
void ISR_Ep8pingnak(void) interrupt 0
{
}
void ISR_Errorlimit(void) interrupt 0
{
}
void ISR_Ep2piderror(void) interrupt 0
{
}
void ISR_Ep4piderror(void) interrupt 0
{
}
void ISR_Ep6piderror(void) interrupt 0
{
}
void ISR_Ep8piderror(void) interrupt 0
{
}
void ISR_Ep2pflag(void) interrupt 0
{
}
void ISR_Ep4pflag(void) interrupt 0
{
}
void ISR_Ep6pflag(void) interrupt 0
{
}
void ISR_Ep8pflag(void) interrupt 0
{
}
void ISR_Ep2eflag(void) interrupt 0
{
}
void ISR_Ep4eflag(void) interrupt 0
{
}
void ISR_Ep6eflag(void) interrupt 0
{
}
void ISR_Ep8eflag(void) interrupt 0
{
}
void ISR_Ep2fflag(void) interrupt 0
{
}
void ISR_Ep4fflag(void) interrupt 0
{
}
void ISR_Ep6fflag(void) interrupt 0
{
}
void ISR_Ep8fflag(void) interrupt 0
{
}
void ISR_GpifComplete(void) interrupt 0
{
}
void ISR_GpifWaveform(void) interrupt 0
{
}
