######################################
Beast Pod F [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x16
.alias ModelID = 0x16
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Beast Pod F"
PartDescription:
    String|
"Hangs in the air once deployed, 
then homes in when a target 
approaches and jumps in front 
of it. 
Can deploy three pods at one 
time. 
Blows target back on a low 
trajectory. 
Advisory: Deploy it away 
from your position."
RoboBytes:
* 00030100 00000046
* 007801E0 00000000
* 00000000 011E0000
* 00050069 000A00FA
* 005A012C 00000000
* 00000064 000A000A
* 003C0064 01010005
* 00130000 3F000000
* 3F11EB85 4095C28F
* 001E012C 00960014
* 00140064 00960014
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
