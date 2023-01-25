######################################
Jumping Pod B [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x10
.alias ModelID = 0x10
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Jumping Pod B"
PartDescription:
    String|
"Approaches target from the 
front then flies over it 
and explodes in the air. 
Can deploy two pods at one 
time. 
Blast lingers for a while 
and blows target back at 
a low trajectory on impact. 
Advisory: Deploy toward your 
foe to keep them from jumping."
RoboBytes:
* 00020100 00000064
* 00AA005A 00000000
* 00000000 01141400
* 00500040 000A00B4
* 005001F4 00000000
* 00050064 0032000A
* 00320064 0101000A
* 00640000 3F666666
* 3F851EB8 3ECCCCCD
* 001F012C 00500032
* 00140064 00500032
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
