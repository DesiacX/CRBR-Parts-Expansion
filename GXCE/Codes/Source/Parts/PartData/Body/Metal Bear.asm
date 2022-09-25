######################################
Metal Bear [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
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
"Metal Bear"
PartDescription:
    String|
"A Metal Grappler model. 
Strong on offense and 
defense. 
Poor mobility makes dodging 
attacks difficult. 
Air-dashes once. 
Collision: Charges straight 
toward its foe and attacks. 
Extremely strong offensively."
RoboBytes:
* 0708556E 50009639
* 1E32321E 69696964
* 02050902 050A0002
* 004B0078 00C60100
* 000A111A 0096012C
* 018C000A 0015002A
* 0025003E 004A0078
* 00C80190 006900D2
* 01A4005F 00BE011D
* 00020005 000A0064
* 008C00B4 00320064
* 01F4000A 00140024
* 004B0096 00E10030
* 00280037 00300001
* 835E8362 834E838B
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 020000A2 012C0007
* 0000000F 000C002C
* 0000015E 00500000
* 0000FFA6 00460000
* FFEC8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700C8
* FFC40000 0028000C
* 001E0000 FEA20064
* 00000005 FF7E005A
* 0000FFEC 00000000
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
