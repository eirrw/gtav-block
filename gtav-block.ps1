#Requires -RunAsAdministrator
$ruleName = "GTAV Block"

function Get-CmdInput
{
    Write-Host "0 - Quit"
    Write-Host "1 - Enable Firewall rules"
    Write-Host "2 - Disable Firewall rules"
    Write-Host "3 - View Firewall rules status"
    return Read-Host "Select option"
}


# port 6672 inbound/outbound
function Toggle-Firewall
{
    param ([switch]$on)
    
    try {
        $enable = "no"
        if ($on) { $enable = "yes" }

        netsh advfirewall firewall set rule name="GTAV Block" new enable=$enable
    } catch {
        Write-Error "Error!"
    }
}


function Run-MainMethod
{
    $selection = -1
    while ($selection -ne 0) {
        $selection = Get-CmdInput

        if ($selection -eq 1) {
            Toggle-Firewall -on
        } elseif ($selection -eq 2) {
            Toggle-Firewall
        } elseif ($selection -eq 3) {
            netsh advfirewall firewall show rule name="GTAV Block"
        } else {
            Write-Host "Invalid option!"
        }
    }
}

Run-GtavBlock