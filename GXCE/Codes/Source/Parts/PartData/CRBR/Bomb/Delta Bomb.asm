######################################
Delta Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x19
.alias ModelID = 0x19
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Delta Bomb (CRBR)"
PartDescription:
    String|
"Traps target by launching 
three bombs: to the left, 
right, and front.
Blows target sideways. 
Advisory: Launch frequently 
to keep your foe at a 
distance."
RoboBytes:
* 00030028 325A0000
* 00F00000 01010007
* 00120000 3E800000
* 3F19999A 40BC28F6
* 001E00F0 00960014
* 001E0064 00960014
* 00640000 00C800C8
* 00640000 FF3800C8
* 00640000 00000000
* 00DC0000 00000000
* 00000000 325A0000
* 00C40000 01010007
* 00120000 3E800000
* 3F19999A 40BC28F6
* 001500F0 00960014
* 001E0064 00960014
* 00640000 00C800C8
* 00640000 FF3800C8
* 00640000 00000000
* 00780000 00000000
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
