######################################
Left Flank Bomb H [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x08
.alias ModelID = 0x08
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Left Flank Bomb H"
PartDescription:
    String|
"Launches left then turns 
right. 
Blows target slowly 
sideways. 
The direction of the bomb 
changes when launched 
from the air. 
Advisory: Adjust to your 
foe's movements and fire 
from both the ground 
and air."
RoboBytes:
* 00010064 6E5A0000
* 00A00000 0101000E
* 00120000 3F800000
* 3FB33333 3F170A3D
* 003C0258 00500014
* 001E0014 00500014
* 00140000 00540000
* 003C0037 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 6E5A0000
* 00B40000 0101000D
* 00100000 3F666666
* 3F8CCCCD 3F170A3D
* 002A01A4 00500014
* 001E0014 00500014
* 00140000 FFBA0000
* 003CFFC9 00000000
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
