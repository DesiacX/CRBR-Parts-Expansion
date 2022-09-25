Athena [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1D
.alias ModelID = 0x1D
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Athena^"
PartDescription:
    String|
"Illegal part.
An Aerial Beauty model with 
upgraded aerial abilities 
and additional jumps. 
Collision: Ascends quickly."
RoboBytes:
* 03E8696E 64019639
* 1E32321E 5F5F5F64
* 04080C02 050A0106
* 003200A0 01080200
* 00050A0F 0096012C
* 018C000A 00140028
* 00300050 00600060
* 00A00100 006400C8
* 01900056 00B4010E
* 00020004 000C0069
* 006E0073 02EE05DC
* 0BB80006 000C0016
* 00320064 00AC0023
* 00320028 001E0001
* 8354837D 815B835C
* 838B8367 82510000
* 00000000 00000000
* 00000000 00000000
* 07000087 012C0050
* 00140003 000C0006
* 00A000A0 00A0001E
* 005A0078 001E001E
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 006C00DC
* 000A0000 000F0014
* 001E0000 007800B4
* 00000096 FF88001E
* 001EFFE2 00000000
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
