CPU Benchmark with 1 vCPU

stress-ng: info:  [2048] setting to a 30 secs run per stressor
stress-ng: info:  [2048] dispatching hogs: 2 cpu
stress-ng: info:  [2048] note: system has only 2298 MB of free memory and swap, recommend using --oom-avoid
stress-ng: metrc: [2048] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
stress-ng: metrc: [2048]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
stress-ng: metrc: [2048] cpu                3008  47285.63      2.68     17.90         0.06         146.13
stress-ng: info:  [2048] skipped: 0
stress-ng: info:  [2048] passed: 2: cpu (2)
stress-ng: info:  [2048] failed: 0
stress-ng: info:  [2048] metrics untrustworthy: 0
stress-ng: info:  [2048] successful run completed in 13 hours 8 mins 5.93 secs

Increase to 2 vCPUs and Re-Run Benchmark

stress-ng: info:  [33977] setting to a 30 secs run per stressor
stress-ng: info:  [33977] dispatching hogs: 2 cpu
stress-ng: info:  [33977] note: system has only 2176 MB of free memory and swap, recommend using --oom-avoid
stress-ng: metrc: [33977] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
stress-ng: metrc: [33977]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
stress-ng: metrc: [33977] cpu              431706    353.82    283.47    417.79      1220.13         615.61
stress-ng: info:  [33977] skipped: 0
stress-ng: info:  [33977] passed: 2: cpu (2)
stress-ng: info:  [33977] failed: 0
stress-ng: info:  [33977] metrics untrustworthy: 0
stress-ng: info:  [33977] successful run completed in 5 mins 54.10 secs

100% CPU Execution cap - CPU Check 

stress-ng: info:  [7147] setting to a 30 secs run per stressor
stress-ng: info:  [7147] dispatching hogs: 2 cpu
stress-ng: info:  [7147] note: system has only 2123 MB of free memory and swap, recommend using --oom-avoid
stress-ng: metrc: [7147] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
stress-ng: metrc: [7147]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
stress-ng: metrc: [7147] cpu             3933222   2590.24   1832.64   3346.51      1518.48         759.43
stress-ng: info:  [7147] skipped: 0
stress-ng: info:  [7147] passed: 2: cpu (2)
stress-ng: info:  [7147] failed: 0
stress-ng: info:  [7147] metrics untrustworthy: 0
stress-ng: info:  [7147] successful run completed in 43 mins 10.88 secs


50% CPU Execution cap - CPU Check 

stress-ng: info:  [10010] setting to a 30 secs run per stressor
stress-ng: info:  [10010] dispatching hogs: 2 cpu
stress-ng: info:  [10010] note: system has only 2116 MB of free memory and swap, recommend using --oom-avoid
stress-ng: metrc: [10010] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
stress-ng: metrc: [10010]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
stress-ng: metrc: [10010] cpu             1840818   1130.21   1174.42   1084.34      1628.73         814.97
stress-ng: info:  [10010] skipped: 0
stress-ng: info:  [10010] passed: 2: cpu (2)
stress-ng: info:  [10010] failed: 0
stress-ng: info:  [10010] metrics untrustworthy: 0
stress-ng: info:  [10010] successful run completed in 18 mins 51.09 secs


100% CPU Execution cap - CPU Check 

stress-ng: info:  [1780] setting to a 30 secs run per stressor
stress-ng: info:  [1780] dispatching hogs: 2 cpu
stress-ng: info:  [1780] note: system has only 2201 MB of free memory and swap, recommend using --oom-avoid
stress-ng: metrc: [1780] stressor       bogo ops real time  usr time  sys time   bogo ops/s     bogo ops/s
stress-ng: metrc: [1780]                           (secs)    (secs)    (secs)   (real time) (usr+sys time)
stress-ng: metrc: [1780] cpu             1079266    791.98    957.04    625.61      1362.75         681.93
stress-ng: info:  [1780] skipped: 0
stress-ng: info:  [1780] passed: 2: cpu (2)
stress-ng: info:  [1780] failed: 0
stress-ng: info:  [1780] metrics untrustworthy: 0
stress-ng: info:  [1780] successful run completed in 13 mins 12.45 secs

Observe Memory Pressure, Dynamic Disk Sizes, and Paravirtualisation
stress-ng: info:  [42433] setting to a 30 secs run per stressor
stress-ng: info:  [42433] dispatching hogs: 1 vm
stress-ng: info:  [42433] note: system has only 2129 MB of free memory and swap, recommend using --oom-avoid
stress-ng: info:  [42434] vm: using 1.17GB per stressor instance (total 1.17GB of 81.55MB available memory)
stress-ng: warn:  [42433] metrics-check: all bogo-op counters are zero, data may be incorrect
stress-ng: info:  [42433] skipped: 0
stress-ng: info:  [42433] passed: 1: vm (1)
stress-ng: info:  [42433] failed: 0
stress-ng: info:  [42433] metrics untrustworthy: 0
stress-ng: info:  [42433] successful run completed in 40.71 secs


