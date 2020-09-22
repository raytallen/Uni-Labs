transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/vga.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/tictactoe_to_vga.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/tictactoe.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/lab3_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/game_state.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/ff.v}
vlog -vlog01compat -work work +incdir+C:/Users/Ray\ Allen/OneDrive/Documents/School/2nd\ Year/CPEN\ 211/Lab\ 3/lab3 {C:/Users/Ray Allen/OneDrive/Documents/School/2nd Year/CPEN 211/Lab 3/lab3/detectwin.v}

