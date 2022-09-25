######################################
Earth [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
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
"Earth"
PartDescription:
    String|
"Aerial Beauty model. 
Very agile while airborne. 
Great at avoiding attacks but 
lacks power. 
Capable of two continuous 
jumps. 
Collision: Rises diagonally 
and attacks. 
Able to clear walls."
RoboBytes:
* 0320696E 64009639
* 1E32321E 5F5F5F64
* 04080C02 050A0102
* 003200A0 01080200
* 00050A0F 0096012C
* 018C000A 0015002A
* 002E004C 005B0060
* 00A00100 006900D2
* 01A40056 00B4010E
* 00020004 000C0069
* 006E0073 016902D2
* 05A40006 000C0016
* 00320073 00AC0023
* 00320028 001E0001
* 8354837D 815B835C
* 838B8367 82510000
* 00000000 00000000
* 00000000 00000000
* 0200006C 00C80064
* 00140001 0016001E
* 000000B4 002C0000
* 001EFFA6 001E001E
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 007500B4
* 000A0000 000F0014
* 001E0000 007800B4
* 00000096 FF880028
* 00140000 00000000
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
