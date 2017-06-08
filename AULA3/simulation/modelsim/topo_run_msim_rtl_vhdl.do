transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/alunos/Desktop/8213A/AULA3/topo.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA3/ha.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA3/fa.vhd}

