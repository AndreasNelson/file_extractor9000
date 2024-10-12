for %%f in (*.*) do (
    echo Processing file: %%f
    if /I "%%~xf" neq ".bat" if /I "%%~xf" neq ".cmd" ( 
        set "filename=%%~nf"
        echo Filename: !filename!

        for /f "tokens=1 delims=." %%a in ("!filename!") do (
            set "basename=%%a"
            echo Basename: !basename!
        )

        if not exist "!basename!" (
            echo Creating directory: !basename!
            mkdir "!basename!"
        )

        echo Moving %%f to directory !basename!
        move "%%f" "!basename!\" || echo Failed to move %%f
    )
)
