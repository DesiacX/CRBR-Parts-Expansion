Ray Warrior [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1A
.alias ModelID = 0x1A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Ray Warrior^`"
PartDescription:
    String|
"IIllegal part. 
A Shining Fighter model with 
upgraded offense and 
defense. 
Collision: Stops in place 
then charges toward its 
opponent."
RoboBytes:
* 05DC5564 64019639
* 1E32321E 6E6E6E64
* 03060A05 0F1E0002
* 006400A0 01080200
* 00050A0F 00C80190
* 01F4000A 00140028
* 00300050 0060005A
* 009600F0 006400C8
* 01900078 00FA0177
* 00040008 00100064
* 008C00B4 00320064
* 0145000A 00140028
* 00320064 00960023
* 00320028 001E0000
* 835E8362 834E838B
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 030000A2 01900007
* 0014001E 00080005
* 0000015E 00000000
* 0000FFA6 00460000
* FFEC8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 007E00B4
* 00500000 000F000F
* 001E00B4 00B400B4
* 0078FF6A FFA60028
* 0014FFCE 00000000
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
