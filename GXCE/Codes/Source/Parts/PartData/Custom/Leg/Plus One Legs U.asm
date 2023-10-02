######################################
Plus One Legs U [CRBR Parts Expansion, de, DesiacX]
######################################
.alias PartType = 0x04
.alias PartBase = 0x10
.alias ModelID = 0x0F
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Plus One Legs U^` (DXE)"
PartDescription:
    String|
"A leg part that was merged 
with a living being known to 
jump one extra time. 
Upgrades all abilities."
RoboBytes:
* 01C8C8C8 6464C8C8
* 01640164 C864C8FF
ExtraBytes:
byte [5] 10, 10, 2, 10, 10   #Stat Line
word [3] 0x20284458, 0x45290000, 0x00000000 #Build Code
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
