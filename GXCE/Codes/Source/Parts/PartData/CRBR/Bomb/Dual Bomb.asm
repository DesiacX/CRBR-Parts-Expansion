######################################
Dual Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x16
.alias ModelID = 0x16
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Dual Bomb"
PartDescription:
    String|
"Explodes twice. 
Capable of creating blasts 
both in front of and 
behind your opponent. 
Launches one bomb at 
a time. 
Blows target diagonally 
upward. 
Advisory: Use it on 
opponents who try to 
stay far away from you."
RoboBytes:
* 00010064 505A0000
* 00A00000 02170010
* 00140000 3F451EB8
* 3F99999A 3F170A3D
* 0025012C 00780046
* 001E0064 00780046
* 00640000 00000000
* 00500000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 00780000 0217000E
* 00140000 3F333333
* 3F800000 3F170A3D
* 001A00D2 00780046
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