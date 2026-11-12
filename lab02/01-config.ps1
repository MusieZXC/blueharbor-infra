Set-TimeZone -Id "Romance Standard Time"  
Get-TimeZone
slmgr /dli

Get-NetAdapter
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 10.10.20.10 -PrefixLength 24 -DefaultGateway 10.10.20.1
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 1.1.1.1
Test-NetConnection 1.1.1.1
Resolve-DnsName www.microsoft.com

