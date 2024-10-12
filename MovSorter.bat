@echo off
setlocal enabledelayedexpansion

REM Loop through all files in the current directory
for %%f in (*.*) do (
    REM Get the base name of the file (without extension)
    set "filename=%%~nf"
    
    REM Create a directory with the base name if it doesn't exist
    if not exist "!filename!" (
        mkdir "!filename!"
    )
    
    REM Move the file into the corresponding directory
    move "%%f" "!filename!\"
)

endlocal