#define F_CPU   8000000UL
#define LED_PIN 0

#include <avr/io.h>
#include <util/delay.h>

int main ()
{
    DDRB=0xff;
    while(1)
    {
        PORTB^=(1<<LED_PIN);
        _delay_ms(500);
    }
    return 0;
}