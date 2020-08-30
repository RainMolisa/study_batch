echo off
chcp 65001
for /R d:\ %%f in (IMG_0214.JPG*) do (
	echo %%f
)