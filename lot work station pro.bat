@echo off
title HWID tool by justinjia2011(github.com/justinjia2011)
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin


set "GTdir=%ProgramData%\Microsoft\Windows\ClipSVC\GenuineTicket\

echo 定制许可证中

<nul set /p "=<?xml version="1.0" encoding="utf-8"?><genuineAuthorization xmlns="http://www.microsoft.com/DRM/SL/GenuineAuthorization/1.0"><version>1.0</version><genuineProperties origin="sppclient"><properties>OA3xOriginalProductId=;OA3xOriginalProductKey=;SessionId=TwBTAE0AYQBqAG8AcgBWAGUAcgBzAGkAbwBuAD0ANQA7AE8AUwBNAGkAbgBvAHIAVgBlAHIAcwBpAG8AbgA9ADEAOwBPAFMAUABsAGEAdABmAG8AcgBtAEkAZAA9ADIAOwBQAFAAPQAwADsASAB3AGkAZAA9AFcAUQBBAEEAQQBCAE0AQQBMAGcAQQBBAEEAQQBBAEEAQQBRAEEAQwBBAEEARQBBAEEAUQBBAEMAQQBBAEEAQQBBAFEAQQBCAEEAQQBFAEEAeQBrAHQAZwB5AEsAagBCAEsAcwBLAFUAKwBTAEoALwBEAHQATgA4AEsAYQByAFQAdAByAGcAOABoAEEAdwBBAEEAZwBBAEIAQQBRAEEAQwBCAFEAQQBEAEEAUQBBAEUAQQBnAEEARwBBAFEAQQBJAEIAdwBBAEoAQQB3AEEASwBBAFEAQQBNAEIAdwBBAEEAQQBBAEEAQQBBAEEAQQA9ADsAUABmAG4APQBNAGkAYwByAG8AcwBvAGYAdAAuAFcAaQBuAGQAbwB3AHMALgAxADYAMQAuAFgAMgAxAC0ANAAzADYAMgA2AF8AOAB3AGUAawB5AGIAMwBkADgAYgBiAHcAZQA7AEQAbwB3AG4AbABlAHYAZQBsAEcAZQBuAHUAaQBuAGUAUwB0AGEAdABlAD0AMQA7AAAA;TimeStampClient=2023-08-22T11:45:40Z</properties><signatures><signature name="clientLockboxKey" method="rsa-sha256">iKRLC7wjAjHHdv60NdR3az/ZvF4vsDdwsJ7CW6k2q0WfRueNNHzxf2ZGz70o2B9EmMnTdV5Kvnq+0BtwtIXeMjvBH8U08yIv0s/cWX88ucVG8VN92hImV69/14YUHpMMm1eMV9DmA8dzvvffgyz8MxqMJVRHBKL0dTBE/nEpz9o=</signature></signatures></genuineProperties></genuineAuthorization>" >"%GTdir%\GenuineTicket"

echo 许可证制作完毕！

Powershell Restart-Service ClipSVC






slmgr -ipk DXG7C-N36C4-C4HTG-X4T3X-2YV77




slmgr -ato






echo            ---------------------------------------------------------------------- act finished  /HWID tool by justinjia2011(github.com/justinjia2011)\-----------------------------------------------------------------------------------
Pause




:Admin


(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
