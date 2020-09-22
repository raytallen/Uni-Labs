onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab1_top_tb/sim_A
add wave -noupdate /lab1_top_tb/sim_B
add wave -noupdate /lab1_top_tb/sim_result
add wave -noupdate /lab1_top_tb/DUT/ANDed_result
add wave -noupdate /lab1_top_tb/DUT/ADDed_result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3386 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 119
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {6864 ps}
