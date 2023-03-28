######################################
Criminal [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
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
"Criminal"
PartDescription:
    String|
"A Trick Flyer model. 
Very agile while airborne. 
Extremely slow on the ground. 
Can perform up to three 
short-range, but elaborate, 
air-dashes. 
Collision: Charges straight 
toward its opponent and 
drifts upward after impact."
RoboBytes:
* 03E86978 6E009639
* 1E32321E 64646464
* 04070D08 0F1E0002
* 003F0064 00A50300
* FB020508 00C80190
* 02940007 000F001E
* 00270041 004E0051
* 008700FA 004B0096
* 012C0060 00C8012C
* 0002000C 00180064
* 006E0078 02EE05DC
* 0BB80008 000F001B
* 00320064 00B40028
* 0032002D 00320001
* 9056837A 83808389
* 8BF39286 00000000
* 00000000 00000000
* 00000000 00000000
* 02000075 00960082
* 0028000F 00140014
* 0000007D 004B0000
* 0000001E 00320028
* FFC48D63 92E993AA
* 93CB82AB 00000000
* 00000000 00000000
* 00000000 00000000
* 00000200 007500C8
* 0014000A 000A0016
* 001E0000 00A00050
* 00000000 FFA60032
* 0014FFEC 00000000
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
