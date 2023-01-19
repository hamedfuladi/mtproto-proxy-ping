$url = "https://mtpro.xyz/api/?type=mtproto"
$response = Invoke-RestMethod -Uri $url
$hosts = $response | Select-Object -First 1000
$counter = 0

$aliveHosts = foreach ($currentHost in $hosts) {
    $counter++
    $tcpClient = New-Object System.Net.Sockets.TcpClient
    $ping = $tcpClient.BeginConnect($currentHost.host, $currentHost.port, $null, $null)
    $success = $ping.AsyncWaitHandle.WaitOne(500, $false)
    if ($success) {
        $link = "https://t.me/proxy?server={0}&port={1}&secret={2}" -f $currentHost.host, $currentHost.port, $currentHost.secret
        $link
    }
    Write-Host "Host $counter tested"
}
Set-Clipboard -Value $aliveHosts
Write-Host "Alive Hosts links copied to clipboard."
