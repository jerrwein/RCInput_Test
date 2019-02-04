TARGET = RCInput_Test

all: $(TARGET)

$(TARGET): $(TARGET).o
	@echo 'Linking target: $@'
	@echo 'Invoking: GCC Linker'
	gcc -Wall -O2 $(TARGET).o -o $(TARGET) 
	@echo 'Finished building target: $@'
	@echo ' '

$(TARGET).o: $(TARGET).c
	@echo 'Compiling target: $@'
	@echo 'Invoking: GCC  compiler'
	gcc -Wall -O2 -c -o "$@" "$<" 
	@echo 'Finished building target: $@'
	@echo ' '

clean:
	$(RM) $(TARGET) $(TARGET).o
