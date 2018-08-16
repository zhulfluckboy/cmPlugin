@echo off
setlocal
echo run account tool : autoTableGen-AC.
set "CURRENT_DIR=%cd%"
echo the CURRENT_DIR is %CURRENT_DIR%

if exist "%CURRENT_DIR%\autoTableGen-AC.bat" goto okPath
echo the CURRENT_DIR is not right.
echo please go to right dic, then run the autoTableGen-AC.bat.
goto end

:okPath
echo java -cp %CURRENT_DIR%\;%CURRENT_DIR%\libs\* com.asiainfo.wh.cm.auto.pdm.PdmParseUtil AC
java -cp "%CURRENT_DIR%\;%CURRENT_DIR%\libs\*"  com.asiainfo.wh.cm.auto.pdm.PdmParseUtil  AC

echo run account tool : autoTableGen-AC finish!
pause

:end