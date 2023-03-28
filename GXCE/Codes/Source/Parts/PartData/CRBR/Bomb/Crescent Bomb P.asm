######################################
Crescent Bomb P [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x14
.alias ModelID = 0x14
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Crescent Bomb P"
PartDescription:
    String|
"Travels in a slow arc toward 
target. 
Launches one bomb at a time. 
Blast lingers for a while. 
Blows target upward. 
Advisory: Try to fire it 
constantly to keep your 
opponent from jumping."
RoboBytes:
* 00010064 6E5A0000
* 003C0000 0101000F
* 003C0000 3F333333
* 3F800000 404EB852
* 003F0258 0096005A
* 001E0064 0096005A
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 645A0000
* 00C80000 0101000C
* 00320000 3F266666
* 3F4CCCCD 40728F5C
* 002E01A4 0096005A
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
