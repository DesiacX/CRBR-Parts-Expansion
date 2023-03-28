######################################
Wyvern Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x25
.alias ModelID = 0x25
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Wyvern Bomb^`"
PartDescription:
    String|
"Illegal part. 
An upgraded Standard Bomb X 
with a larger blast radius 
and longer range. 
Launches one bomb at a time. 
Blows target diagonally upward."
RoboBytes:
* 01010064 555A0000
* 00F00000 01010010
* 00140000 3F9AE148
* 3FD851EC 3F170A3D
* 00290258 00F0003C
* 001E0064 00F0003C
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 00C40000 0101000E
* 00120000 3F8CCCCD
* 3FC51EB8 3F170A3D
* 002001A4 00F0003C
* 001E0064 00F0003C
* 00640000 00000000
* 00000000 00000000
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
