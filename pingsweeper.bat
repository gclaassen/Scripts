FOR /l %%i in (1,1,255) do ping -w 5 -n 1 10.14.6.%%i | find "Reply from"
PAUSE