######################################
Wave Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x03
.alias ModelID = 0x03
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Wave Bomb (CRBR)"
PartDescription:
    String|
"Emits three blasts that 
can pass through walls. 
Launches one bomb at 
a time. 
Blows target to the side 
at a low trajectory. 
Advisory: If your opponent 
is hiding behind a wall, 
fire directly toward them."
RoboBytes:
* 00010064 465A0000
* 00780000 0308000C
* 00120000 3F000000
* 3F333333 40200000
* 0018012C 00780014
* 001E0064 00780014
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 465A0000
* 00780000 0308000A
* 00120000 3F000000
* 3F333333 40200000
* 001100D2 00780014
* 001E0064 00780014
* 00640000 00000000
* 00640000 00000000
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
