@echo off
title HWID tool by justinjia2011(github.com/justinjia2011)
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin


set "GTdir=%ProgramData%\Microsoft\Windows\ClipSVC\GenuineTicket\

echo 定制许可证中

<nul set /p "=<?xml version="1.0" encoding="utf-8"?><genuineAuthorization xmlns="http://www.microsoft.com/DRM/SL/GenuineAuthorization/1.0"><version>1.0</version><genuineProperties origin="sppclient"><properties>OA3xOriginalProductId=;OA3xOriginalProductKey=;SessionId=TwBTAE0AYQBqAG8AcgBWAGUAcgBzAGkAbwBuAD0ANQA7AE8AUwBNAGkAbgBvAHIAVgBlAHIAcwBpAG8AbgA9ADEAOwBPAFMAUABsAGEAdABmAG8AcgBtAEkAZAA9ADIAOwBQAFAAPQAwADsASAB3AGkAZAA9AFcAUQBBAEEAQQBCAE0AQQBMAGcAQQBBAEEAQQBBAEEAQQBRAEEAQwBBAEEARQBBAEEAUQBBAEMAQQBBAEEAQQBBAFEAQQBCAEEAQQBFAEEAeQBrAHQAZwB5AEsAagBCAEsAcwBLAFUAKwBTAEoALwBEAHQATgA4AEsAYQByAFQAdAByAGcAOABoAEEAdwBBAEEAZwBBAEIAQQBRAEEAQwBCAFEAQQBEAEEAUQBBAEUAQQBnAEEARwBBAFEAQQBJAEIAdwBBAEoAQQB3AEEASwBBAFEAQQBNAEIAdwBBAEEAQQBBAEEAQQBBAEEAQQA9ADsAAAA=;TimeStampClient=2023-08-21T11:51:12Z</properties><signatures><signature name="clientLockboxKey" method="rsa-sha256">bCjMJw2unRFexVGYfkOspgkuiID9Rz0LSDZD+lFfMYj5ekgpHunTVly3ck0UH/KQKVSE8FrdG1WEfFI+gyPe0thUpmQwPN2o9YthXVGXlqKTuYVLi6g8t+Fuu8rqSSXrP3NlUrfzZsVPSPpdcfu0Rc6yG4kmRqGdht32AiHyEeE=</signature></signatures></genuineProperties></genuineAuthorization>" >"%GTdir%\GenuineTicket"

echo 许可证制作完毕！

Powershell Restart-Service ClipSVC






slmgr -ipk 8PTT6-RNW4C-6V7J2-C2D3X-MHBPB




slmgr -ato






echo            ---------------------------------------------------------------------- act finished  /HWID tool by justinjia2011(github.com/justinjia2011)\-----------------------------------------------------------------------------------
Pause




:Admin


(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
