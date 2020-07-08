@echo off 
cls
set "PS=PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass"

:Menu
echo.
echo ------------------------------------------------------------
echo 1. Install Depedency (Install Ini Terlebih Dahulu)
echo ============================================================
echo ------------------------------------------------------------
echo 2. Install MinecraftUWP (Lakukan setelah Install Depedency)
echo ============================================================
echo.
set /p op=
if "%op%"=="1" goto :Depedency
if "%op%"=="2" goto :UWP

:UWP
%PS% Add-AppxPackage AppxManifest.xml -register
goto :Final

:Depedency
echo.
echo ------------------------------------------------------------
echo 1. Microsoft.Services.Store.Engagement_10.0.19011.0 (Arm)
echo ============================================================
echo ------------------------------------------------------------
echo 2. Microsoft.Services.Store.Engagement_10.0.19011.0 (Arm 64 Bit)
echo ============================================================
echo ------------------------------------------------------------
echo 3. Microsoft.Services.Store.Engagement_10.0.19011.0 (64 Bit)
echo ============================================================
echo ------------------------------------------------------------
echo 4. Microsoft.Services.Store.Engagement_10.0.19011.0 (32 bit)
echo ============================================================
echo.
set /p op=
if "%op%"=="1" goto :Arm
if "%op%"=="2" goto :Arm64
if "%op%"=="3" goto :x64
if "%op%"=="4" goto :x86

:Arm
echo.
echo ============================================================
echo Installing Microsoft.Services.Store.Engagement (Arm [Arm 32Bit] Version)
echo ============================================================
echo.
%PS% Add-AppxPackage "Microsoft.Services.Store.Engagement_10.0.19011.0_arm__8wekyb3d8bbwe.Appx"
goto :Menu

:Arm64
echo.
echo ============================================================
echo Installing Microsoft.Services.Store.Engagement (Arm64 [Arm 64Bit] Version)
echo ============================================================
echo.
%PS% Add-AppxPackage "Microsoft.Services.Store.Engagement_10.0.19011.0_arm64__8wekyb3d8bbwe.Appx"
goto :Menu

:x64
echo.
echo ============================================================
echo Installing Microsoft.Services.Store.Engagement (x64 [64Bit] Version)
echo ============================================================
echo.
%PS% Add-AppxPackage "Microsoft.Services.Store.Engagement_10.0.19011.0_x64__8wekyb3d8bbwe.Appx"
goto :Menu

:x86
echo.
echo ============================================================
echo Installing Microsoft.Services.Store.Engagement (x86 [32Bit] Version)
echo ============================================================
echo.
%PS% Add-AppxPackage "Microsoft.Services.Store.Engagement_10.0.19011.0_x86__8wekyb3d8bbwe.Appx"
goto :Menu

:Final
echo.
echo ============================================================
echo Semua Telah Terinstall, Selamat Bermain! :D
echo ============================================================
echo.
pause >nul
exit




