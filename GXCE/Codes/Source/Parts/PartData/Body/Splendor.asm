######################################
Splendor [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x01
.alias ModelID = 0x01
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Splendor"
PartDescription:
    String|
"A Shining Fighter model. 
Exhibits basic capabilities. 
Well-balanced attributes allow 
operators to use all robo 
functions with ease. 
Can air-dash twice.  
Collision: Rises then charges 
straight toward its opponent. 
Can clear walls."
RoboBytes:
* 03E85F64 64009639
* 1E32321E 64646464
* 03060A05 0F1E0002
* 006400A0 01080200
* 00050A0F 0096012C
* 018C000A 0015002A
* 002E004C 005B005A
* 009600F0 006900D2
* 01A40078 00FA0177
* 00040008 00100064
* 008C00B4 00320064
* 0145000A 00140028
* 00320064 00960023
* 00320028 001E0001
* 835F8393 834E0000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 02000087 0096001E
* 000A0014 0014000D
* 004600BC 0000004F
* FFEFFFA6 0032001E
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700A0
* 004B0000 000F000F
* 001E00B4 00B400B4
* 0078FF6A FFA60032
* 001EFFE2 00000000
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
