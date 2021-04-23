#define F_CPU   8000000UL
#define LED_PIN 0

#include <avr/io.h>
#include <util/delay.h>

#include "led.h"

int main ()
{
    DDRB=0xff;
    while(1)
    {
        blink();
        _delay_ms(500);
    }
    return 0;
}