######################################
Sol [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x05
.alias ModelID = 0x05
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Sol"
PartDescription:
    String|
"Aerial Beauty model. 
Very agile while airborne. 
Great at avoiding attacks but 
lacks power. 
Capable of two continuous 
jumps. 
Collision: Performs a slight
jump and attacks its opponent.
Able to clear walls."
RoboBytes:
* 0320736E 64009639
* 1E32321E 5F5F5F64
* 04080C02 050A0102
* 003200A0 01080200
* 00050A0F 0096012C
* 018C0009 00120024
* 00320054 00650060
* 00A00100 005B00B5
* 016A0056 00B4010E
* 00020004 000C0069
* 006E0073 016902D2
* 05A40006 000C0016
* 00320073 00AC0023
* 00320028 001E0001
* 82A982A9 82C6978E
* 82B50000 00000000
* 00000000 00000000
* 00000000 00000000
* 03000075 00DC000A
* 000A000B 000C0023
* 00A000A0 00500032
* FFCEFFA6 003C003C
* FFB58354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 0075007D
* 00190000 000F0014
* 001E0000 007800B4
* 00000096 FF880028
* 001E0000 00000000
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
