all:	result.vcd
result.vcd:	fulladder.vhdl	fulladderTB.vhdl
	ghdl	-a	-fsynopsys	fulladder.vhdl
	ghdl	-a	-fsynopsys	fulladderTB.vhdl
	ghdl	-e	-fsynopsys	FA_test
	ghdl	-r	-fsynopsys	FA_test	--vcd=result.vcd
clean:
	rm	-rf	result.vcd
