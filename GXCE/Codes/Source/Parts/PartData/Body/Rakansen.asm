Rakansen [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1B
.alias ModelID = 0x1B
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Rakansen^"
PartDescription:
    String|
"Illegal part.
A Strike Vanisher model with 
better ground mobility and 
more air-dashes. 
Collision: Ascends backward 
then immediately charges 
straight at its opponent."
RoboBytes:
* 03E86964 64019639
* 1E32321E 64646464
* 01020304 08100002
* 006400A0 01080501
* FB060A10 0087010E
* 01640007 000F001E
* 0039005F 0071005A
* 009600F0 004C0098
* 01300078 00FA0177
* 00040008 00100064
* 008C00B4 00320064
* 0145000A 00140028
* 0037006E 00A50030
* 00320032 00280001
* 8E638965 8C9D0000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 03000087 0064003C
* 0014000A 0014001E
* 00C8015E 00000087
* FFECFFA6 003C0014
* FFD88354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700B4
* 004B0000 000F0005
* 001E00B4 00DC00DC
* 0064FF88 FF9C0028
* 0014FFCE 00000000
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
