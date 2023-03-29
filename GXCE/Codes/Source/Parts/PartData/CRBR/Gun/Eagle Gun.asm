######################################
Eagle Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
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
"Eagle Gun"
PartDescription:
    String|
"Fires a quick, straight round. 
Ground fire: Rounds will not 
pause. 
Aerial fire: Rounds will pause 
briefly, then fly. 
Range: medium-long. 
Advisory: Scatter your fire 
while airborne."
RoboBytes:
* 000F0100 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05010100
* 01280000 00000000
* 00000000 00140000
* 3E99999A 3CCCCCCD
* 3CA3D70A 3E75C28F
* 0000001F 01E0000F
* 00000019 00640050
* 001E0064 00710000
* 3E99999A 3C9374BC
* 3CA3D70A 3E75C28F
* 0000001F 01E0000F
* 00000019 00640050
* 001E0064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 05010100
* 01130000 00000000
* 00000000 00780000
* 3B449BA6 3CA3D70A
* 3CA3D70A 3E75C28F
* 0000002D 01E0000F
* 00000014 00640064
* 001E0064 00140000
* 3E99999A 3C1374BC
* 3CA3D70A 3E75C28F
* 0F00002D 01E0000F
* 00000014 00640064
* 001E0064 00980000
* 3E6147AE 3B83126F
* 3C23D70A 3E75C28F
* 0F00002D 01E0000F
* 00000014 00640000
* 001E0064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 DEADBEEF
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