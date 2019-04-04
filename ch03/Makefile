TARGET = test

.PHONY: objects
objects: $(TARGET).s $(TARGET).o $(TARGET).dump

.PHONY: arith2

$(TARGET).s: $(TARGET).c
	gcc -Og -S $<

$(TARGET).o: $(TARGET).c
	gcc -Og -c $<

$(TARGET).dump: $(TARGET).o
	objdump -d $< > $@

arith2: main.c $(TARGET).c
	gcc -Og -o $@ $^
