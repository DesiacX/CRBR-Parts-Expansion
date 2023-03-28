######################################
Standard Bomb S [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x02
.alias ModelID = 0x02
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Standard Bomb S"
PartDescription:
    String|
"Features basic functions. 
Flies straight toward 
target. 
Launches one bomb at 
a time. 
Briefly immobilizes target. 
Advisory: Launch as often 
as possible so your 
opponent cannot hide 
behind the walls."
RoboBytes:
* 00010064 555A0000
* 00A00000 0101000E
* 00120000 3F4CCCCD
* 3F8F5C29 3F170A3D
* 003B0258 00000000
* 00460064 00000000
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 00B40000 0101000E
* 000F0000 3F3851EC
* 3F6147AE 3F170A3D
* 002F01A4 00000000
* 00460064 00000046
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
