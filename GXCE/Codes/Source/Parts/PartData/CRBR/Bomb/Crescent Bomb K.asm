######################################
Crescent Bomb K [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x22
.alias ModelID = 0x22
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Crescent Bomb K"
PartDescription:
    String|
"Arcs slowly toward target. 
Launches one bomb at a time. 
Always knocks target down on 
impact. 
Advisory: Launch frequently 
to prevent your opponent 
from jumping."
RoboBytes:
* 00010064 785A0000
* 003C0000 0101000C
* 003C0000 3F570A3D
* 3F9C28F6 3F0CCCCD
* 004507D0 00780046
* 001E0064 00780046
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 465A0000
* 00C80000 0101000A
* 003C0000 3F570A3D
* 3F83D70A 3F0CCCCD
* 003607D0 00780046
* 001E0064 00780046
* 00640000 00000000
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
