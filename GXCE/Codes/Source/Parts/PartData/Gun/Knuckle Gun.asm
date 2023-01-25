######################################
Knuckle Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase =0x1A
.alias ModelID = 0x1A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Knuckle Gun"
PartDescription:
    String|
"Fires extremely short- 
range rounds. 
Ground fire: Blows your 
opponent upward. 
Aerial fire: Blows your 
opponent far away. 
Range: short. 
Advisory: The gun is powerful 
but difficult to hit with. 
Stop your opponent with 
a bomb or pod, then fire."
RoboBytes:
* 00000000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05010101
* 01050000 00000000
* 00000000 00010000
* 3DCCCCCD 3CA3D70A
* 3D23D70A 3F800000
* 00000090 07D00032
* 005A0028 000A0032
* 005A000A 00080000
* 3A83126F 00000000
* 00000000 3F800000
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
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 05010100
* 01050000 00000000
* 00000000 00010000
* 3E19999A 3D23D70A
* 3CA3D70A 3F3851EC
* 0000006C 07D0012C
* 00050014 0064012C
* 00050064 00050000
* 3A83126F 00000000
* 00000000 3F3851EC
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
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 DEADBEAF
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