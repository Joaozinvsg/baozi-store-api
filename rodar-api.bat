@echo off
echo ================================================
echo  BAOZI STORE - Iniciando API Spring Boot
echo ================================================

set JAVA_HOME=C:\Program Files\Microsoft\jdk-17.0.19.10-hotspot
set MAVEN_HOME=C:\maven\apache-maven-3.9.6
set PATH=%JAVA_HOME%\bin;%MAVEN_HOME%\bin;%PATH%

echo.
echo Java:
java -version
echo.
echo Maven:
mvn --version
echo.
echo [Compilando e iniciando a API...]
echo Acesse: http://localhost:8080
echo Para parar: pressione CTRL+C
echo.

cd /d "%~dp0"
mvn spring-boot:run

pause
