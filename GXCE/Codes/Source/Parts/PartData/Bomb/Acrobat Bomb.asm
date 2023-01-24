######################################
Acrobat Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x18
.alias ModelID = 0x18
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Acrobat Bomb"
PartDescription:
    String|
"Explodes at your feet. 
Does not inflict damage. 
Launches one bomb at a time. 
Blows your robo high into 
the air. 
Advisory: Use it when you 
want to jump very high."
RoboBytes:
* 00010064 0A480000
* 00C00000 01010010
* 00140000 3F8CCCCD
* 3FC51EB8 3F170A3D
* 0000015E 00BE006E
* 000A0046 0014005A
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 01480000
* 00D80000 0101000E
* 00120000 3F800000
* 3FB33333 3F170A3D
* 0000015E 00BE006E
* 000A0046 0014005A
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
