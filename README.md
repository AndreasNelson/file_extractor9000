# EpSorter.bat

## Description

EpSorter.bat is a batch script designed to organize `.mkv` files into season-specific directories. The script performs the following steps:

1. Moves all `.mkv` files from subdirectories to the root directory.
2. Removes all empty subdirectories.
3. Creates a new folder for each season based on the filenames.
4. Sorts the files into their respective season folders.

## Usage

1. Place the `EpSorter.bat` file in the root directory where your `.mkv` files and subdirectories are located.
2. Double-click the `EpSorter.bat` file or run it from the command prompt.

## Example

Given the following directory structure:

root/ ├── Show S01/ │ ├── Episode S01E01.mkv │ ├── Episode S01E02.mkv ├── Show S02/ │ ├── Episode S02E01.mkv │ ├── Episode S02E02.mkv

After running `EpSorter.bat`, the directory structure will be:

root/ ├── Season 01/ │ ├── Episode S01E01.mkv │ ├── Episode S01E02.mkv ├── Season 02/ │ ├── Episode S02E01.mkv │ ├── Episode S02E02.mkv

Notes
Ensure that the filenames follow the pattern Show.SXXEXX.*.mkv where SXX represents the season number.
The script assumes that the season number is always in the format SXX and is located after the first period in the filename.
License
This script is provided "as is" without any warranty. Use it at your own risk.