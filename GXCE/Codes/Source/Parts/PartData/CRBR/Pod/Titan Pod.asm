######################################
Titan Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x22
.alias ModelID = 0x22
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Titan Pod"
PartDescription:
    String|
"Moves slowly and emits an 
enormous blast. 
Deploys one pod at a time. 
Blows target diagonally high 
into the air. 
Advisory: Don't worry about 
your opponent's position 
and deploy frequently."
RoboBytes:
* 00010100 00000064
* 0064003C 00000000
* 00000000 010A1E00
* 00280028 000A000A
* 005A00FA 00000000
* 00050064 0032000A
* 003200FA 010100B4
* 00B40000 4019999A
* 3DCCCCCD 3F170A3D
* 000807D0 00C80032
* 00140064 00C80032
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
