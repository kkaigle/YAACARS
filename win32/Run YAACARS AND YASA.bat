@echo off
echo "============================================================"
echo "Combined YAACARS + YASA loader :: Version 1.1"

rem remove old instances of yasa first!
	taskkill /IM "yasa.exe" /F 2> NUL
	rem ... yaacars, also!
	taskkill /IM "yaacars.exe" /F 2> NUL
echo "--------------------------------------"

rem find yasa
	set yasapath=""
	rem ... inside the win32 folder
	if exist ".\yasa.exe" set yasapath=".\"
	rem ... yasa-folder parallel to the win32 folder
	if exist "..\yasa\yasa.exe" set yasapath="..\yasa\"
	rem ... yasa-folder parallel to the yaacars main folder
	if exist "..\..\yasa\yasa.exe" set yasapath="..\..\yasa\"

rem run yasa if found
	if not "%yasapath%" == "" echo "Starting yasa.exe from location: %yasapath%"
	if not "%yasapath%" == "" start "YAACARS YASA-Connector" /min %yasapath%yasa.exe
echo "--------------------------------------"

rem run yaacars
	echo "Starting yaacars.exe"
	start yaacars.exe
echo "--------------------------------------"

rem for debugging ... enough time to take a screenshot
	echo "Enjoy your flight!"
echo "============================================================"
	timeout /t 10

echo "============================================================"

