FILENAME	=	main
DEVICE		=	atmega16
CC			=	avr-g++ 
OC			=	avr-objcopy
SIZE		=	avr-size
FLAGS		=	-Wall -Os 

default : compile

compile :
	$(CC) $(FLAGS) -mmcu=$(DEVICE) -c $(FILENAME).cpp -o $(FILENAME).o
	$(CC) $(FLAGS) -mmcu=$(DEVICE) -o $(FILENAME).elf $(FILENAME).o
	$(OC) -j .text -j .data -O ihex $(FILENAME).elf $(FILENAME).hex
	$(SIZE) --format=avr --mcu=$(DEVICE) $(FILENAME).elf


clean:
	rm *.o *.elf *.hex

