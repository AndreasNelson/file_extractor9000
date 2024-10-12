@echo off
setlocal enabledelayedexpansion

REM Loop through all files in the current directory
for %%f in (*.*) do (
    REM Skip .bat and .cmd files
    if /I not "%%~xf"==".bat" if /I not "%%~xf"==".cmd" (
        REM Get the base name of the file (without extension)
        set "filename=%%~nf"
        
        REM Remove additional extensions (e.g., .en.srt -> .srt)
        for /f "tokens=1 delims=." %%a in ("!filename!") do (
            set "basename=%%a"
        )
        
        REM Create a directory with the base name if it doesn't exist
        if not exist "!basename!" (
            mkdir "!basename!"
        )
        
        REM Move the file into the corresponding directory
        move "%%f" "!basename!\"
    )
)

endlocal