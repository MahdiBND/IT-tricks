@echo off
setlocal enabledelayedexpansion

@REM Change dirs how you want.
set SOURCE_DIR=d:
set DEST_DIR=i:Mahdi
set FILENAMES_TO_COPY=*.txt

for /R "%SOURCE_DIR%" %%F IN (%FILENAMES_TO_COPY%) do (
    if exist "%%F" (
    	set FILE_DIR=%%~dpF
    	set FILE_INTERMEDIATE_DIR=!FILE_DIR:%SOURCE_DIR%=!
    	xcopy /E /C /I /Q /Y "%%F" "%DEST_DIR%!FILE_INTERMEDIATE_DIR!"
    )
)