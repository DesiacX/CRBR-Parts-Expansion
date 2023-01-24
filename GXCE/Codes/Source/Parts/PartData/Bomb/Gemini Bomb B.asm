######################################
Gemin Bomb B [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x10
.alias ModelID = 0x10
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Gemini Bomb B"
PartDescription:
    String|
"Ground fire: Launches a split 
bomb toward either side 
of your foe. 
Aerial fire: Launches a split 
bomb toward the front and 
back of your foe. 
Launch two bombs at a time. 
Blast lingers for a while. 
Blows target sideways. 
Advisory: Fire frequently 
to trap your opponent."
RoboBytes:
* 00020064 693C0000
* 00A00000 01010010
* 00280000 3F1C28F6
* 3F3D70A4 3F4CCCCD
* 0028012C 00870014
* 00140064 00870014
* 00640000 FF060000
* 003CFFE2 00FA0000
* 003C001E 00000000
* 00000000 00000000
* 00000000 643C0000
* 00B40000 01010010
* 00280000 3F1C28F6
* 3F3D70A4 3F4CCCCD
* 002800D2 00870014
* 00140064 00870014
* 00640000 0000FF10
* 003C0000 000000C8
* 00640000 00000000
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
