echo off
chcp 65001
for /f %%i in (data.txt) do (
	echo %%i
)