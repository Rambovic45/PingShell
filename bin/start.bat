@echo off 
title PingShell
cls
::Start a main.ps1 module
@powershell.exe -noprofile -executionpolicy bypass -file "%~dp0./script/main.ps1"
