######################################
Burrow Bomb D [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x0B
.alias ModelID = 0x0B
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Burrow Bomb D"
PartDescription:
    String|
"Explodes after a short period 
of time when it descends. 
Launches one bomb at a time. 
Blast lingers for a while. 
Blows target diagonally upward. 
Advisory: Try to scatter bombs 
to block your opponent's path."
RoboBytes:
* 0001005A 46507800
* 00AA0000 0101000F
* 00460000 3FA66666
* 3FA66666 3F0CCCCD
* 004B0258 00960032
* 001E0064 00960032
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0A00
* 00A00000 0101000C
* 003C0000 3F8CCCCD
* 3F8CCCCD 3F0CCCCD
* 003501A4 00960032
* 001E0064 00960032
* 00640000 00000000
* 001E0000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 DEADBEEF
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
