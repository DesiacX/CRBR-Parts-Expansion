######################################
Speed Pod P[Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x04
.alias ModelID = 0x04
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Speed Pod P"
PartDescription:
    String|
"Quickly flies straight ahead. 
Can deploy two pods at one 
time. 
Blast lingers for a while and 
blows target upward. 
Advisory: Deploy directly at 
your foe to defend yourself.
Advisory: Deploy directly at 
your foe to defend yourself."
RoboBytes:
* 00020100 0000003C
* 012C002D 00000000
* 00000000 011E0A00
* 00FA008C 000A000A
* 006E012C 00000000
* 00000000 00000000
* 002D0164 0101000A
* 004B0000 3EE66666
* 3F1EB852 409570A4
* 0023012C 0096005A
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
