######################################
Titan Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Titan Bomb"
PartDescription:
    String|
"Slowly flies in an arc. 
Emits an enormous blast. 
Launches one bomb at a time. 
Blows target diagonally high 
into the air. 
Advisory: Don't worry about 
where your opponent is and 
launch repeatedly."
RoboBytes:
* 00010064 64F03C00
* 00190000 01010021
* 002A0000 4039999A
* 4081999A 3F170A3D
* 001207D0 008C0046
* 001E0064 008C0032
* 00640000 00000000
* 00FA0000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 64F03C00
* 00140000 01010021
* 002A0000 4039999A
* 4081999A 3F170A3D
* 001207D0 008C0046
* 001E0064 008C0032
* 00640000 00000000
* 00960000 00000000
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
