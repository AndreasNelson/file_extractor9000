@echo off
setlocal enabledelayedexpansion

for %%f in (*.*) do (
    if /I "%%~xf" neq ".bat" if /I "%%~xf" neq ".cmd" ( 
        set "filename=%%~nf"

        for /f "tokens=1 delims=." %%a in ("!filename!") do (
            set "basename=%%a"
        )

        if not exist "!basename!" (
            mkdir "!basename!"
        )

        move "%%f" "!basename!\"
    )
)

endlocal