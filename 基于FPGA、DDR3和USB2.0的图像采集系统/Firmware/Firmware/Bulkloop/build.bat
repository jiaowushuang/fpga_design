@echo off
REM #--------------------------------------------------------------------------
REM #	File:		BUILD.BAT
REM #	Contents:	Batch file to build firmware
REM #
REM # $Archive: /USB/Examples/Fx2lp/bulkloop/build.bat $
REM # $Date: 9/01/03 8:53p $
REM # $Revision: 3 $
REM #
REM #
REM #-----------------------------------------------------------------------------
REM # Copyright 2011, Cypress Semiconductor Corporation
REM #-----------------------------------------------------------------------------

REM # command line switches
REM # ---------------------
REM # -clean delete temporary files

REM ### Compile FrameWorks code ###
c51 fw.c debug objectextend code small moddp2

REM ### Compile user peripheral code ###
REM ### Note: This code does not generate interrupt vectors ###
c51 bulkloop.c db oe code small moddp2 noiv

REM ### Assemble descriptor table ###
a51 dscr.a51 errorprint debug

REM ### Link object code (includes debug info) ###
REM ### Note: XDATA and CODE must not overlap ###
REM ### Note: using a response file here for line longer than 128 chars
echo fw.obj, dscr.obj, bulkloop.obj, > tmp.rsp
echo ..\lib\USBJmpTb.obj, >> tmp.rsp
echo ..\lib\EZUSB.lib  >> tmp.rsp
echo TO bulkloop RAMSIZE(256) PL(68) PW(78) CODE(80h) XDATA(1000h)  >> tmp.rsp
bl51 @tmp.rsp

REM ### Generate intel hex image of binary (no debug info) ###
oh51 bulkloop HEXFILE(bulkloop.hex)

REM ### Generate serial eeprom image for C2 (EZ-USB FX2)bootload ###
..\bin\hex2bix -i -f 0xC2 -o bulkloop.iic bulkloop.hex

REM ### usage: build -clean to remove intermediate files after build
if "%1" == "-clean" del tmp.rsp
if "%1" == "-clean" del *.lst
if "%1" == "-clean" del *.obj
if "%1" == "-clean" del *.m51

