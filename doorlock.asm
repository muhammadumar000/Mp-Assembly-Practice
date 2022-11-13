;Assume that bit PB#3 is an input and represensts the condition of a door alarm. if it goes low it means that the door is open..
; monitor it continuously when it goes low, send a low to high pulse to port 5 to turn on a buzzer..

.INCLUDE "M328PDEF.INC"

ldi R16,HIGH(RAMEND)
out SPH,R16
ldi R!^,LOW(RAMEND)
OUT SPL,R16 

CBI DDRB,3 ; CLEAR PB3 set PB3 as an input
SBI DDRC,5 ; set PB5 make it as an output

Forever:
  SBIC PINB,3 ; keep monitoring PB3 for HIGH
  RJMP HERE ; stay here
  SBI PORTC,5 ; make PC5 high
  CBI PORTC,5 ; make PC% low
  RJMP HERE
