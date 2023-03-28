######################################
Grand Cross Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x28
.alias ModelID = 0x28
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Grand Cross Bomb^`"
PartDescription:
    String|
"A bomb that has been merged 
with an unknown living being. 
Emits four enormous blasts 
within your robo's range. 
Launches one bomb at a time. 
Blows target diagonally upward."
RoboBytes:
* 01040032 005A0000
* 00B40000 0101003C
* 00190000 3F800000
* 3F800000 40BC28F6
* 00480258 00780046
* 001E0064 00780046
* 00640000 012C012C
* 00640000 FED4012C
* 00640000 012CFED4
* 00640000 FED4FED4
* 00640000 005A0000
* 00B40000 01010030
* 00150000 3F800000
* 3F800000 40BC28F6
* 00480258 00780046
* 001E0064 00780046
* 00640000 01A40000
* 00500000 FE5C0000
* 00500000 000001A4
* 00500000 0000FE5C
* 00500000 00000000
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
