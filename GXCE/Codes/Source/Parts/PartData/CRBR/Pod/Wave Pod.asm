######################################
Wave Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x13
.alias ModelID = 0x13
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Wave Pod (CRBR)"
PartDescription:
    String|
"Emits four continuous 
blasts that can clear 
walls. 
Deploys one pod at 
a time. 
Blows target to the side 
at a low trajectory 
upward. 
Advisory: When your 
opponent is behind a 
wall, deploy it."
RoboBytes:
* 00010100 00000046
* 012C001E 00000000
* 00000000 01190A00
* 0096008C 000A000A
* 006E012C 0000004B
* 00050064 00320005
* 000A0064 04080005
* 00130000 3F400000
* 3F59999A 4007AE14
* 000E012C 0064003C
* 00140064 0064003C
* 00640000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 00000000
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
