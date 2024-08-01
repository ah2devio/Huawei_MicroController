#line 1 "D:/win11/july31.c"
#line 1 "d:/win11/board_1.h"
#line 3 "D:/win11/july31.c"
int x;
void beep(int beeps){

 for(x = 0; x < beeps; x++){
 PORTC.F4  = 1;
delay_ms(500);
 PORTC.F4  = 0;
delay_ms(500);
}
}
void Rel(int steps){
 for(x = 0; x < steps; x++){
 PORTC.F0  = 1;
delay_ms(500);
 PORTC.F0  = 0;
delay_ms(500);
 PORTC.F1  = 1;
delay_ms(500);
 PORTC.F1  = 0;
delay_ms(500);
}
}

 int i;
void main() {
 TRISD  =  0 ;
 PORTD =0;
 TRISC.F0  =  0 ;
 TRISC.F1  =  0 ;
 TRISC.F4  =  0 ;

while(1)
{
beep(2);
Rel(5);

}
}
