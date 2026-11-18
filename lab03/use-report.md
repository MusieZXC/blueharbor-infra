Resource | Utilisation (value, tool) | Saturation (Value, tool) | Errors (Where you looked)
CPU  	 | r: 0, 1 (vmstat 1)        | idle > us & sy           | r & idle time 
CPU 	 | r: 2 processors used      | idle = 0, us & sy > idle | r - number of processors
CPU	 | stress-ng --cpu ...       | stress-ng --cpu...       | r & idle time
Memory	 | 90.1 idle>usr&sys (mpstat)| 0.55 iowait value	| 0.00, %steal, wait 
Memory   | Passed, idle = 0          | r = max 2                | 0 si, so, st, wa
Memory   | stress-ng --vm 1 ...      | stress-ng --vm 1 ...     | stress-ng --vm 1 ...
Disk 	 | 1.3 (iostat -xz 2 5)      | await (3.92, iostat)     | util performance is below 50%
Disk     | 100 (peaks)               | 87.34% util              | util spikes
Disk     | stress-ng --hdd 1 ...     | stress-ng --hdd 1 ...    | stress-ng --hdd 1...
Network  | 0.00 (sar -n DEV 1)	     | 0 loss (ping 10.10.20.20)| 0 loss (ping-result)  



Stress-ng and top are amongst the peaking activities. 

It's possible to say there is no saturation in memory swapping and for the waiting values.
No constant wait. 
Idle time is zero when ever stress-ng is ran. 
CPU processor value r doesn't spike more than 2, no saturation. 
There is a healthy ratio between user and system resource consumption.


