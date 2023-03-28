######################################
Glaive [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0D
.alias ModelID = 0x0D
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Glaive"
PartDescription:
    String|
"A Strike Vanisher model. 
Uses stealth function to 
dodge fire while air-dashing. 
Slow while on the ground. 
Can air-dash up to three times. 
Collision: Jumps toward its 
opponent then drifts 
backward."
RoboBytes:
* 03E85F64 64009639
* 1E32321E 64646464
* 01020305 0F1E0002
* 006400A0 01060301
* 00070D14 0087010E
* 01640008 00100021
* 002B0047 0055005A
* 009600F0 005400A8
* 01500043 008C00D2
* 00040008 00100078
* 00A000C8 006400C8
* 0190000A 00140028
* 00280050 00780023
* 00320028 001E0001
* 83848343 836F8F52
* 82E882A0 82B00000
* 00000000 00000000
* 00000000 00000000
* 02000063 00B4003C
* 000A000A 0008001E
* 007800F0 00500000
* 002D00A0 00280028
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700B4
* 004B0000 000F0005
* 001E00B4 00DC00DC
* 0064FF88 FF9C0028
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
