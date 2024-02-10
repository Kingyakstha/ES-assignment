all:	result.vcd
result.vcd:	SD.vhdl	SDTB.vhdl
	ghdl	-a	-fsynopsys	SD.vhdl
	ghdl	-a	-fsynopsys	SDTB.vhdl
	ghdl	-e	-fsynopsys  sd_tb
	ghdl	-r	-fsynopsys	sd_tb 	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd