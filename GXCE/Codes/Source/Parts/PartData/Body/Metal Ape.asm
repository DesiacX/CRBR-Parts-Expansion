######################################
Metal Ape [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x06
.alias ModelID = 0x06
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Metal Ape"
PartDescription:
    String|
"A Metal Grappler model. 
Strong on offense and 
defense. 
Poor mobility makes dodging 
attacks difficult. 
Air-dashes once. 
Collision: Rises diagonally 
and attacks."
RoboBytes:
* 07085A6E 50009639
* 1E32321E 69696964
* 02050902 050A0002
* 004B0078 00C60100
* 000A111A 0096012C
* 018C000A 00140028
* 00270041 00460078
* 00C80190 006400C8
* 0190005F 00BE011D
* 00020005 000A0064
* 008C00B4 00320064
* 01F4000A 00140024
* 004B0096 00E10030
* 00280037 00300001
* 8389838A 83418362
* 83678FB8 97B40000
* 00000000 00000000
* 00000000 00000000
* 02000063 00FA0064
* 00640001 0040000F
* 00000050 00420000
* 001EFFA6 005A0000
* FFEC8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 00870050
* 00460000 0028000C
* 001E0000 FEA20064
* 00000005 FF7E005A
* 00000000 00000000
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
