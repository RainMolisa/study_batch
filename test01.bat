echo off
for %%c in (Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C) do (
	if exist %%c: (
		echo %%c:\
		for /R c: %%i in (*.bat) do (
			echo %%i
		)
	)
)

