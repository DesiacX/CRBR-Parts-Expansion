######################################
Right 5-Way Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x28
.alias ModelID = 0x28
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Right 5-Way Gun"
PartDescription:
    String|
"Fires five rounds that 
spread to the right side. 
The rounds turn in the 
opposite direction when 
fired from the air. 
Range: medium-long. 
Advisory: Spread your fire 
from both the ground and 
the air."
RoboBytes:
* 000A0100 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05020501
* 05230000 00000000
* F8E40000 00060000
* 3EB33333 00000000
* 00000000 3E99999A
* 00000005 00960078
* 00140000 005A0078
* 0014005A 000E0000
* 3EB33333 00000000
* 3BA3D70A 3E99999A
* 0000000F 00B40078
* 0014000A 005A0078
* 0014005A 005E0000
* 3EB33333 00000000
* 3BA3D70A 3E99999A
* 0000001A 00C80078
* 0014000A 005A0078
* 0014005A 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 05020501
* 05230000 00000000
* 071C0000 00060000
* 3EB33333 00000000
* 00000000 3E99999A
* 00000005 00960078
* 00140000 005A0078
* 0014005A 000E0000
* 3EB33333 00000000
* 3BA3D70A 3E99999A
* 0000000F 00B40078
* 0014000A 005A0078
* 0014005A 005E0000
* 3EB33333 00000000
* 3BA3D70A 3E99999A
* 0000001A 00C80078
* 0014000A 005A0078
* 0014005A 00000000
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