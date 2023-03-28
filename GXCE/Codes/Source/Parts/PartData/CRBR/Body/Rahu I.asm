######################################
Rahu I [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1E
.alias ModelID = 0x1E
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Rahu I^`"
PartDescription:
    String|
"A robo that was merged with
an unknown living being.
A Lightning Sky model with
upgraded ground mobility and
aerial abilities.
Collision: Charges straight
toward its opponent."
RoboBytes:
* 03E86478 64019639
* 1E32321E 64646464
* 0102060F 14230202
* 00260078 00C60100
* 055AB4F0 007800A0
* 00B4000A 000F0014
* 003E0068 0074006C
* 00B4015E 006400C8
* 019000A0 014001E0
* 0004000F 001E0069
* 0073007D 00C80190
* 0280000A 00140024
* 00190032 00500023
* 00480028 001C0001
* 8E708393 83608251
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 02020090 00DC005F
* 000A000A 000E0023
* 005000F0 00500000
* 0000FFA6 003C0014
* FFE28354 837D815B
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
