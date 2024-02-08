all:	result.vcd

result.vcd:	decoder.vhdl	decoderTB.vhdl
	ghdl	-a	-fsynopsys	decoder.vhdl
	ghdl	-a	-fsynopsys	decoderTB.vhdl
	ghdl	-e	-fsynopsys	decoder_tb
	ghdl	-r	-fsynopsys	decoder_tb	--vcd=result.vcd
clean:
	rm	-rf	result.vcd