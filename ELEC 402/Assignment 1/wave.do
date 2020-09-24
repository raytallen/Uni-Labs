onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FSM_tb/clk
add wave -noupdate /FSM_tb/depart_ready
add wave -noupdate /FSM_tb/door_obstruction
add wave -noupdate /FSM_tb/door_is_open
add wave -noupdate -radix decimal -childformat {{{/FSM_tb/current_speed[7]} -radix decimal} {{/FSM_tb/current_speed[6]} -radix decimal} {{/FSM_tb/current_speed[5]} -radix decimal} {{/FSM_tb/current_speed[4]} -radix decimal} {{/FSM_tb/current_speed[3]} -radix decimal} {{/FSM_tb/current_speed[2]} -radix decimal} {{/FSM_tb/current_speed[1]} -radix decimal} {{/FSM_tb/current_speed[0]} -radix decimal}} -expand -subitemconfig {{/FSM_tb/current_speed[7]} {-height 15 -radix decimal} {/FSM_tb/current_speed[6]} {-height 15 -radix decimal} {/FSM_tb/current_speed[5]} {-height 15 -radix decimal} {/FSM_tb/current_speed[4]} {-height 15 -radix decimal} {/FSM_tb/current_speed[3]} {-height 15 -radix decimal} {/FSM_tb/current_speed[2]} {-height 15 -radix decimal} {/FSM_tb/current_speed[1]} {-height 15 -radix decimal} {/FSM_tb/current_speed[0]} {-height 15 -radix decimal}} /FSM_tb/current_speed
add wave -noupdate -radix decimal -childformat {{{/FSM_tb/cruise_speed[7]} -radix decimal} {{/FSM_tb/cruise_speed[6]} -radix decimal} {{/FSM_tb/cruise_speed[5]} -radix decimal} {{/FSM_tb/cruise_speed[4]} -radix decimal} {{/FSM_tb/cruise_speed[3]} -radix decimal} {{/FSM_tb/cruise_speed[2]} -radix decimal} {{/FSM_tb/cruise_speed[1]} -radix decimal} {{/FSM_tb/cruise_speed[0]} -radix decimal}} -subitemconfig {{/FSM_tb/cruise_speed[7]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[6]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[5]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[4]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[3]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[2]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[1]} {-height 15 -radix decimal} {/FSM_tb/cruise_speed[0]} {-height 15 -radix decimal}} /FSM_tb/cruise_speed
add wave -noupdate -radix decimal /FSM_tb/crawl_speed
add wave -noupdate /FSM_tb/near_station
add wave -noupdate /FSM_tb/at_station
add wave -noupdate /FSM_tb/track_obstruction
add wave -noupdate /FSM_tb/ctrl_door
add wave -noupdate /FSM_tb/ctrl_brake
add wave -noupdate /FSM_tb/ctrl_brake_emergency
add wave -noupdate /FSM_tb/ctrl_motor_accelerate
add wave -noupdate /FSM_tb/ctrl_motor_maintain
add wave -noupdate /FSM_tb/rst
add wave -noupdate /FSM_tb/DUT/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {274957 ms} 0}
quietly wave cursor active 1
configure wave -namecolwidth 221
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
configure wave -timeline 1
configure wave -timelineunits sec
update
WaveRestoreZoom {0 ms} {322064 ms}
