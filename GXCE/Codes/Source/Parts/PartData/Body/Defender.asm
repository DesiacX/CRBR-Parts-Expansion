######################################
Defender [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x12
.alias ModelID = 0x12
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Defender"
PartDescription:
    String|
"A Lightning Sky model. 
Can attack and change 
direction while air-dashing. 
Slow in all movements 
besides air-dashes. 
Performs only a single 
long-range air-dash and 
slowly descends. 
Collision: Slowly charges 
toward its opponent."
RoboBytes:
* 02587878 6400AA39
* 28373728 6464646E
* 0102060F 141E0202
* 00260078 00C60100
* 051E5F9E 00780096
* 00AA000C 000F0012
* 001E0032 003C006C
* 00B4015E 006400C8
* 019000A0 012201A4
* 00020004 000C005F
* 00690073 00500096
* 012C000A 00140024
* 004B0096 00E10023
* 00480028 001C0000
* 82BF82D1 93AA93CB
* 82AB0000 00000000
* 00000000 00000000
* 00000000 00000000
* 02000090 00C80046
* 00640005 00780026
* 000A0028 008C0000
* 0000FFC4 0028000A
* FFEC8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B01 008700C8
* 00690000 0014000F
* 001E006E 00780028
* 0078FF60 FF880046
* 000A0000 00000000
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
