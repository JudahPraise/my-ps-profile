function xhp([string]$file){cd "c:\xampp\htdocs\projects\$file"}
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
Set-Alias -name rslan -value runServer
Set-Alias -name art -value runArtisanCommand
Set-Alias -name home -value homeDirectory
Set-Alias -name proj -value xhp
