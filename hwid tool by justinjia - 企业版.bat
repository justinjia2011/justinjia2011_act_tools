@echo off
title HWID tool by justinjia2011(github.com/justinjia2011)
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin


set "GTdir=%ProgramData%\Microsoft\Windows\ClipSVC\GenuineTicket\

echo 定制许可证中

<nul set /p "=<?xml version="1.0" encoding="utf-8"?><genuineAuthorization xmlns="http://www.microsoft.com/DRM/SL/GenuineAuthorization/1.0"><version>1.0</version><genuineProperties origin="sppclient"><properties>OA3xOriginalProductId=;OA3xOriginalProductKey=;SessionId=TwBTAE0AYQBqAG8AcgBWAGUAcgBzAGkAbwBuAD0ANQA7AE8AUwBNAGkAbgBvAHIAVgBlAHIAcwBpAG8AbgA9ADEAOwBPAFMAUABsAGEAdABmAG8AcgBtAEkAZAA9ADIAOwBQAFAAPQAwADsASAB3AGkAZAA9AFcAUQBBAEEAQQBCAE0AQQBMAGcAQQBBAEEAQQBBAEEAQQBRAEEAQwBBAEEARQBBAEEAUQBBAEMAQQBBAEEAQQBBAFEAQQBCAEEAQQBFAEEAeQBrAHQAZwB5AEsAagBCAEsAcwBLAFUAKwBTAEoALwBEAHQATgA4AEsAYQByAFQAdAByAGcAOABoAEEAdwBBAEEAZwBBAEIAQQBRAEEAQwBCAFEAQQBEAEEAUQBBAEUAQQBnAEEARwBBAFEAQQBJAEIAdwBBAEoAQQB3AEEASwBBAFEAQQBNAEIAdwBBAEEAQQBBAEEAQQBBAEEAQQA9ADsAUABmAG4APQBNAGkAYwByAG8AcwBvAGYAdAAuAFcAaQBuAGQAbwB3AHMALgA0AC4AWAAxADkALQA5ADgANgA5ADgAXwA4AHcAZQBrAHkAYgAzAGQAOABiAGIAdwBlADsARABvAHcAbgBsAGUAdgBlAGwARwBlAG4AdQBpAG4AZQBTAHQAYQB0AGUAPQAxADsAAAA=;TimeStampClient=2023-08-14T07:31:11Z</properties><signatures><signature name="clientLockboxKey" method="rsa-sha256">T3WCNym3dDONEn7yinH2VvvUoR2TT3iOMRPz3fgkiR1AROuNfZRsnIS8ah14qGY+CZPx7JyMDTGF/ZMIpZxNbb/z8QoGI6AuvWAHpoT0iHlTLyAJVoDtudT/Z16ay7vBYyqj+Ka3eC7UYo8QUTG2yRkIlNLNfW1G1PiKyZ4ypTE=</signature></signatures></genuineProperties></genuineAuthorization>" >"%GTdir%\GenuineTicket"

echo 许可证制作完毕！

Powershell Restart-Service ClipSVC






slmgr -ipk XGVPP-NMH47-7TTHJ-W3FW7-8HV2C




slmgr -ato






echo            ---------------------------------------------------------------------- act finished  /HWID tool by justinjia2011(github.com/justinjia2011)\-----------------------------------------------------------------------------------
Pause




:Admin


(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
