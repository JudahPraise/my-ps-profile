oh-my-posh.exe init pwsh --config "$(scoop prefix oh-my-posh)\themes\spaceship.omp.json" | Invoke-Expression
function xhp([string]$file){cd "c:\xampp\htdocs\$file"}
function ubuntuHome{ cd "C:\Users\judah\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc\LocalState\rootfs\home\judah\"}
function homeDirectory{cd "d:"}
function runArtisanCommand([string]$arg)
{
	php artisan $arg
}
function runServer()
{
	$ipAddress = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $(Get-NetConnectionProfile | Select-Object -ExpandProperty InterfaceIndex) | Select-Object -ExpandProperty IPAddress

	php artisan serve --host=$ipAddress --port=8000
}
function openDBGen{cd "d:\Dropbox\Family Room\Work Files\NFT Generation"}
function openDBWeb{cd "d:\Dropbox\Family Room\Work Files\NFT Website"}
function openDBWork{cd "d:\Dropbox\Family Room\Work Files\"}
function openExplorer{explorer "."}
function startserver{ php artisan serve }
Set-Alias -name dbgen -value openDBGen
Set-Alias -name dbweb -value openDBWeb
Set-Alias -name dbwrk -value openDBWork
Set-Alias -name rslan -value runServer
Set-Alias -name art -value runArtisanCommand
Set-Alias -name home -value homeDirectory
Set-Alias -name project -value xhp
Set-Alias -name np -value notepad
Set-Alias -name exp -value openExplorer
Set-Alias -name ubntu -value ubuntuHome
Set-Alias -name pas -value startserver
