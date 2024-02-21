# Embedded System assignment:
This repository contains embedded system assignment which is 9 past questions from (2072-80) to write a VHDL code. It contains VHDL code with testbench.

## Getting Started

* Clone the repo

```bash
git clone https://github.com/Monika504/ES-assignment.git
```

* Install VSC (Visual Studio Code) and start writing code for any modification
```bash
$ sudo apt install code

```
* Write in a new file with extension `.vhd` in the terminal using keywords

## Installing GHDL
Follow the instructions on the [GHDL GitHub repository](https://github.com/ghdl/ghdl) to install GHDL on your system.

## Installing GTKWave
Follow the instructions on the [GTKWave website](https://gtkwave.sourceforge.net/) to install GTKWave on your system.
## Running Testbench
There is already a `Makefile` file for each individual codes.

```bash
 #example code in Makefile
 all:	result.vcd
 result.vcd:	vhdl_code.vhdl	testbench_code.vhdl
	ghdl	-a	-fsynopsys	vhdl_code.vhdl
	ghdl	-a	-fsynopsys	testbench_code.vhdl
	ghdl	-e	-fsynopsys	test_entity
	ghdl	-r	-fsynopsys	test_entity	--vcd=result.vcd
clean:
	rm	-rf	result.vcd
```

when make command is executed, it creates a result.vcd file which helps visulaize waveforms with GTKWave

```bash
# command to visualize the waveform
gtkwave result.vcd
```

## About us

* Binayak Shrestha ( PAS077BEI012 ) <br>
* Monika Karki ( PAS077BEI024 )
