Install-WindowsFeature DNS -IncludeManagementTools
Set-DnsServerForwarder -IPAddress "168.63.129.16"

Install-WindowsFeature RemoteAccess -IncludeManagementTools
Install-WindowsFeature -Name Routing -IncludeManagementTools -IncludeAllSubFeature
Install-WindowsFeature -Name "RSAT-RemoteAccess-Powershell"Install-RemoteAccess -VpnType RoutingOnly
Get-NetAdapter | Set-NetIPInterface -Forwarding Enabled
