TARGET = arith2

.PHONY: objects
objects: $(TARGET).s $(TARGET).o $(TARGET).dump $(TARGET)

$(TARGET).s: $(TARGET).c
	gcc -Og -S $<

$(TARGET).o: $(TARGET).c
	gcc -Og -c $<

$(TARGET).dump: $(TARGET).o
	objdump -d $< > $@

$(TARGET): main.c $(TARGET).c
	gcc -Og -o $@ $^
