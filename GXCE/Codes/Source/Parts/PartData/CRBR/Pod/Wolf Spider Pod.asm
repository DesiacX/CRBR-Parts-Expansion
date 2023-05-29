######################################
Wolf Spider Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x27
.alias ModelID = 0x27
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Wolf Spider Pod^` (CRBR)"
PartDescription:
    String|
"Illegal part. 
A Spider Pod G with upgraded 
speed and a homing device. 
Can deploy three pods at one 
time. 
Blows target upward."
RoboBytes:
* 01030100 00000064
* 0064017C 00000000
* 00000000 011E1400
* 000500C8 000A000A
* 007801F4 00050000
* 00000064 000A000A
* 00320064 01010005
* 00130000 3F400000
* 3F59999A 405C28F6
* 001B012C 0096005A
* 00140064 0096005A
* 00640000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 00000000
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
