onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab4_top_tb/DUT/SW
add wave -noupdate /lab4_top_tb/DUT/KEY
add wave -noupdate /lab4_top_tb/DUT/HEX0
add wave -noupdate /lab4_top_tb/DUT/clk
add wave -noupdate /lab4_top_tb/DUT/reset
add wave -noupdate /lab4_top_tb/DUT/dirSW
add wave -noupdate /lab4_top_tb/DUT/present
add wave -noupdate /lab4_top_tb/DUT/next
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 196
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
WaveRestoreZoom {0 ps} {904 ps}
