ECHO OFF

IF [%1]==[A] goto administracja
IF [%1]==[a] goto administracja

IF [%1]==[I] goto informatyka
IF [%1]==[i] goto informatyka

goto error

:administracja
IF [%2]==[] goto error2
IF EXIST C:/Firma/Administracja/%2/ goto error3
mkdir "C:/Firma/Administracja/%2/Doc"
mkdir "C:/Firma/Administracja/%2/Private"
echo Witaj w firmie %2 ! > C:/Firma/Administracja/%2/Witaj.txt
goto end


:informatyka
IF [%2]==[] goto error2
IF EXIST C:/Firma/Informatyka/%2/ goto error3
mkdir "C:/Firma/Informatyka/%2/Doc"
mkdir "C:/Firma/Informatyka/%2/Private"
echo Witaj w firmie %2 ! > C:/Firma/Informatyka/%2/Witaj.txt
goto end

:error
	echo "Błąd! Pierwszy parametr musi być 'a','A' lub 'i','I'."
	goto end

:error2
	echo "Błąd! Drugi parametr nie został podany."
	goto end

:error3
	echo "Podany użytkownik już istnieje w podanym dziale."
	goto end

:end
