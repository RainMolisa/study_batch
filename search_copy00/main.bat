echo off
chcp 65001
rd /s /q result
mkdir result
for /f %%i in (data.txt) do (
	echo %%i
	for /R d:\ %%f in (%%i*) do (
		echo %%i?%%f >> buffer.txt
	)
)
set /a c=0
setlocal ENABLEDELAYEDEXPANSION
for /f "tokens=1,2 delims=?" %%i in (buffer.txt) do (
	echo %%i
	echo %%j
	set /a c=c+1
	if not exist result\%%i (
		xcopy %%j result
	) else (
		copy %%j .\result\z!c!_%%i
	)
)
endlocal
del /f /s /q buffer.txt