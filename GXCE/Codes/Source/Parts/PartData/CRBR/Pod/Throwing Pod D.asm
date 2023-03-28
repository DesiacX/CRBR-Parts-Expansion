######################################
Throwing Pod D [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x1F
.alias ModelID = 0x1F
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Throwing Pod D"
PartDescription:
    String|
"Travels in a high arc. 
Can deploy two pods at one 
time. 
Blast lingers a while and 
blows target diagonally 
upward on impact. 
Advisory: Deploy directly 
at your foe from behind a 
wall."
RoboBytes:
* 00020100 0000005A
* 003C0064 00000000
* 00000000 01140A00
* 00050016 000A000A
* 005A0190 0005001E
* 001400E9 00E9001E
* 001E0064 0101000A
* 008C0000 3F4CCCCD
* 3F4CCCCD 3F170A3D
* 0023012C 00500032
* 00140064 00500032
* 00640000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 00000000
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
