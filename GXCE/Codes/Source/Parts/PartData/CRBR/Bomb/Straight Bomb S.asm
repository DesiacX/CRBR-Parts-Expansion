######################################
Straight Bomb S [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Straight Bomb S (CRBR)"
PartDescription:
    String|
"Flies quickly straight 
ahead. 
Launches one bomb at 
a time. 
Briefly immobilizes target. 
Advisory: Launch directly 
at your opponent from 
close range."
RoboBytes:
* 00010064 785A0000
* 00B80000 0101000E
* 00120000 3F333333
* 3F800000 3F170A3D
* 00330258 00000000
* 00460064 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 785A0000
* 00960000 0101000E
* 000F0000 3F333333
* 3F800000 3F170A3D
* 002601A4 00000000
* 00460064 00000000
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
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
