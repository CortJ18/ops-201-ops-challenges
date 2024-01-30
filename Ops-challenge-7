@echo off

setlocal enabledelayedexpansion
::Prompt the user to input the source folder path.
set /p "sourcePath=Enter the source folder path:" 


if not exist "!sourcePath!\" (

    echo Invalid source folder path. Please check and try again.

    goto :EOF

)
::Prompt the user to input the destination folder path.
set /p "destinationPath=Enter the destination folder path:" 


::Implement error handling mechanisms to notify the user if the source or destination folder paths are invalid.


if not exist "!destinationPath!\" (

    echo Invalid source folder path. Please check and try again.

    goto :EOF

)

::Uses ROBOCOPY to copy files and subdirectories from the source folder to the destination folder.
robocopy "!sourcePath!" "!destinationPath!" /E /mir

if errorlevel 8 (

    echo Some files or directories were not copied.
) else (

echo copies were succesful.
)
:end


::QUESTION: In a real-world scenario, where is the optimal destination for storing backup files? Justify your choice(s) in a comment at the bottom of your script.
::It should be a blend of both the cloud and physical storaage to ensure that if one option goes down we have another ready to go and spin up.


