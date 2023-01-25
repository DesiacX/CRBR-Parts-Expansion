######################################
Twin Flank Pod G [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x1D
.alias ModelID = 0x1D
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Twin Flank Pod G"
PartDescription:
    String|
"Deploys one pod left and one 
pod right. 
Deploys two pods at one time. 
Blows target upward. 
Advisory: Use it when a wall 
separates you and your foe."
RoboBytes:
* 00010200 00B40064
* 0064005A 00000000
* 00000000 010A0F00
* 005A0087 000A000A
* 005A00FA 00000000
* 00050064 0064001E
* 001E0064 01010005
* 00130000 3F400000
* 3F59999A 4047AE14
* 0023012C 0096005A
* 00140064 0096005A
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