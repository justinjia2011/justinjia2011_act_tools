@echo off
title HWID tool by justinjia2011(github.com/justinjia2011)
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin


set "GTdir=%ProgramData%\Microsoft\Windows\ClipSVC\GenuineTicket\

echo 定制许可证中

<nul set /p "=<?xml version="1.0" encoding="utf-8"?><genuineAuthorization xmlns="http://www.microsoft.com/DRM/SL/GenuineAuthorization/1.0"><version>1.0</version><genuineProperties origin="sppclient"><properties>OA3xOriginalProductId=;OA3xOriginalProductKey=;SessionId=TwBTAE0AYQBqAG8AcgBWAGUAcgBzAGkAbwBuAD0ANQA7AE8AUwBNAGkAbgBvAHIAVgBlAHIAcwBpAG8AbgA9ADEAOwBPAFMAUABsAGEAdABmAG8AcgBtAEkAZAA9ADIAOwBQAFAAPQAwADsASAB3AGkAZAA9AFcAdwBBAEEAQQBCAE0AQQBNAEEAQQBBAEEAQQBBAEEAQQBRAEEAQwBBAEEARQBBAEEAZwBBAEMAQQBBAEEAQQBBAFEAQQBCAEEAQQBFAEEAeQBrAHQAZwB5AEsAagBCAEsAcwBLAFUAKwBTAEoALwBEAHQATgA5ADUAbgB3AHAAcQB0AE8AMgB1AEQAeQBFAEQAQQBBAEMAQQBBAEUAQgBBAEEASQBGAEEAQQBNAEIAQQBBAFEAQwBBAEEAWQBCAEEAQQBnAEgAQQBBAGsARABBAEEAbwBCAEEAQQB3AEgAQQBBAEEAQQBBAEEAQQBBAEEAQQA9AD0AOwBQAGYAbgA9AE0AaQBjAHIAbwBzAG8AZgB0AC4AVwBpAG4AZABvAHcAcwAuADEAMgAxAC4AWAAxADkALQA5ADgAOAA4ADYAXwA4AHcAZQBrAHkAYgAzAGQAOABiAGIAdwBlADsARABvAHcAbgBsAGUAdgBlAGwARwBlAG4AdQBpAG4AZQBTAHQAYQB0AGUAPQAxADsAAAA=;TimeStampClient=2023-08-17T09:07:55Z</properties><signatures><signature name="clientLockboxKey" method="rsa-sha256">Wv724s0nFMcNBcAtpsmG1wIbhviqOnSdL/+xvGttfI54oxVZO+7gbCKzVJbAE1KSi7irnETok2VWbbp8kfNBCiX78DpyxVw/9rDJ9P9LdfjUp0QKs3dBdKDX9Mf3FvCq7kYCcxyZfnzYEHxbCCMawIWMBhuvgaAvmAjpHP4L0cc=</signature></signatures></genuineProperties></genuineAuthorization>" >"%GTdir%\GenuineTicket"

echo 许可证制作完毕！

Powershell Restart-Service ClipSVC






slmgr -ipk YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY




slmgr -ato






echo            ---------------------------------------------------------------------- act finished  /HWID tool by justinjia2011(github.com/justinjia2011)\-----------------------------------------------------------------------------------
Pause




:Admin


(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
