######################################
Submarine Bomb D [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x12
.alias ModelID = 0x12
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Submarine Bomb D (CRBR)"
PartDescription:
    String|
"Slowly travels straight ahead. 
Launches one bomb at a time. 
Blast lingers for a while. 
Blows target up and backward. 
Advisory: Fire near your foe 
then block their way."
RoboBytes:
* 00010064 644B0000
* 003C0000 01010014
* 00730000 3F99999A
* 3FC00000 3EF0A3D7
* 0054012C 00960032
* 001E0064 00960032
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0000
* 00960000 01010014
* 00730000 3F666666
* 3F8CCCCD 3F170A3D
* 003500D2 00960032
* 001E0064 00960032
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
