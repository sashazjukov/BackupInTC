@echo off
:: variables
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set drive=c:\development\AZU\BackUP
set folder=%datetime:~0,8%
set backupcmd=xcopy /s /c /d /e /h /i /r /k /y
set datetime=%datetime:~8,6%

echo ### Backing up directory...
@echo on
%backupcmd% %1 "%drive%\%folder%\%2_%datetime%.%3*"

@pause