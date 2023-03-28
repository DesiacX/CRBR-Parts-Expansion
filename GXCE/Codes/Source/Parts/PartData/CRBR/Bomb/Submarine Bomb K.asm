######################################
Submarine Bomb K [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Submarine Bomb K"
PartDescription:
    String|
"Slowly flies straight ahead. 
Launches one bomb at a time. 
Always knocks target down on 
impact. 
Advisory: Fire in unexpected 
directions to block your 
opponent's path."
RoboBytes:
* 00010064 644B0000
* 003C0000 01010010
* 00140000 3F570A3D
* 3F9C28F6 3F170A3D
* 004C07D0 00780046
* 001E0064 00780046
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 00960000 0101000E
* 00120000 3F570A3D
* 3F83D70A 3F170A3D
* 003007D0 00960032
* 001E0064 00960032
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
