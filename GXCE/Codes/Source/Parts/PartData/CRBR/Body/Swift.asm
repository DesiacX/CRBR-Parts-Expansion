######################################
Swift [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x09
.alias ModelID = 0x09
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Switft"
PartDescription:
    String|
"A Little Raider model. 
Extremely agile while on 
the ground. 
Poor defense allows foes 
to knock it down easily. 
Can jump up to three times. 
Collision: Charges toward its 
opponent with a short jump. 
Able to clear walls."
RoboBytes:
* 00C87D78 5A009622
* 323C3C32 5F5F5F64
* 03050903 0A140103
* 002C008C 00C00200
* 000B172E 00410082
* 00AB0004 00080011
* 003B0063 006E00BD
* 013B01F8 002C0058
* 00B0006A 00B4010E
* 00030005 000A0064
* 0078008C 00AA0154
* 02D0000A 00140024
* 00230046 00770023
* 00780028 00120000
* 82BF82D1 8E7193AA
* 93CB82AB 00000000
* 00000000 00000000
* 00000000 00000000
* 0200005A 0078006E
* 000A000A 0018001E
* 00DF0092 0050003F
* FFDD0000 0023000A
* FFF68354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 005A0078
* 00140000 000F0014
* 001E0000 007800B4
* 00000096 FF880032
* 0000FFF6 00000000
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
