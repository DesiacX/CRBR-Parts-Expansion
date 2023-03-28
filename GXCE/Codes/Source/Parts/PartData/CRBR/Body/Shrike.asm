######################################
Shrike [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
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
"Shrike"
PartDescription:
    String|
"A Little Raider model. 
Extremely agile while on 
the ground. 
Poor defense allows foes 
to knock it down easily. 
Can jump up to three times. 
Collision: Rises diagonally 
and attacks."
RoboBytes:
* 00C87878 5A009622
* 323C3C32 5F5F5F64
* 03050903 0A140103
* 002C008C 00C00200
* 000B172E 00410082
* 00AB0004 00090012
* 0039005F 007100BD
* 013B01F8 002E005C
* 00B9006A 00B4010E
* 00030005 000A0064
* 0078008C 00AA0154
* 02D0000A 00140024
* 00230046 00770023
* 00780028 00120000
* 8FE38FB8 93AA93CB
* 82AB0000 00000000
* 00000000 00000000
* 00000000 00000000
* 02000067 00A00046
* 00280005 001E0005
* 00C80078 00500000
* 0028FFC4 0023001E
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 005A008C
* 00280000 000F0014
* 001E0000 007800B4
* 00000096 FF880023
* 0014FFF6 00000000
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
