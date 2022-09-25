######################################
Buggy [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x10
.alias ModelID = 0x10
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Buggy"
PartDescription:
    String|
"A Trick Flyer model. 
Very agile while airborne. 
Extremely slow on the ground. 
Can perform up to three 
short-range, but elaborate, 
air-dashes. 
Collision: Rises vertically 
and immediately returns to 
its original spot, damaging 
its opponent."
RoboBytes:
* 03E86478 6E009639
* 1E32321E 64646464
* 04070D08 0F1E0002
* 003F0064 00A50300
* FB020508 00C80190
* 02940007 000F001E
* 00270041 004E0051
* 008700FA 004B0096
* 012C005B 00BE011D
* 0002000C 00180064
* 006E0078 02C90591
* 0B220008 000F001B
* 00320064 00B40028
* 0032002D 00320001
* 8368838A 834C8362
* 834E0000 00000000
* 00000000 00000000
* 00000000 00000000
* 03010087 00F0005A
* 009C0008 002D0022
* 01C20050 00500014
* FF79FFA6 0028FFC4
* FFB08354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B02 00870096
* 005A0000 000F0014
* 001E0000 007800B4
* 00000096 FF880032
* 002D0000 00000000
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
