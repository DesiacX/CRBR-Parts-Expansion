######################################
Wall Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
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
"Wall Pod"
PartDescription:
    String|
"Deploys three horizontal 
blasts in front of you. 
Can deploy three pods 
at one time. 
Blows target diagonally 
upward. 
Advisory: Aim it straight 
at your opponents when 
they charge."
RoboBytes:
* 00010300 0019003C
* 012C000F 00000000
* 00000000 010A0A00
* 00050005 000A000A
* 00000000 00000000
* FFE200E9 00E9000F
* 000F0064 0101000A
* 00460000 3EE66666
* 3F1EB852 40647AE1
* 0025012C 00960005
* 00140064 00960005
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
