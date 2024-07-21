@echo off
title CmdEngin3 Terminal
chcp 65001 >nul
cd extensions
:start
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
:cmd
echo.
set /p setCommand="  [92m%username%[0m@[95m%computername%[0m$-  "
if "%setCommand%" equ "EXIT" (
    goto :end
) else (
    %setCommand%
    goto :cmd
)
:end