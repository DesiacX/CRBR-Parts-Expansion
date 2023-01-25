######################################
Sky Freeze Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x0B
.alias ModelID = 0x0B
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Sky Freeze Pod"
PartDescription:
    String|
"Hangs in the air once deployed, 
then homes in when a target 
approaches. 
Can deploy two pods at one 
time. 
Briefly immobilizes target. 
Advisory: Use it on your foes 
when they try to attack from 
the air."
RoboBytes:
* 00020100 00000064
* 012C017C 00000000
* 00000000 011E0500
* 00050050 00DC00DC
* 005A012C 0005003C
* 00050064 0032000A
* 00320064 01010009
* 00200000 3F800000
* 3F933333 3F2E147B
* 0008012C 00000000
* 005A0000 00000000
* 00000000 00000000
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
