@echo off
REM File Name       : GitAutoCfgWin.bat
REM Description     : Auto configure git for Windows system
REM Author          : zwm
REM Time            : 20160329

REM ------------------------------------------------------------
REM Const Definition
REM ------------------------------------------------------------
REM Git_Cfg_Path: C:\users\username
REM ------------------------------------------------------------

REM ------------------------------------------------------------
REM Display Welcome
REM ------------------------------------------------------------
echo ----------------------------------------------------------
echo --          Git Config Auto Load Program               
echo --                                           win version  
echo ----------------------------------------------------------
echo --  This file automatically copy .gitconfig file to the 
echo --  C:\users\username folder!
echo ----------------------------------------------------------
echo --  OK, let's begin
pause

REM ------------------------------------------------------------
REM Copy file
REM ------------------------------------------------------------
echo ##  Copying files ...
copy /y .\resource\.gitconfig C:\users\%username%
echo ##  Copy file finish !
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo             SUCCESS: VIM UPDATED !
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pause
