######################################
Bubble Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
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
"Bubble Gun"
PartDescription:
    String|
"Fires large, slow bubbles 
at your opponent. 
Ground fire: Flies to the left 
and right. 
Aerial fire: Flies straight. 
Range: short-medium. 
Advisory: When firing from 
the ground, hide behind walls. 
In the air, scatter your shots."
RoboBytes:
* 000A0000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05010201
* 141E0000 00001C71
* 38E30000 004B0000
* 3DB851EC 3CA3D70A
* 3D23D70A 3F19999A
* 00000028 01F40001
* 00000014 00640064
* 00230064 00050000
* 3D4CCCCD 00000000
* 00000000 3ECCCCCD
* 00000028 01F40001
* 00000014 00640064
* 00230064 00050000
* 3D4CCCCD 00000000
* 00000000 3E99999A
* 00000028 01F40001
* 00000014 00640064
* 00230064 00000000
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
* 14190000 00000AAA
* 40000000 00410000
* 3DB851EC 3D23D70A
* 3CA3D70A 3F3851EC
* 0000002D 03840001
* 00000014 00640064
* 00190064 00760000
* 3D4CCCCD 00000000
* 00000000 3F0CCCCD
* 0000002D 03840001
* 00000014 00640064
* 00190064 00050000
* 3D4CCCCD 00000000
* 00000000 3EB33333
* 0000002D 03840001
* 00000014 00640064
* 00190064 00000000
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
