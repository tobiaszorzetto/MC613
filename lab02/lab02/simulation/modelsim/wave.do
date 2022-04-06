onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /original/A
add wave -noupdate /original/B
add wave -noupdate /original/C
add wave -noupdate /original/D
add wave -noupdate /original/E
add wave -noupdate /original/F
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {34 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 32ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/original/A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 32ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/original/A 
wave create -driver freeze -pattern clock -initialvalue 0 -period 16ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/original/B 
wave create -driver freeze -pattern clock -initialvalue 0 -period 8ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/original/C 
wave create -driver freeze -pattern clock -initialvalue 0 -period 4ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/original/D 
wave create -driver freeze -pattern clock -initialvalue 0 -period 2ps -dutycycle 50 -starttime 0ps -endtime 32ps sim:/original/E 
WaveCollapseAll -1
wave clipboard restore
