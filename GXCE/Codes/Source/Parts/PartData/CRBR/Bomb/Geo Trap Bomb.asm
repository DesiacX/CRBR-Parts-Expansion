######################################
Geo Trap Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x1D
.alias ModelID = 0x1D
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Geo Trap Bomb (CRBR)"
PartDescription:
    String|
"Flies in an arc toward 
target. 
Launches one bomb at 
a time. 
Blows target diagonally 
upward. 
Advisory: Since the bombs 
are fast and powerful, 
use them to chase your 
foe into the open."
RoboBytes:
* 00010064 505A0000
* 00F00000 0101003C
* 00190000 3F800000
* 3FE66666 3F19999A
* 00480258 00960014
* 001E0064 00960014
* 00640000 00000000
* 003C0000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 555A0000
* 00C40000 01010030
* 00150000 3F666666
* 3FCCCCCD 3F800000
* 00480258 00960014
* 001E0064 00960014
* 00640000 00000000
* 00280000 00000000
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
