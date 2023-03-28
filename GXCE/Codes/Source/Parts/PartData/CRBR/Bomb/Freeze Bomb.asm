######################################
Freeze Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Freeze Bomb"
PartDescription:
    String|
"A bomb with basic functions. 
Travels in an arc toward 
target. 
Launches one bomb at a time. 
Briefly immobilizes target. 
Advisory: Since the bomb won't 
directly hit your opponent, 
fire it as you approach."
RoboBytes:
* 00010064 3C500000
* 00AA0000 0101000F
* 00460000 3F333333
* 3F800000 404EB852
* 0008012C 00000000
* 005A0000 00000000
* 00000000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 465A0000
* 00A00000 0101000C
* 003C0000 3F266666
* 3F4CCCCD 40728F5C
* 0008012C 00000000
* 005A0000 00000000
* 00000000 00000000
* 001E0000 00000000
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
