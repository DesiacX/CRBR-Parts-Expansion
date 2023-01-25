######################################
Cockroach Pod G [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
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
"Cockroach Pod G"
PartDescription:
    String|
"Normally flies slowly but 
quickly increases its speed 
when it spots its target. 
Can deploy two pods at one 
time. 
Blows target upward. 
Advisory: Deploy one pod left 
and one pod right to trap 
your opponent."
RoboBytes:
* 00020100 00000064
* 006E006E 00000000
* 00000000 010F0A00
* 002800C8 000A000A
* 005A0190 00000000
* 00050064 0064000A
* 001E0064 01010005
* 00130000 3F400000
* 3F59999A 405C28F6
* 001A012C 0096005A
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
