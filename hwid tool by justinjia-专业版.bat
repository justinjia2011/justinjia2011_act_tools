@echo off
title HWID tool by justinjia2011(github.com/justinjia2011)
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin


set "GTdir=%ProgramData%\Microsoft\Windows\ClipSVC\GenuineTicket\

echo 定制许可证中

<nul set /p "=<?xml version="1.0" encoding="utf-8"?><genuineAuthorization xmlns="http://www.microsoft.com/DRM/SL/GenuineAuthorization/1.0"><version>1.0</version><genuineProperties origin="sppclient"><properties>OA3xOriginalProductId=;OA3xOriginalProductKey=;SessionId=TwBTAE0AYQBqAG8AcgBWAGUAcgBzAGkAbwBuAD0ANQA7AE8AUwBNAGkAbgBvAHIAVgBlAHIAcwBpAG8AbgA9ADEAOwBPAFMAUABsAGEAdABmAG8AcgBtAEkAZAA9ADIAOwBQAFAAPQAwADsASAB3AGkAZAA9AFcAdwBBAEEAQQBCAE0AQQBNAEEAQQBBAEEAQQBFAEEAQQBRAEEAQwBBAEEARQBBAEEAUQBBAEMAQQBBAEEAQQBBAFEAQQBCAEEAQQBFAEEAeQBrAHQAZwB5AEsAawB0AHEATQBFAHEAdwBwAFQANQBJAG4AOABPADAAMwB3AHAAcQB0AE8AMgB1AEQAeQBFAEQAQQBBAEMAQQBBAEUAQgBBAEEASQBGAEEAQQBNAEIAQQBBAFEAQwBBAEEAWQBCAEEAQQBnAEgAQQBBAGsARABBAEEAbwBCAEEAQQB3AEgAQQBBAEEAQQBBAEEAQQBBAEEAQQA9AD0AOwAAAA==;TimeStampClient=2023-08-09T07:53:49Z</properties><signatures><signature name="clientLockboxKey" method="rsa-sha256">GNTLMOPXmD9JP7+7iBPK9lIL5hn70JlYRPrbPsKiakT5rTXQB+KXo0awyXjaFi0lVQdmDh1nCGZ+Xgsw4A3UgGzh5IDCP13gNP2x6ECH8FamHb2WnRk+mtXRJTh+7sBBykwxVZ1x3bueAo+icBbl/MVKzjAFQ6lK0ArXeNQX51E=</signature></signatures></genuineProperties></genuineAuthorization>" >"%GTdir%\GenuineTicket"

echo 许可证制作完毕！

Powershell Restart-Service ClipSVC






slmgr -ipk VK7JG-NPHTM-C97JM-9MPGT-3V66T




slmgr -ato






echo            ---------------------------------------------------------------------- act finished  /HWID tool by justinjia2011(github.com/justinjia2011)\-----------------------------------------------------------------------------------
Pause




:Admin


(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
