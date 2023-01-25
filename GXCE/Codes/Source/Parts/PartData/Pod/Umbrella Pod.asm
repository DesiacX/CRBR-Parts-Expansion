######################################
Umbrella Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x1E
.alias ModelID = 0x1E
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Umbrella Pod"
PartDescription:
    String|
"Hovers overhead then explodes. 
Deploys three pods at one time. 
Blows target diagonally upward. 
Advisory: Use it against 
opponents who attack 
from the air."
RoboBytes:
* 00010300 005A012C
* 00C8003C 00000000
* 00000000 010A1E00
* 001E005A 00B400B4
* 012C012C 0000002D
* 000000C8 00C8000F
* 000F0164 01010001
* 001A0000 3F800000
* 3F99999A 3E99999A
* 0023012C 00640032
* 00140064 00640032
* 00640000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 00000000
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
