######################################
Can Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
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
"Can Pod"
PartDescription:
    String|
"The weakest pod, this is 
a Standard Pod with very weak 
firepower and blast radius. 
Can deploy three pods at one 
time. 
Blows target diagonally upward."
RoboBytes:
* 00030100 00000096
* 0096005A 00000000
* 00000000 010A1E00
* 0064001E 000A000A
* 005A00FA 00000000
* 00050064 0032000A
* 00320050 01010009
* 00200000 3F000000
* 3F19999A 3F170A3D
* 001B012C 00640032
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
