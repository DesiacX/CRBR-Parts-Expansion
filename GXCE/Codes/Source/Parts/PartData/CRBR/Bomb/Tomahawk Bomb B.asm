######################################
Tomahawk Bomb B [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x0E
.alias ModelID = 0x0E
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Tomahawk Bomb B (CRBR)"
PartDescription:
    String|
"Travels in an arc toward 
target. 
Launches one bomb at a time. 
Blast lingers for a while. 
Blows target sideways. 
Advisory: Use it on opponents 
who like to stay in the air."
RoboBytes:
* 00010078 785A0000
* 00780000 0101000C
* 003C0000 3F7D70A4
* 3FB70A3D 3F0CCCCD
* 003F0258 008C008C
* 00140064 008C008C
* 00640000 00000000
* 01040000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 785A0000
* 00780000 0101000A
* 003C0000 3F7D70A4
* 3F9AE148 3F0CCCCD
* 003601A4 008C008C
* 00140064 008C008C
* 00640000 00000000
* 00640000 00000000
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
