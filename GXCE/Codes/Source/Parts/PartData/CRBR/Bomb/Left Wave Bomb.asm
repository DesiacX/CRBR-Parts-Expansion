######################################
Left Wave Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x0A
.alias ModelID = 0x0A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Left Wave Bomb (CRBR)"
PartDescription:
    String|
"Launches left then turns right. 
Explodes in three continuous 
blasts that can clear walls. 
Launches one bomb at a time. 
Blows target sideways. 
The direction of the bomb 
changes when fired from the 
air. 
Advisory: Fire from both the 
ground and air."
RoboBytes:
* 00010064 555A0000
* 00640000 030C000C
* 00120000 3F000000
* 3F333333 40533333
* 00220258 00780014
* 001E0064 00780014
* 00640000 00C8FF6A
* 006E0096 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 006E0000 030C000C
* 00120000 3F000000
* 3F333333 40533333
* 001B01A4 00780014
* 001E0064 00780014
* 00640000 FF38FF6A
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
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
