VERILOG = iverilog
TARGET = 0429.vcd
TEMP = 0429.vpp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): 0429_tb.v 0429.v
	$(VERILOG) -o $(TEMP) 0429_tb.v 0429.v

clean:
	rm $(TARGET)
