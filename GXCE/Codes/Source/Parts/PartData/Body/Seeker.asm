######################################
Seeker [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x13
.alias ModelID = 0x13
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Seeker"
PartDescription:
    String|
"A Lightning Sky model. 
Can attack and change 
direction while air-dashing. 
Slow in all movements 
besides air-dashes. 
Performs only a single 
long-range air-dash and 
slowly descends. 
Collision: Ascends slightly 
as it charges its foe."
RoboBytes:
* 02587378 6400AA39
* 28373728 6464646E
* 0102060F 141E0202
* 00260078 00C60100
* 051E5F9E 0070008E
* 00A1000C 000F0012
* 001E0032 003C006C
* 00B4015E 006400C8
* 01900098 0114018F
* 00020004 000C005F
* 00690073 004C008F
* 011D000A 00140024
* 004B0096 00E10023
* 00480028 001C0000
* 91CC8EE8 97A08C95
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 02000090 00C8004B
* 0028000A 003C0014
* 00000050 00550000
* 000FFFEC 002D000A
* 00008354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B01 008700C8
* 00690000 0014000F
* 001E006E 00780028
* 0078FF60 FF880046
* 000A0000 00000000
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
