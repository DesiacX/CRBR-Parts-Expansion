######################################
Cheetah Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x26
.alias ModelID = 0x26
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Cheetah Pod^"
PartDescription:
    String|
"Illegal part. 
A Speed Pod P with upgraded 
firepower, range, and number 
of rounds. 
Can deploy three pods at one 
time. 
Blast lingers a while and 
blows target upward."
RoboBytes:
* 01030100 0000003C
* 012C005A 00000000
* 00000000 011E0A00
* 00FA008C 000A000A
* 006E012C 00000000
* 00000000 00000000
* 002D0164 0101000A
* 004B0000 3EE66666
* 3F1EB852 409570A4
* 0024012C 0096005A
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
