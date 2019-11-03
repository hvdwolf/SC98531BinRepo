@echo off

REM check whether 6521 zip file provided
if "%1"=="" (
        echo.
        echo no argument given. I need the zip file as parameter. Restart the script with "sign_zip.bat name_of_zip file".
        echo.
        GOTO END
)

java -jar Signapkv2.jar -w -v testkey.x509.pem testkey.pk8 %1.zip tmp.zip

REM Maybe the user already gave correct names, maybe not
mv tmp.zip 6521_1.zip
mv %1.zip 6521_1_input.zip