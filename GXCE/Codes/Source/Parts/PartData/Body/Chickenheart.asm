######################################
Chickenheart [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x21
.alias ModelID = 0x21
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Chickenheart"
PartDescription:
    String|
"A Burning Beast model.
Excellent jump speed and
jump height.
Uses stealth function to
dodge fire while air-dashing.
Can only air-dash once, but
can glide for a long time.
Collision: Rises then quickly
descends, attacking its
opponent below. Ascends after
attacking."
RoboBytes:
* 03E8696E 50009639
* 1E32321E 64646464
* 080F1701 02050002
* 004B0078 00B40101
* 0F0C141E 00820104
* 0138000A 00140028
* 00270041 00460078
* 00C80190 006400C8
* 019000A0 014001E0
* 00010004 00080064
* 008C00B4 00320064
* 01F40001 0005000F
* 004B0096 00E10030
* 00280037 00300001
* 9056837A 83808389
* 926E8FE3 00000000
* 00000000 00000000
* 00000000 00000000
* 0200006C 00960032
* 0001400E 000A0005
* 00C80140 00C80046
* FFCE0046 003C001E
* FFEC8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 007E00B4
* 00500000 000F000F
* 001E00B4 00B400B4
* 0078FF6A FFA60028
* 0014FFCE 00000000
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
