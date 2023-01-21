# mtptoto proxy ping

A PowerShell script that pings a list of proxy hosts and returns the available ones. The script uses the Invoke-RestMethod cmdlet to retrieve a list of proxy hosts from a specified URL and then uses the ForEach-Object -Parallel -ThrottleLimit 10 cmdlet to ping the hosts concurrently. The available hosts are then stored in a list and copied to the clipboard. The script is useful for those who need to check the availability of multiple proxy hosts quickly.

## Getting Started

1. Download the script (ping-proxy-hosts.ps1) from this repository.
2. Open the script in PowerShell ISE or any other text editor.
3. Replace the URL in the script with the URL of the API that returns the list of proxy hosts.
4. Run the script in PowerShell ISE or by executing the command: 
`powershell
powershell -ExecutionPolicy Bypass -File ping-proxy-hosts.ps1
4.The available hosts will be copied to the clipboard.

## Prerequisites

    PowerShell v3.0 or later is required to run the script.
    The Set-Clipboard cmdlet requires running PowerShell as an administrator.
    The Set-Clipboard cmdlet is only available on Windows 8 and later versions of Windows.

## Notes

    The script uses a timeout of 50 milliseconds for the ping operation.
    The script pings 10 hosts at a time.
    The script can be modified to return the links in a different format or to open them automatically in a web browser or a Telegram client.

## Links

    https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-7.2
    https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/foreach-object?view=powershell-7.2
    https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-clipboard?view=powershell-7.2

## Author

Hamed Fuladi

## License
This project is licensed under the MIT License - see the LICENSE file for details.
