VERILOG = iverilog
TARGET = voter4.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): voter4_tb.v voter4.v
	$(VERILOG) -o $(TEMP) voter4_tb.v voter4.v
clean:
	-del $(TARGET)
	-del $(TEMP)