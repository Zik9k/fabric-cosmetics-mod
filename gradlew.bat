@echo off
setlocal
set GRADLE_VERSION=8.11.1
set GRADLE_USER_HOME=%GRADLE_USER_HOME%
if "%GRADLE_USER_HOME%"=="" set GRADLE_USER_HOME=%USERPROFILE%\.gradle
set DIST_DIR=%GRADLE_USER_HOME%\wrapper\dists\gradle-%GRADLE_VERSION%-bin
set INSTALL_DIR=%DIST_DIR%\gradle-%GRADLE_VERSION%
set ZIP=%DIST_DIR%\gradle-%GRADLE_VERSION%-bin.zip

if not exist "%INSTALL_DIR%\bin\gradle.bat" (
  if not exist "%ZIP%" (
    echo Downloading Gradle %GRADLE_VERSION%...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip' -OutFile '%ZIP%'"
    if errorlevel 1 exit /b 1
  )
  if not exist "%DIST_DIR%" mkdir "%DIST_DIR%"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Force '%ZIP%' '%DIST_DIR%'"
  if errorlevel 1 exit /b 1
)

call "%INSTALL_DIR%\bin\gradle.bat" %*
endlocal
