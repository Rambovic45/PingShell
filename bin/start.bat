@echo off 
title PingShell
cls
::Start a gui module
@powershell.exe -noprofile -executionpolicy bypass -file "%~dp0./script/gui.ps1"
