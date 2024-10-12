# Batch File Organizer

## Description

This repository contains several batch scripts designed to help organize and manage your media files. The scripts included are:

1. `EpSorter.bat`: Organizes `.mkv` and `.mp4` files into season-specific directories.
2. `MovSorter.bat`: Organizes movie files into directories based on their filenames.

## Download

[Download All Batch Files (ZIP)](https://github.com/AndreasNelson/file_extractor9000/raw/main/batch_files.zip)

## Scripts

### EpSorter.bat

`EpSorter.bat` is a batch script designed to organize `.mkv` and `.mp4` files into season-specific directories. The script performs the following steps:

1. Moves all episode files from subdirectories to the root directory.
2. Removes all empty subdirectories.
3. Creates a new folder for each season based on the filenames.
4. Sorts the files into their respective season folders.

#### Usage

1. Place the `EpSorter.bat` file in the root directory where your episode files and subdirectories are located.
2. Double-click the `EpSorter.bat` file or run it from the command prompt.

### MovSorter.bat

`MovSorter.bat` is a batch script designed to organize movie files into directories based on their filenames. The script performs the following steps:

1. Loops through all files in the current directory.
2. Skips `.bat` and `.cmd` files.
3. Creates a directory with the base name of each file if it doesn't exist.
4. Moves the file into the corresponding directory.

#### Usage

1. Place the `MovSorter.bat` file in the root directory where your movie files are located.
2. Double-click the `MovSorter.bat` file or run it from the command prompt.

## GitHub Actions

This repository includes GitHub Actions workflows to automate testing and updating of the batch scripts.

### Test EpSorter.bat

The `.github/workflows/test.yml` workflow tests the `EpSorter.bat` script by setting up a test environment, running the script, and verifying the results.

### Update Downloads Zip

The `.github/workflows/update-downloads-zip.yml` workflow updates the `downloads.zip` file whenever changes are made to the `downloads` directory.
