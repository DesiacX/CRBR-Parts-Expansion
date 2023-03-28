######################################
^`Double Wave Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x21
.alias ModelID = 0x21
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Double Wave Pod"
PartDescription:
    String|
"Deploys pods left and right 
and emits four blasts capable 
of clearing walls. 
Deploys two pods at one 
time. 
Blows target diagonally upward. 
Advisory: Use it to surround 
a foe hiding behind a wall."
RoboBytes:
* 00010200 00320046
* 012C003C 001EFFE2
* 001EFFE2 01000000
* 00960096 000A000A
* 006E012C 0000004B
* 00050064 00320005
* 000A0064 03080005
* 00130000 3EB33333
* 3EE66666 40200000
* 001C012C 0064003C
* 00140064 0064003C
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
