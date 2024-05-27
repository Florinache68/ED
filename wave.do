onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /colocviu_tb/i_colocviu_DUT/A
add wave -noupdate /colocviu_tb/i_colocviu_DUT/clk
add wave -noupdate /colocviu_tb/i_colocviu_DUT/rst_n
add wave -noupdate /colocviu_tb/i_colocviu_DUT/Q4
add wave -noupdate /colocviu_tb/i_colocviu_DUT/Q1
add wave -noupdate /colocviu_tb/i_colocviu_DUT/Q2
add wave -noupdate /colocviu_tb/i_colocviu_DUT/Q3
add wave -noupdate /colocviu_tb/i_colocviu_DUT/D2
add wave -noupdate /colocviu_tb/i_colocviu_DUT/D4
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 94
configure wave -valuecolwidth 42
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {326 ns}
