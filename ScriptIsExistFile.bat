@echo OFF
title Auto Find Missing File In Folder
rem Ceated by Ramdannur
cls
echo    ^_       ^_^_ ^_^_        ^_^_^_  ^_  ^_             
echo   ^| ^| ^_^_^_ ^|  ^\  ^\ ^_ ^_  ^| ^_^_^>^<^_^>^| ^| ^_^_^_       
echo   ^| ^|^<^_-^< ^|     ^|^| ^| ^| ^| ^_^> ^| ^|^| ^|^/ .^_^>      
echo   ^|^_^|^/^_^_^/ ^|^_^|^_^|^_^|`^_. ^| ^|^_^|  ^|^_^|^|^_^|^\^_^_^_.      
echo                  ^<^_^_^_'                       
echo    ^_^_ ^_^_  ^_  ^_^_^_  ^_^_^_  ^_  ^_ ^_  ^_^_^_  ^_^_^_  ^_^_^_ 
echo   ^|  ^\  ^\^| ^|^/ ^_^_^>^/ ^_^_^>^| ^|^| ^\ ^|^/  ^_^>^<^_. ^>^<^_. ^>
echo   ^|     ^|^| ^|^\^_^_ ^\^\^_^_ ^\^| ^|^|   ^|^| ^<^_^/^\^/^_^/  ^/^_^/ 
echo   ^|^_^|^_^|^_^|^|^_^|^<^_^_^_^/^<^_^_^_^/^|^_^|^|^_^\^_^|`^_^_^_^_^/^<^_^>  ^<^_^> 
echo.
echo                                  ~ RetsuX                                           
echo.
echo.

IF "%1" == "" (
    echo * Undenfined First Path Paramter ...
) 

IF "%2" == "" (
    echo * Undenfined Second Path Paramter ...
)

IF NOT "%2" == "" IF NOT "%1" == "" (
	echo Scanning Folder %1^/ with Folder %2^/ ...
    echo *** Processing ...
	FOR %%G IN (%1^/*) DO (
		rem echo ^\%%G

		rem is exist file
		IF exist %2^\%%G (
		    echo file exists
		) else (
		    echo %2^\%%G doesn't exist
		)
	)
    echo *** Success ...
)
