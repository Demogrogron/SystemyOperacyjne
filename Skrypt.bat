@echo off
REM Skrzydel Krzysztof, Ślusarczyk Julita

:start
CHOICE /C TU /m "Wybierz T aby utworzyc katalog z plikami z pulpitu, lub wpisz U dla programu kasowania plikow"
IF ERRORLEVEL 2 GOTO programU
IF ERRORLEVEL 1 GOTO programT

:programT
SET /p folder="Podaj sciezke i nazwe katalogu do stworzenia: "
MKDIR %folder%
COPY C:\Users\Orion\Desktop\*.* %folder%
GOTO start

:programU
SET /p plik="Podaj sciezke i nazwe pilku do usunecia: "
IF EXIST "%plik%" (
	DEL %plik%
	GOTO start
)
IF NOT EXIST %plik% (
echo "Plik nie istnieje"
GOTO start
)
GOTO start
