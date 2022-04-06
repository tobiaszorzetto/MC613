view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 32ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/minimizado/A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 16ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/minimizado/B 
wave create -driver freeze -pattern clock -initialvalue U -period 8ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/minimizado/C 
wave create -driver freeze -pattern clock -initialvalue 0 -period 4ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/minimizado/D 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 8ps -dutycycle 50 -starttime 0ps -endtime 32ps Edit:/minimizado/C 
wave create -driver freeze -pattern clock -initialvalue 0 -period 2ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/minimizado/E 
WaveCollapseAll -1
wave clipboard restore
