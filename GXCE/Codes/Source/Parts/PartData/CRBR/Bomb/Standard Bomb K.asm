######################################
Standard Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Standard Bomb K"
PartDescription:
    String|
"Features basic functions. 
Flies in an arc toward target. 
Launches one bomb at a time. 
Always knocks target down on 
impact. 
Advisory: Constantly launch 
bombs to run your opponent out 
of hiding."
RoboBytes:
* 00010064 4B5A0000
* 00A00000 01010010
* 00140000 3F570A3D
* 3F9C28F6 3F170A3D
* 003907D0 00780046
* 001E0064 00780046
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 465A0000
* 00B40000 0101000E
* 00120000 3F570A3D
* 3F83D70A 3F170A3D
* 002B07D0 00780046
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
