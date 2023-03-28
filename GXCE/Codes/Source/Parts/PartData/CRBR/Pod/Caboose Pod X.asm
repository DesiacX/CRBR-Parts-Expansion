######################################
Caboose Pod X [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x25
.alias ModelID = 0x25
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Caboose Pod X"
PartDescription:
    String|
"Flies in the opposite 
direction of where you aim. 
Can deploy two pods at one 
time. 
Blows target diagonally high 
into the air. 
Advisory: Use it to cover 
your escape while retreating."
RoboBytes:
* 00020100 00000064
* 01900078 00B40000
* 00B40000 01051E00
* 003C005A 000A000A
* 00A000FA 000000C8
* 00C80064 0064000A
* 000A0064 01010005
* 00220000 3F800000
* 3F99999A 3F170A3D
* 001B012C 00F0003C
* 001E0064 00F0003C
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
