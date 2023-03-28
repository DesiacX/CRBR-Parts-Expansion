######################################
Metal Ox [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x08
.alias ModelID = 0x08
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Metal Ox"
PartDescription:
    String|
"A Metal Grappler model. 
Strong on offense and 
defense. 
Poor mobility makes dodging 
attacks difficult. 
Air-dashes once. 
Collision: Rises vertically 
then charges straight toward 
its opponent."
RoboBytes:
* 07085F6E 50009639
* 1E32321E 69696964
* 02050902 050A0002
* 004B0078 00C60100
* 000A111A 0096012C
* 018C0009 00130026
* 00290044 00520078
* 00C80190 005F00BE
* 017C005F 00BE011D
* 00020005 000A0064
* 008C00B4 00320064
* 01F4000A 00140024
* 004B0096 00E10030
* 00280037 00300001
* 837B8366 83428376
* 838C8358 00000000
* 00000000 00000000
* 00000000 00000000
* 02000087 00960014
* 003C0014 00500022
* 00460048 00500038
* FFF6FFA6 003C001E
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700C8
* 005A0000 0028000C
* 001E0000 FEA20064
* 00000005 FF7E003C
* 0000FFD8 00000000
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
