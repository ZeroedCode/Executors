:: Credit @aprllfools on discord

@echo off
:: Self-elevate if not running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

setlocal EnableDelayedExpansion
title Force Roblox Version to LIVE


echo Fetching latest version info...
for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "$json = (Invoke-WebRequest -Uri 'https://clientsettings.roblox.com/v2/client-version/WindowsPlayer/channel/LIVE').Content | ConvertFrom-Json; $json.clientVersionUpload"`) do (
    set "robloxVersion=%%A"
)

:: Add error checking for version fetch
if not defined robloxVersion (
    echo Failed to get Roblox version info. Report this message to @aprllfools or support.
    pause
    exit /b 1
)

set "version_hash=%robloxVersion:version-=%"

echo.
echo Upgrading to: %version_hash%
echo.

:: Confirm
set /p confirm="Do you want to upgrade to this version? (Y/N): "
if /i not "%confirm%"=="Y" (
    echo Fetching list of available versions...
    set "vercount=0"

    for /f "usebackq tokens=*" %%A in (`powershell -NoProfile -Command "$headers = @{ 'User-Agent' = 'WEAO-3PService' }; (Invoke-WebRequest -Uri 'http://weao.xyz/api/versions/past' -Headers $headers).Content | ConvertFrom-Json | Select-Object -ExpandProperty Windows"`) do (
        set "version_hash=%%A"
        set "version_hash=!version_hash:version-=!"
    )

    if "!version_hash!"=="version-=" (
        echo weao.xyz is down, falling back to whatexpsare.online
        for /f "usebackq tokens=*" %%A in (`powershell -NoProfile -Command "$headers = @{ 'User-Agent' = 'WEAO-3PService' }; (Invoke-WebRequest -Uri 'http://whatexpsare.online/api/versions/past' -Headers $headers).Content | ConvertFrom-Json | Select-Object -ExpandProperty Windows"`) do (
            set "version_hash=%%A"
            set "version_hash=!version_hash:version-=!"
        )
    )

    if not defined version_hash (
        echo Failed to retrieve downgrade version. Show this to @aprllfools or support.
        pause
        exit /b
    )

    echo.
    echo Latest downgrade version found: !version_hash!
    
    set /p confirm="Do you want to downgrade to this version? (Y/N): "
    if /i "!confirm!"=="Y" (
        echo Proceeding with downgrade to !version_hash!...
    ) else (
        echo Downgrade cancelled.
        pause
        exit /b
    )
)

:: Detect installs
set "foundcount=0"
if exist "%localappdata%\Fishstrap\Versions" (
    set /a foundcount+=1
    set "found_path[!foundcount!]=%localappdata%\Fishstrap"
    set "found_name[!foundcount!]=Fishstrap"
)
if exist "%localappdata%\Bloxstrap\Versions" (
    set /a foundcount+=1
    set "found_path[!foundcount!]=%localappdata%\Bloxstrap"
    set "found_name[!foundcount!]=Bloxstrap"
)
if exist "%localappdata%\Roblox\Versions" (
    set /a foundcount+=1
    set "found_path[!foundcount!]=%localappdata%\Roblox"
    set "found_name[!foundcount!]=Roblox"
)

if %foundcount% equ 0 (
    echo No Roblox, Bloxstrap, or Fishstrap installs found in standard locations.
    pause
    exit /b 1
)

:: Choose install
if %foundcount% equ 1 (
    set "selected_base_path=!found_path[1]!"
    echo Using: !found_name[1]! - !selected_base_path!
) else (
    echo.
    echo Multiple installs found:
    for /L %%i in (1,1,%foundcount%) do (
        echo %%i. !found_name[%%i]! - !found_path[%%i]!
    )
    
    :getchoice
    set /p choice="Pick install (1-%foundcount%): "
    set "isNotNumber="
    for /f "delims=0123456789" %%A in ("!choice!") do set "isNotNumber=1"
    if defined isNotNumber (
        echo Please enter a valid number.
        goto getchoice
    )

    if !choice! LSS 1 (
        echo Please select a number between 1 and %foundcount%.
        goto getchoice
    )
    if !choice! GTR %foundcount% (
        echo Please select a number between 1 and %foundcount%.
        goto getchoice
    )

    set "choice_num=!choice!"
    
    call set "selected_base_path=%%found_path[!choice_num!]%%"
    call set "selected_name=%%found_name[!choice_num!]%%"

    echo Using: !selected_name! - !selected_base_path!
)

for /f "tokens=1,2,3*" %%A in ('reg query "HKCU\Software\ROBLOX Corporation\Environments\RobloxPlayer\Channel" /v "www.roblox.com" 2^>nul') do (
    if /I "%%A"=="www.roblox.com" (
        set "channel=%%C"
        if /I not "!channel!"=="production" (
            set /p "choice=Detected that your Roblox Channel is not production. Do you want to switch to production? (y/n): "
            if /I "!choice!"=="y" (
                reg add "HKCU\Software\ROBLOX Corporation\Environments\RobloxPlayer\Channel" /v "www.roblox.com" /t REG_SZ /d "production" /f >nul
                echo Channel changed to production.
            ) else (
                echo Skipping channel fix.
            )
        )
    )
)

:: Define paths based on selection
set "versions_path=!selected_base_path!\Versions"
set "extract_path=!versions_path!\version-%version_hash%"
set "download_url=https://rdd.weao.xyz/?channel=LIVE^&binaryType=WindowsPlayer^&version=%version_hash%"

echo.
echo Downloading version: %version_hash%
echo.

start "" %download_url%

echo Waiting for download to finish...

set "download_folder=%USERPROFILE%\Downloads"
set "zip_filename=WEAO-LIVE-WindowsPlayer-version-%version_hash%.zip"

set "timeout_counter=0"
set "timeout_limit=60"

:waitForDownload
timeout /t 1 >nul
set /a "timeout_counter+=1"

if exist "%download_folder%\%zip_filename%.crdownload" goto waitForDownload
if exist "%download_folder%\%zip_filename%.part" goto waitForDownload
if exist "%download_folder%\%zip_filename%.download" goto waitForDownload
if exist "%download_folder%\%zip_filename%.tmp" goto waitForDownload

if exist "%download_folder%\%zip_filename%" goto downloadComplete

if %timeout_counter% geq %timeout_limit% (
    echo.
    echo Download timeout reached after %timeout_limit% seconds.
    echo The file was not found in the default download location.
    echo.
    
    :askDownloadPath
    set /p custom_download_folder="Please enter your download folder path (e.g. D:\Downloads): "
    
    if not exist "!custom_download_folder!" (
        echo The specified folder does not exist. Please try again.
        goto askDownloadPath
    )
    
    set "download_folder=!custom_download_folder!"
    echo Checking for download in: !download_folder!
    
    if exist "!download_folder!\%zip_filename%" (
        echo Found the file in the specified location.
        goto downloadComplete
    ) else (
        echo.
        echo File not found in the specified location either, you should contact @aprllfools or support.
        pause
        exit /b 1
    )
)

goto waitForDownload

:downloadComplete
echo Download found at: %download_folder%\%zip_filename%

for %%A in ("%download_folder%\%zip_filename%") do set "size=%%~zA"
echo Download successful (Size: %size% bytes)

echo.
echo Removing old version from !versions_path!...
if exist "!versions_path!\" (
    for /d %%d in ("!versions_path!\version-*") do (
        if /i not "%%~nxd"=="version-%version_hash%" (
            echo Deleting: "%%~fd"
            rmdir /s /q "%%d"
        ) else (
            echo Keeping current target version folder: "%%~fd"
        )
    )
) else (
    echo Versions directory !versions_path! not found, skipping cleanup.
)

set "download_zip=%download_folder%\%zip_filename%"

:: Extract
echo.
echo Extracting to: !extract_path!
if not exist "!extract_path!" mkdir "!extract_path!" >nul 2>&1

:: Check for 7-Zip via registry
for /f "delims=" %%A in ('powershell -NoProfile -Command "Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object { $_.DisplayName -like '7-Zip*' } | Select-Object -ExpandProperty InstallLocation"') do (
    set "sevenzip=%%A"
)

:: Check for WinRAR via registry
for /f "delims=" %%A in ('powershell -NoProfile -Command "Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object { $_.DisplayName -like 'WinRAR*' } | Select-Object -ExpandProperty InstallLocation"') do (
    set "winrar=%%A"
)

if defined sevenzip (
    echo Found 7-Zip in registry. Extracting...
    call "!sevenzip!\7z.exe" x "%download_zip%" -o"!extract_path!" -y
) else if defined winrar (
    echo Found WinRAR in registry. Extracting...
    call "!winrar!\WinRAR.exe" x -y "%download_zip%" "!extract_path!\"
) else (
    echo Neither 7-Zip nor WinRAR found in registry. Falling back to PowerShell...
    powershell -NoProfile -Command "Expand-Archive -Path '%download_zip%' -DestinationPath '!extract_path!' -Force"
    if %errorlevel% neq 0 (
        echo Extraction failed. %errorlevel%
        pause
        exit /b 1
    )
)

:: Cleanup downloaded zip
echo Cleaning up temp...
del "%download_zip%" >nul 2>&1

echo.
echo Upgrade complete to version-%version_hash%
echo Files installed to: !extract_path!
echo Opening versions folder...
explorer "!versions_path!"
pause
exit /b 0
