all: simulate

compile:
	vlog alu_top.sv

# Simulate that file/module
simulate: compile
	vsim -c alu_top -do "run -all; quit"

clean:
	rm -rf transcript work
