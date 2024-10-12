@echo off
setlocal enabledelayedexpansion

:: Get the root directory (current directory)
set root_dir=%cd%

:: Step 1: Move all .mkv and .mp4 files from subfolders to the root directory
for /r %%f in (*.mkv *.mp4) do (
  move "%%f" "%root_dir%"
)

:: Step 2: Remove all empty subdirectories
for /d /r %%d in (*) do (
  rd "%%d" 2>nul
)

:: Step 3 and 4: Create a new folder for each season and sort the files
for %%f in (*.mkv *.mp4) do (
  set "file=%%f"

  :: Extract the season number from the filename
  setlocal disabledelayedexpansion
  for /f "tokens=2 delims=S" %%a in ("%%~nf") do (
    endlocal
    set "season=%%a"
    set "season=!season:~0,2!"
    setlocal enabledelayedexpansion
  )

  :: Create the season directory if it doesn't exist
  set "season_dir=Season !season!"
  if not exist "!season_dir!" mkdir "!season_dir!"

  :: Move the file into the season directory
  move "%%f" "!season_dir!\"
)

endlocal