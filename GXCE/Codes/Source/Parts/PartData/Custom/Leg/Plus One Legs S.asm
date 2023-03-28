######################################
Plus One Legs S [CRBR Parts Expansion, de, DesiacX]
######################################
.alias PartType = 0x04
.alias PartBase = 0x10
.alias ModelID = 0x00
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Plus One Legs S"
PartDescription:
    String|
"A variant of the Standard
Legs that adds an extra jump.
Features no other special 
characteristics. 
Possesses no ascent or 
descent augmentation."
RoboBytes:
* 00646464 64640164
* 64646464 64646400
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
