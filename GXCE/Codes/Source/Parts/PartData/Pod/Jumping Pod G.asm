######################################
Jumping Pod G [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x11
.alias ModelID = 0x11
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Jumping Pod G"
PartDescription:
    String|
"Approaches target from the 
front then flies over it 
and explodes in the air. 
Can deploy two pods at one 
time. 
Blast lingers for a while 
and blows target upward 
on impact. 
Advisory: Deploy toward your 
foe to keep them from jumping."
RoboBytes:
* 00020100 0000005A
* 0096005A 00000000
* 00000000 01140000
* 00500078 000A00B4
* 00500190 00000000
* 00050064 0032000A
* 00320064 01010005
* 00130000 3F400000
* 3F59999A 4007AE14
* 001A012C 0096005A
* 00140064 0096005A
* 00640000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 00000000
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
