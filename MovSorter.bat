@echo off
setlocal enabledelayedexpansion

for %%f in (*.*) do (
    if /I "%%~xf" neq ".bat" if /I "%%~xf" neq ".cmd" (
        set "filename=%%~nf"

        for /f "tokens=1 delims=." %%a in ("!filename!") do (
            set "basename=%%a"
        )

        rem Use delayed expansion correctly when creating and using the directory
        if not exist "!basename!" (
            echo Creating directory: !basename!
            mkdir "!basename!"
        )

        rem Correctly expand basename in the move command
        echo Moving file %%f to directory !basename!
        move "%%f" "!basename!\" || echo Failed to move %%f
    )
)

endlocal
