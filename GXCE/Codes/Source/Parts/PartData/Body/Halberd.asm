######################################
Halberd [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0E
.alias ModelID = 0x0E
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Halberd"
PartDescription:
    String|
"A Strike Vanisher model. 
Uses stealth function to 
dodge fire while air-dashing. 
Slow while on the ground. 
Can air-dash up to three times. 
Collision: Charges straight 
toward its opponent."
RoboBytes:
* 03E86964 64009639
* 1E32321E 64646464
* 01020305 0F1E0002
* 006400A0 01060301
* 00070D14 0087010E
* 01640007 000F001E
* 002F004F 005F005A
* 009600F0 004C0098
* 01300043 008C00D2
* 00040008 00100078
* 008C00AA 006400C8
* 0190000A 00140028
* 00280050 00780023
* 00320028 001E0001
* 8363838B 834D926E
* 8FE38F52 82E80000
* 00000000 00000000
* 00000000 00000000
* 02000087 00B4004B
* 000A000A 000E001E
* 005000F0 00000000
* 00000000 00280014
* FFEC8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 006C00B4
* 003C0000 000F0005
* 001E00B4 00DC00DC
* 0064FF88 FF9C0028
* 0028FFF6 00000000
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
