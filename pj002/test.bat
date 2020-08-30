echo off
chcp 65001
set /a c=0
setlocal ENABLEDELAYEDEXPANSION
for /f "tokens=1,2 delims=|" %%i in (buffer.txt) do (
	echo %%i
	echo %%j
	set /a c=c+1
	echo !c!
)
endlocal