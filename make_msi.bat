@echo off
if "%1"=="" (
  echo Missing version number.
  echo USAGE: %~0 ^<x.y.z^>
  exit /b 1
)
del /f *.msi >NUL 2>&1
set PATH=%PATH%;%WiX%bin
candle -nologo dartsdk32.wxs -dVersion="%1" -out dartsdk32.obj && ^
light -nologo dartsdk32.obj -out dartsdk32-"%1".msi -ext WixUtilExtension -ext WixUIExtension
candle -nologo dartsdk64.wxs -dVersion="%1" -out dartsdk64.obj && ^
light -nologo dartsdk64.obj -out dartsdk64-"%1".msi -ext WixUtilExtension -ext WixUIExtension
del /f *.obj >NUL 2>&1
del /f *.wixpdb >NUL 2>&1
dir *.msi
