@echo off
setlocal

if [%1] == [] goto :fail
set path_to_nvimqt=%1

rem Tested on Windows 10 22H2

rem Add action to context menu when clicked on free space in directory
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\nvim_qt" /ve /d "Open nvim-qt here ..." /t REG_SZ /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\nvim_qt" /v "Icon" /d "%path_to_nvimqt%" /t REG_SZ /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\nvim_qt\command" /ve /d "%path_to_nvimqt%" /t REG_SZ /f

exit /b 0

:fail
echo Usage:
echo   %~n0%~x0 FULL_PATH_TO_NVIMQT_EXE
exit /b 1

