 # Script de simulaçao #

force -freeze sim:/aula2divertida/A 0 0
force -freeze sim:/aula2divertida/B 0 0
run
force -freeze sim:/aula2divertida/A 0 0
force -freeze sim:/aula2divertida/B 1 0
run
force -freeze sim:/aula2divertida/A 1 0
force -freeze sim:/aula2divertida/B 0 0
run
force -freeze sim:/aula2divertida/A 1 0
force -freeze sim:/aula2divertida/B 1 0
run