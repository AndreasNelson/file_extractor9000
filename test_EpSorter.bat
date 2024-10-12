@echo off
setlocal enabledelayedexpansion

:: Step 1: Set up test environment
echo Setting up test environment...
mkdir test_env
cd test_env
mkdir "Show S01"
mkdir "Show S02"
echo Dummy content > "Show S01\Episode S01E01.mkv"
echo Dummy content > "Show S01\Episode S01E02.mkv"
echo Dummy content > "Show S02\Episode S02E01.mkv"
echo Dummy content > "Show S02\Episode S02E02.mkv"

:: Step 2: Run the EpSorter.bat script
echo Running EpSorter.bat...
call ..\EpSorter.bat

:: Step 3: Verify the results
echo Verifying results...
if exist "Season 01\Episode S01E01.mkv" (
    echo Test 1 passed
) else (
    echo Test 1 failed
)
if exist "Season 01\Episode S01E02.mkv" (
    echo Test 2 passed
) else (
    echo Test 2 failed
)
if exist "Season 02\Episode S02E01.mkv" (
    echo Test 3 passed
) else (
    echo Test 3 failed
)
if exist "Season 02\Episode S02E02.mkv" (
    echo Test 4 passed
) else (
    echo Test 4 failed
)

:: Clean up test environment
echo Cleaning up test environment...
cd ..
rd /s /q test_env

endlocal