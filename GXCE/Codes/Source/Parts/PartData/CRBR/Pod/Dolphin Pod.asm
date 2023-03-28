######################################
Dolphin Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x07
.alias ModelID = 0x07
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Dolphin Pod"
PartDescription:
    String|
"Arcs toward target. 
Can deploy two pods at one 
time. 
Blows target diagonally upward. 
Advisory: Deploy when your 
opponent hides behind a wall 
or tries to approach by air."
RoboBytes:
* 00020100 00000064
* 003C0078 00000000
* 00000000 01051E00
* 00640096 000A000A
* 0078012C 0000003C
* 001E00C8 00C8000A
* 00000164 01010009
* 00200000 3F4CCCCD
* 3F8CCCCD 3F170A3D
* 0023012C 00640032
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
