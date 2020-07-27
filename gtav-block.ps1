# port 6672 inbound/outbound
$ruleName = "GTAV Block"

Write-Host "1 - Enable Firewall rules"
Write-Host "2 - Disable Firewall rules"
Write-Host "3 - View Firewall rules status"
$selection = Read-Host "Select option"

try {
    if ($selection -eq 1) {
        netsh advfirewall firewall set rule name="GTAV Block" new enable=yes
    } elseif ($selection -eq 2) {
        netsh advfirewall firewall set rule name="GTAV Block" new enable=no
    } elseif ($selection -eq 3) {
        netsh advfirewall firewall show rule name="GTAV Block"
    } else {
        Write-Host "Invalid option!"
    }
} catch {
    Write-Error "Error!"
}

Read-Host "Press enter to quit"
