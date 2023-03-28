######################################
Rahu III [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x20
.alias ModelID = 0x20
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Rahu III^`"
PartDescription:
    String|
"A robo that was merged with
an unknown living being.
Extremely high defensive and
aerial capabilities.
Resistant to knockdowns.
Collision: Slowly approaches
its opponent, attacks, then
slowly ascends."
RoboBytes:
* 75301400 00010039
* 0A0A0A0A 64646464
* 0102060F 14230202
* 00260078 00C60200
* FB2D5A78 006400B4
* 00C8000F 00140019
* 001E0032 003C006C
* 00B4015E 006400C8
* 019000A0 014001E0
* 0004000F 001E0069
* 0073007D 00C80190
* 0280000A 00140024
* 00190032 00500023
* 00480028 001C0001
* 8E638965 8C9D0000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 030000A3 012C0007
* 000A001E 003C005A
* 001E0032 001E0000
* 00000078 00780032
* FFCE8354 837D815B
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
