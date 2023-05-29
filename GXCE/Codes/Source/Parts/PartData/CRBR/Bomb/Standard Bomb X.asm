######################################
Standard Bomb X [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x23
.alias ModelID = 0x23
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Standard Bomb X (CRBR)"
PartDescription:
    String|
"Features basic functions. 
Arcs toward target. 
Launches one bomb at a time. 
Blows target diagonally upward 
high into the air. 
Advisory: Launch frequently 
to prevent your opponent from 
hiding behind walls."
RoboBytes:
* 00010064 555A0000
* 00A00000 01010010
* 00140000 3F4CCCCD
* 3F8F5C29 3F170A3D
* 00290258 00B4003C
* 001E0064 00B4003C
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 00B40000 0101000E
* 00120000 3F4CCCCD
* 3F8F5C29 3F170A3D
* 002001A4 00B4003C
* 001E0064 00B4003C
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
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
