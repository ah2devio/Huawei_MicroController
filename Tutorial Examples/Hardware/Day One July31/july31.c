#include "board_1.h"
#define leds 6
int x;
void beep(int beeps){

 for(x = 0; x < beeps; x++){
BUZZER = 1;
delay_ms(500);
BUZZER = 0;
delay_ms(500);
}
}
void Rel(int steps){
 for(x = 0; x < steps; x++){
RELAY_ONE = 1;
delay_ms(500);
RELAY_ONE = 0;
delay_ms(500);
RELAY_TWO = 1;
delay_ms(500);
RELAY_TWO = 0;
delay_ms(500);
}
}

 int i;
void main() {
LED_ARRAY_DIR = PORT_OUTPUT;
LED_ARRAY=0;
RELAY_ONE_DIR = PIN_OUTPUT;
RELAY_TWO_DIR = PIN_OUTPUT;
BUZZER_DIR = PIN_OUTPUT;
//END PIN-DEFINITION
while(1)
{
beep(2);
Rel(5);

}
}