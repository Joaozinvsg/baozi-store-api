@echo off
echo ================================================
echo  BAOZI STORE - Verificar banco de dados
echo ================================================
echo.
echo Conectando ao MariaDB na porta 3307...
"C:\wamp64\bin\mariadb\mariadb11.5.2\bin\mysql.exe" -u root -P 3307 -e "CREATE DATABASE IF NOT EXISTS baozi_store CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; SHOW DATABASES;"

if %errorlevel% equ 0 (
    echo.
    echo  Banco 'baozi_store' OK! Execute 'rodar-api.bat' para iniciar a API.
) else (
    echo.
    echo  Erro: Inicie o WAMP primeiro e tente novamente.
)
echo.
pause
