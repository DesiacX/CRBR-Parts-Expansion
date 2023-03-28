######################################
Straigh Bomb G [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x04
.alias ModelID = 0x04
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Straight Bomb G"
PartDescription:
    String|
"Flies quickly straight 
ahead. 
Launches one bomb at 
a time. 
Blows target upward. 
Advisory: Launch directly 
at your opponent from 
close range."
RoboBytes:
* 00010064 785A0000
* 00F00000 0101000F
* 00120000 3F333333
* 3F800000 404EB852
* 00330258 0096005A
* 001E0064 0096005A
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 785A0000
* 00C40000 0101000C
* 00100000 3F266666
* 3F4CCCCD 40728F5C
* 002301A4 0096005A
* 001E0064 0096005A
* 00640000 00000000
* 00000000 00000000
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
