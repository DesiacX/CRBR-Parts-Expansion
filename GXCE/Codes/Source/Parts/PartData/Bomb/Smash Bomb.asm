######################################
Smash Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x1B
.alias ModelID = 0x1B
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Smash Bomb"
PartDescription:
    String|
"Explodes above your head. 
Launches one bomb at a time. 
Blows target diagonally upward. 
Advisory: Use it when your 
opponent tries to attack from 
the air."
RoboBytes:
* 00011194 144B0000
* 03E80000 01010001
* 00230000 3F9AE148
* 3FD851EC 3F000000
* 004B0258 00B40028
* 001E0064 00B40028
* 00640000 000000F0
* 012C0000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 145A0000
* 03E80000 0101000E
* 00120000 3F8CCCCD
* 3FC51EB8 3F000000
* 003501A4 00B40028
* 001E0064 00B40028
* 00640000 000000F0
* 00C80000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 DEADBEEF
MASTERCODE:
PULSE
{
    lis r6, 0x8023
    ori r6, r6, 0xBC70
    mflr r16
    stmw r0, 0(r6)
    li r9, PartType
    li r10, ModelID
    li r11, PartBase
    lis r8, 0x8000
    ori r8, r8, 0x48E0
    mtctr r8
    bctrl
    lmw r0, 0(r6)
    mtlr r16
    blr
}
* E0000000 80008000
