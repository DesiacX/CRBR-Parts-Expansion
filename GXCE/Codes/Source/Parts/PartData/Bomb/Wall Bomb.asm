######################################
Wall Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x1A
.alias ModelID = 0x1A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Wall Bomb"
PartDescription:
    String|
"Detonates a huge explosion 
in front of you. 
Launches one bomb at a time. 
Blows target diagonally upward. 
Advisory: Fire away from your 
foe to block their way."
RoboBytes:
* 0001000A 3C500000
* 00F00000 0101000F
* 003C0000 3F800000
* 3F800000 40800000
* 004B0258 00780046
* 001E0064 00780046
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 3C500000
* 00C80000 0101000F
* 003C0000 3F800000
* 3F800000 40800000
* 003501A4 00780046
* 001E0064 00780046
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 DEADBEEF
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
