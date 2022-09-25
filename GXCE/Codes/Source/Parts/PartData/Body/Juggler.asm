######################################
Juggler [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x11
.alias ModelID = 0x11
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Juggler"
PartDescription:
    String|
"A Trick Flyer model. 
Very agile while airborne. 
Extremely slow on the ground. 
Can perform up to three 
short-range, but elaborate, 
air-dashes. 
Collision: Rises diagonally 
and immediately drops down, 
damaging its opponent below."
RoboBytes:
* 03E86E78 6E009639
* 1E32321E 64646464
* 04070D08 0F1E0002
* 003F0064 00A50300
* FB020508 00C80190
* 02940007 000F001E
* 00270041 004E0051
* 008700FA 004B0096
* 012C0065 00D2013B
* 0002000C 00180064
* 006E0078 03140627
* 0C4E0008 000F001B
* 00320064 00B40028
* 0032002D 00320001
* 8BF390E4 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 0200006C 00B40078
* 00280001 001C0031
* 07D000EC 00500044
* FFB5FFA6 00320000
* FFCE8354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B02 000000A0
* 003C0000 000F0014
* 001E0000 007800B4
* 00000096 FF880032
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
