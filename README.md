# gtav-block
Firewall rules to get to a GTA 5 solo session and a script to control them.

## Install
### Firewall rules
Double click the `.reg` file to install the registry settings. In the Windows
Firewall, edit the 'GTAV Block' rule in both Inbound and Outbound rules to point
to your correct path for the `GTA5.exe` file.

### Powershell script
Create a shortcut to the `.ps1` file, then edit the shortcut.
 - In the 'Target' field, prepend `powershell ` to the string.
 - In the 'Advanced' window, check 'Run as Administrator'

## Usage
Run the script using the shortcut, and follow the onscreen instructions

## Troubleshooting
Ensure PowerShell's execution policy settings allow execution of unsigned
scripts. To avoid allowing downloaded scripts to run, create a new `.ps1`
file and copy/paste the contents of the included `.ps1` file to it.

