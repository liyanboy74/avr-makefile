PROJECT		=	blink
DEVICE 		=	atmega16

CC     		=	avr-gcc 
OC     		=	avr-objcopy
SIZE    	=	avr-size

FLAGS   	=	-Wall -Os
CCC	    	=	$(CC) $(FLAGS) -mmcu=$(DEVICE)


default : compile

compile :
	$(CCC) -c led/led.c -o led.o
	$(CCC) -c main.c -o main.o -Iled
	
	$(CCC) -o $(PROJECT).elf main.o led.o
	
	$(OC) -j .text -j .data -O ihex $(PROJECT).elf $(PROJECT).hex
	$(SIZE) --format=avr --mcu=$(DEVICE) $(PROJECT).elf


clean:
	rm *.o *.elf *.hex

