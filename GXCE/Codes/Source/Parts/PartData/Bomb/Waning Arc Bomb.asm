######################################
Waning Arc Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x27
.alias ModelID = 0x27
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Waning Arc Bomb^"
PartDescription:
    String|
"Features basic functions. 
Flies straight toward 
target. 
Launches one bomb at 
a time. 
Blows target back 
diagonally. 
Advisory: Launch as often 
as possible so your 
opponent cannot hide 
behind the walls."
RoboBytes:
* 01010064 555A0000
* 00640000 040C000C
* 00120000 3F333333
* 3F800000 40533333
* 00240258 00780014
* 001E0064 00780014
* 00640000 00000000
* 006E0096 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 006E0000 040C000C
* 00120000 3F333333
* 3F800000 40533333
* 002401A4 00780014
* 001E0064 00780014
* 00640000 00000000
* 006EFF6A 00000000
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
