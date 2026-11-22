VBoxManage showvminfo DC01 --machinereadable | grep -Ei "cpus|memory"
memory=2048
cpus=2
GuestMemoryBalloon=0

VBoxManage showvminfo WEB01 --machinereadable | grep -Ei "cpus|memory"
memory=2048
cpus=1
GuestMemoryBalloon=0


VBoxManage list hdds
UUID:           06487fad-bf87-45fa-89ac-27a16ed86080
Parent UUID:    base
State:          locked read
Type:           normal (base)
Location:       D:\New folder\DC01\DC01\DC01.vdi
Storage format: VDI
Capacity:       51200 MBytes
Encryption:     disabled

UUID:           9d058c0b-a4da-4399-8638-59aa064fc92c
Parent UUID:    base
State:          locked read
Type:           normal (base)
Location:       D:\New folder\WEB01\WEB10.vdi
Storage format: VDI
Capacity:       25600 MBytes
Encryption:     disabled

vCPU Overcommit Ratio = (2 + 1)/ 8 = 3/8 = 0.375

RAM Commitment = (2048 + 2048)/ 8192 = 4096/8192 = 1/2 = 0.5
