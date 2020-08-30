echo off
echo hello >> buffer.txt
echo 1233 >> buffer.txt
pause
del /f /s /q buffer.txt
