@echo off
setlocal

rem --- Get arguments ---
set "SOURCE=%~1"
set "DEST=%~2"

rem --- Check arguments ---
if "%SOURCE%"=="" (
    echo [ERROR] Source file not specified.
    echo Usage: mv [source] [destination]
    goto :EOF
)

if "%DEST%"=="" (
    echo [ERROR] Destination not specified.
    goto :EOF
)

rem --- Execute move ---
move "%SOURCE%" "%DEST%"

endlocal