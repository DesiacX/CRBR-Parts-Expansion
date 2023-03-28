Ruhiel [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1C
.alias ModelID = 0x1C
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Ruhiel^`"
PartDescription:
    String|
"Illegal part.
A Lightning Sky model 
with upgraded defensive 
and aerial abilities. 
Collision: Ascends quickly 
and flies straight ahead."
RoboBytes:
* 03E86978 64019639
* 1E32321E 64646464
* 0102060F 141E0202
* 00260078 00C60100
* 055AB4F0 008200AA
* 00C8000E 00120014
* 00300050 0060006C
* 00B4015E 006400C8
* 019000A0 014001E0
* 00020004 000C0069
* 0073007D 00C80190
* 0280000A 00140024
* 004B0096 00E10023
* 00480028 001C0001
* 82BF82D1 93AA93CB
* 82AB0000 00000000
* 00000000 00000000
* 00000000 00000000
* 03000087 00C80046
* 00140001 000D0026
* 000000F0 00F00000
* 003C0000 00280014
* 00008354 837D815B
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
