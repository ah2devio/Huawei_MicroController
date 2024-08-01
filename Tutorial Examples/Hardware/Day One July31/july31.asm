
_beep:

;july31.c,4 :: 		void beep(int beeps){
;july31.c,6 :: 		for(x = 0; x < beeps; x++){
	CLRF       _x+0
	CLRF       _x+1
L_beep0:
	MOVLW      128
	XORWF      _x+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_beep_beeps+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__beep15
	MOVF       FARG_beep_beeps+0, 0
	SUBWF      _x+0, 0
L__beep15:
	BTFSC      STATUS+0, 0
	GOTO       L_beep1
;july31.c,7 :: 		BUZZER = 1;
	BSF        PORTC+0, 4
;july31.c,8 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_beep3:
	DECFSZ     R13+0, 1
	GOTO       L_beep3
	DECFSZ     R12+0, 1
	GOTO       L_beep3
	DECFSZ     R11+0, 1
	GOTO       L_beep3
	NOP
	NOP
;july31.c,9 :: 		BUZZER = 0;
	BCF        PORTC+0, 4
;july31.c,10 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_beep4:
	DECFSZ     R13+0, 1
	GOTO       L_beep4
	DECFSZ     R12+0, 1
	GOTO       L_beep4
	DECFSZ     R11+0, 1
	GOTO       L_beep4
	NOP
	NOP
;july31.c,6 :: 		for(x = 0; x < beeps; x++){
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;july31.c,11 :: 		}
	GOTO       L_beep0
L_beep1:
;july31.c,12 :: 		}
L_end_beep:
	RETURN
; end of _beep

_Rel:

;july31.c,13 :: 		void Rel(int steps){
;july31.c,14 :: 		for(x = 0; x < steps; x++){
	CLRF       _x+0
	CLRF       _x+1
L_Rel5:
	MOVLW      128
	XORWF      _x+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_Rel_steps+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Rel17
	MOVF       FARG_Rel_steps+0, 0
	SUBWF      _x+0, 0
L__Rel17:
	BTFSC      STATUS+0, 0
	GOTO       L_Rel6
;july31.c,15 :: 		RELAY_ONE = 1;
	BSF        PORTC+0, 0
;july31.c,16 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Rel8:
	DECFSZ     R13+0, 1
	GOTO       L_Rel8
	DECFSZ     R12+0, 1
	GOTO       L_Rel8
	DECFSZ     R11+0, 1
	GOTO       L_Rel8
	NOP
	NOP
;july31.c,17 :: 		RELAY_ONE = 0;
	BCF        PORTC+0, 0
;july31.c,18 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Rel9:
	DECFSZ     R13+0, 1
	GOTO       L_Rel9
	DECFSZ     R12+0, 1
	GOTO       L_Rel9
	DECFSZ     R11+0, 1
	GOTO       L_Rel9
	NOP
	NOP
;july31.c,19 :: 		RELAY_TWO = 1;
	BSF        PORTC+0, 1
;july31.c,20 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Rel10:
	DECFSZ     R13+0, 1
	GOTO       L_Rel10
	DECFSZ     R12+0, 1
	GOTO       L_Rel10
	DECFSZ     R11+0, 1
	GOTO       L_Rel10
	NOP
	NOP
;july31.c,21 :: 		RELAY_TWO = 0;
	BCF        PORTC+0, 1
;july31.c,22 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Rel11:
	DECFSZ     R13+0, 1
	GOTO       L_Rel11
	DECFSZ     R12+0, 1
	GOTO       L_Rel11
	DECFSZ     R11+0, 1
	GOTO       L_Rel11
	NOP
	NOP
;july31.c,14 :: 		for(x = 0; x < steps; x++){
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;july31.c,23 :: 		}
	GOTO       L_Rel5
L_Rel6:
;july31.c,24 :: 		}
L_end_Rel:
	RETURN
; end of _Rel

_main:

;july31.c,27 :: 		void main() {
;july31.c,28 :: 		LED_ARRAY_DIR = PORT_OUTPUT;
	CLRF       TRISD+0
;july31.c,29 :: 		LED_ARRAY=0;
	CLRF       PORTD+0
;july31.c,30 :: 		RELAY_ONE_DIR = PIN_OUTPUT;
	BCF        TRISC+0, 0
;july31.c,31 :: 		RELAY_TWO_DIR = PIN_OUTPUT;
	BCF        TRISC+0, 1
;july31.c,32 :: 		BUZZER_DIR = PIN_OUTPUT;
	BCF        TRISC+0, 4
;july31.c,34 :: 		while(1)
L_main12:
;july31.c,36 :: 		beep(2);
	MOVLW      2
	MOVWF      FARG_beep_beeps+0
	MOVLW      0
	MOVWF      FARG_beep_beeps+1
	CALL       _beep+0
;july31.c,37 :: 		Rel(5);
	MOVLW      5
	MOVWF      FARG_Rel_steps+0
	MOVLW      0
	MOVWF      FARG_Rel_steps+1
	CALL       _Rel+0
;july31.c,39 :: 		}
	GOTO       L_main12
;july31.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
