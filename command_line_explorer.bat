REM Add a 'Command Line' context menu item to Explorer.
REM Run this as administrator.
reg add "HKEY_CLASSES_ROOT\Directory\background\shell\Command Line"
reg add "HKEY_CLASSES_ROOT\Directory\background\shell\Command Line\command" /d cmd.exe
