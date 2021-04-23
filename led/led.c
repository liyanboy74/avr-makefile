#include <avr/io.h>

#include "led.h"

void blink(void)
{
    LED_PORT^=(1<<LED_PIN);
}