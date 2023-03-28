Ray Legend [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x18
.alias ModelID = 0x18
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Ray Legend^`"
PartDescription:
    String|
"An obsolete version of Ray 
created during the early years 
of custom robo. 
Imbalanced with good offense 
and poor defense. 
Collision: Attacks by 
jumping backwards."
RoboBytes:
* 0320A064 64016439
* 50505050 9696965A
* 01020305 0F1E0002
* 006400A0 01080600
* FB030709 00C80190
* 01F4000A 00140028
* 00300050 0060005A
* 009600F0 006400C8
* 01900078 00FA0177
* 00040008 00100064
* 008C00B4 00320064
* 0145000A 00140028
* 00320064 00960023
* 00320028 001E0000
* 83708393 83608251
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 03000075 00DC0028
* 000F0004 000D001E
* 005000B4 00B40000
* 008CFF88 00280028
* FFE28354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000B00 008700B4
* 00500000 000F000F
* 001E00B4 00B400B4
* 0078FF6A FFA60028
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
