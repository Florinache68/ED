vlib work
vmap work work
vlog  ../../hdl/*.v
vlog  ../hdl/*.v
vsim -novopt work.colocviu_tb
add log -r /*
do wave.do
run -all
