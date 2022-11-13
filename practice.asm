; write a program to determine if Ram location 0x200 contains 0. if so then put 0x55 in it


lds r16,0x200
tst r16
brne next ; if z flag = 0 means(there is no zero)
ldi r17,0x55
sts 0x200,r17

next: ....

;Find the sum of the values 0x79,0xF5 and 0xE2, put the sum into R20(low byte) and R21(highbyte)....

ldi r20,0 ;low
ldi r21,0 ; high
ldi r22,0x79; 
add r20,r22 ; 0 + 01111001 : C = 0
brsh n1 ; add next number if there is no carry
inc r21; if there is carry increment the high byte(high byte = 0)

n1:
ldi r22,0xF5 
add r20,r22; 1 01101110 carry C = 1
brsh n2 ; if carry is 0 add next number
inc r21; if carry ++ high byte.. high byte(1)
n2:
ldi r22,0xE2
add r20,r22 ; 
brsh over ; if C = 0
inc r21 ; if there is carry high byte = 2

over:...
