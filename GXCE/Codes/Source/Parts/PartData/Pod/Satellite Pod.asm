######################################
Satellite Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
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
"Satellite Pod"
PartDescription:
    String|
"Hangs in the air once deployed, 
then homes in when a target 
approaches. 
Can deploy three pods at one 
time. 
Blows target diagonally upward. 
Advisory: Use it against 
airborne enemies."
RoboBytes:
* 00030100 00000050
* 00460168 00000000
* 00000000 011E0500
* 000A0078 00BE000A
* 005A012C 0000003C
* 00050064 0032000A
* 00320164 01010006
* 00150000 3F4CCCCD
* 3F666666 3F170A3D
* 0023012C 00640032
* 00140064 00640032
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
