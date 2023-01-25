######################################
Spider Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x09
.alias ModelID = 0x09
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Spider Pod"
PartDescription:
    String|
"Remains in place when 
deployed, then homes in 
when a target approaches. 
Can deploy three pods at one 
time. 
Blows target diagonally 
upward. 
Advisory: Surround yourself 
with pods for protection."
RoboBytes:
* 00030100 00000064
* 0064017C 00000000
* 00000000 011E0A00
* 000500A0 000A000A
* 005A0190 00050000
* 00000064 000A000A
* 00320064 01010009
* 00200000 3F800000
* 3FA66666 3F170A3D
* 001B012C 00960032
* 00140064 00960032
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
