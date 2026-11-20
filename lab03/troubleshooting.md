WEB01 Troubleshooting Report (EX. 3.5)

Fault 1: "nginx" service stopped and masked
	Cause:
		"systemctl mask nginx" linked "nginx.service" to "/dev/null"
		Blocks automatic and/or manual services
		
	Symptoms:
		TrackIt HTTP status page is unreachable
		"nginx" fails to start normally
	
	Evidence:
		"systemctl status nginx" reports the unit is inactive (masked)
		"systemctl is-active nginx" reports inactive		

	Fix:
		Use "sudo apt -y install nginx" when 
			"sudo systemctl unmask nginx" + "sudo systemctl start nginx" don't work   

	Detect Earlier: 
		Monitor "systemctl list-units --state=masked"		#result should be 'zero'
		Monitor "systemctl is-active nginx" 			#result should be 'active' 
		Use automated checks or configuration drift alerts. 

Fault 2: bh-health.timer becomes disabled -> inactive
	Cause:
		"systemctl disable --now bh-health.timer" stopped and disabled the systemd timer unit 
	Symptoms:
		Periodic health entries stop appearing in "/var/log/bh-health.log"
		Warnings are not scheduled automatically
	Evidence:
		"systemctl list-timers -all 'bh-healt*' " shows timer as inactive/ disabled 
	Fix:
		Re-enable and start the timer with "sudo systemctl enable --now bh-health.timer"
	Detect Earlier:
		Check timer state with
			"systemctl is-enabled bh-health.timer"
			"systemctl is-active bh-health.timer"
		Verify recent logs (fresh) in
			"/var/log/bh-health.log" 

Fault 3: Disk space spike in "/var/tmp/.bh-cache.bin"
	Cause:
		A large binary file was allocated in "/var/tmp" using "fallocate"
	Symptoms:
		Root filesystem ('df -h /') nears capacity while risking service failures or write errors
	Evidence:
		'df -h/' #shows elevated usage 
		"du -xh / --max-depth=2" #reveals /var/tmp/.bh-cache.bin
		"ls -la /var/tmp" #reveals /var/tmp/.bh-cahce.bin
	Fix:
		"sudo rm -f /var/tmp/bh-cache.bin" to remove bh-cache.bin 
		"df -h /" dropped from 88% to 69% (Below 80% - Good result)
	Detect Earlier: 
		Alert when "DISK" usage crosses 80%
		Tracked in 'bh-health.sh' / '/var/log/bh-health.log'
		Monitor growth for '/var/tmp'

Fault 4: Zero Permissions ('000') on "/var/www/html" Files
	Cause:
		"chmod 000" #stripped read permission from all users (owner, group, others) on web root files
	Symptoms:
		"403 Forbidden" HTTP requests to the web root fail with permission errors
			Even when 'nginx' is running
	Evidence:
		"ls -la /var/www/html" #No such file or directory exists 
	Fix:
		check "ls -la /var/www/html"
			Results: index.nginx-debian.html plus 2 other files
	Detect Earlier: 
		Include a file-permission/integrity check on "/var/www/html"
		"curl -sf http://localhost" # verify during health checks 
		"curl -I http://localhost"  # 200 OK	
