######################################
Short Thrust Legs [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x04
.alias PartBase = 0x05
.alias ModelID = 0x05
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Short Thrust Legs"
PartDescription:
    String|
"Decreases your dash distance. 
Enables sharp turning while 
on the ground. 
Advisory: Use this set of 
legs when you want to make 
difficult turns in the air."
RoboBytes:
* 0064C864 64640164
* 64640101 320164FF
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