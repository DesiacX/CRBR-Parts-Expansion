######################################
Gravity Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x1F
.alias ModelID = 0x1F
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Gravity Gun"
PartDescription:
    String|
"Fires shots that grow large 
and become immobile. 
Ground fire: Rounds move 
straight ahead. 
Aerial fire: Rounds ascend 
diagonally. 
Range: medium. 
Advisory: Your foe will be 
blown upward when shot 
from the ground, so fire 
some aerial shots first."
RoboBytes:
* 000A0000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05010100
* 0A190000 00000000
* 00000000 00180000
* 3E99999A 3CCCCCCD
* 3CA3D70A 3E4CCCCD
* 00000024 025800A0
* 005A001E 006400A0
* 005A0064 00960000
* 3A83126F 00000000
* 00000000 3F3851EC
* 00000024 025800A0
* 005A001E 006400A0
* 005A0064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 05010100
* 0A140000 0000EE39
* 00000000 00030000
* 3ECCCCCD 00000000
* 00000000 3D4CCCCD
* 0000005A 01F40096
* FFC4000A 00640096
* FFC40064 000A0000
* 3ECCCCCD 3CF5C28F
* 00000000 3D4CCCCD
* 0000005A 01F40096
* FFC4000A 00640096
* FFC40064 00960000
* 3C83126F 3D23D70A
* 00000000 3F99999A
* 0000005A 02580096
* FFC4000A 00640096
* FFC40064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 DEADBEAF
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