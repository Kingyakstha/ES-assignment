all:	result.vcd
result.vcd:	demux.vhdl	demuxTB.vhdl
	ghdl	-a	-fsynopsys	demux.vhdl
	ghdl	-a	-fsynopsys	demuxTB.vhdl
	ghdl	-e	-fsynopsys	demux_tb
	ghdl	-r	-fsynopsys	demux_tb	--vcd=result.vcd
clean:
	rm	-rf	result.vcd
