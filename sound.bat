@echo off
title sound
cls
set coefficient=655
if [%1]==[] (
rem interactive
set /p input=volume: 
) else (
set input=%1
)
set /a volume=%input%*655
nircmd setsysvolume %volume%
cls
rem garbage collection
set coefficient=
set input=
set volume=
title %comspec%