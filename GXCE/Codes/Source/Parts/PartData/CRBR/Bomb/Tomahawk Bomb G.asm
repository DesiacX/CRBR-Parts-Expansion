######################################
Tomahawk Bomb G [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x0F
.alias ModelID = 0x0F
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Tomahawk Bomb G (CRBR)"
PartDescription:
    String|
"Travels in a high arc. 
Launches one bomb at a time. 
Blows target upward. 
Advisory: Use it on opponents 
who like to stay in the air."
RoboBytes:
* 00010064 465A0000
* 00780000 0101000F
* 00120000 3F333333
* 3F800000 404EB852
* 003D0258 0096005A
* 001E0064 0096005A
* 00640000 00000000
* 01040000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 645A0000
* 00780000 0101000C
* 00100000 3F266666
* 3F4CCCCD 40728F5C
* 002B01A4 0096005A
* 001E0064 0096005A
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
