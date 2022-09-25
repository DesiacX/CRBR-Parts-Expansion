######################################
Javelin [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0C
.alias ModelID = 0x0C
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Javelin"
PartDescription:
    String|
"A Strike Vanisher model. 
Uses stealth function to 
dodge fire while air-dashing. 
Slow while on the ground. 
Can air-dash up to 
three times. 
Collision: Can repeatedly 
charge straight toward its 
opponent from short range. 
There is no invincibility 
time."
RoboBytes:
* 03E86464 64009639
* 1E32321E 64646464
* 01020305 0F1E0002
* 006400A0 01060301
* 00070D14 0087010E
* 01640008 00100020
* 002D004B 005A005A
* 009600F0 005000A0
* 01400043 008C00D2
* 00040008 00100078
* 00A000C8 006400C8
* 0190000A 00140028
* 00280050 00780023
* 00320028 001E0001
* 8E638965 8C9D0000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 0000004C 0064003C
* 00140005 0008000B
* 005000F0 00500000
* 0000FFA6 003C0014
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700B4
* 00500000 000F0005
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
