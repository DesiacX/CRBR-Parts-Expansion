######################################
Diving Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x12
.alias ModelID = 0x12
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Diving Pod"
PartDescription:
    String|
"Flies in the air, homes in 
on a target, then descends 
in front of it. 
Can deploy two pods at one 
time. 
Blows target diagonally upward. 
Advisory: Use it against foes 
who like to hide behind walls."
RoboBytes:
* 00020100 00000064
* 007800C8 00000000
* 00000000 010D1400
* 0064001E 008C000A
* 005A012C 0005003C
* 00050064 0032000A
* 00320064 01010009
* 00200000 3F4CCCCD
* 3F666666 3F170A3D
* 001A012C 00640032
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