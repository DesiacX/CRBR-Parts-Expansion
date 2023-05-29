######################################
^`Float Pod F [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x0F
.alias ModelID = 0x0F
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Float Pod F (CRBR)"
PartDescription:
    String|
"Circles over target's head 
then attacks. 
Deploys two pods at one 
time. 
Blows target back at a low 
trajectory. 
Advisory: Deploy pods 
frequently to rattle your 
opponent."
RoboBytes:
* 00020100 00000078
* 00460168 00000000
* 00000000 012A2600
* 00280055 00A000A0
* 003C00FA 0000005A
* 00050064 0064000A
* 003C0064 01010005
* 00130000 3E800000
* 3E99999A 41000000
* 001A012C 00960014
* 00140064 00960014
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
