transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/C1.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/C2.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/C3.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/C4.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/mux4x1.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/LAB5.vhd}
vcom -93 -work work {/home/alunos/Desktop/8213A/AULA5/decod7seg.vhd}

