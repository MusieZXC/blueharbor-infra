Name:         BH-SRV
Enabled:      Yes
Network:      10.10.20.0/24
Gateway:      10.10.20.1
DHCP Server:  No
IPv6:         No
IPv6 Prefix:  fd17:625c:f037:2::/64
IPv6 Default: No
Port-forwarding (ipv4)
        ssh-stor01:tcp:[127.0.0.1]:2230:[10.10.20.30]:22
        ssh-web01:tcp:[127.0.0.1]:2220:[10.10.20.20]:22
        ssh-web02:tcp:[127.0.0.1]:2221:[10.10.20.21]:22
loopback mappings (ipv4)
        127.0.0.1=2



