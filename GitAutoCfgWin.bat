@echo off
REM File Name       : GitAutoCfgWin.bat
REM Description     : Auto configure git for Windows system
REM Author          : zwm
REM Time            : 20160329
REM REVERSION       : 20170118
REM                   V0.2 Add error level detect after copying

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
copy /y %cd%\resource\.gitconfig C:\users\%username%
if errorlevel 1 (
    echo File ".gitconfig" copy failed!!!"
    goto ERR
)
copy /y %cd%\resource\.gitignore_global C:\users\%username%
if errorlevel 1 (
    echo File ".gitignore_global" copy failed!!!"
    goto ERR
)

:SUC
echo.
echo ##  File copying finish!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo             SUCCESS: GIT CONFIG UPDATED !
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
goto FIN

:ERR
echo.
echo ##  File copying failed!!!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo             ERROR: COPYING GIT FILE!!!
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
goto FIN

:FIN
echo.
pause
