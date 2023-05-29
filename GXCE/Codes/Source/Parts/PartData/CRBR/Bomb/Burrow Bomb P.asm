######################################
Burrow Bomb P [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x0C
.alias ModelID = 0x0C
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Burrow Bomb P (CRBR)"
PartDescription:
    String|
"Explodes after a short period 
of time when it descends. 
Launches one bomb at a time. 
Blast lingers for a while. 
Blows target upward. 
Advisory: Try to scatter bombs 
to block your opponent's path."
RoboBytes:
* 00010064 46507800
* 00AA0000 0101000F
* 00460000 3F333333
* 3F800000 404EB852
* 004B0258 0096005A
* 001E0064 0096005A
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 505A0A00
* 00A00000 0101000C
* 003C0000 3F266666
* 3F4CCCCD 40728F5C
* 003501A4 0096005A
* 001E0064 0096005A
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
