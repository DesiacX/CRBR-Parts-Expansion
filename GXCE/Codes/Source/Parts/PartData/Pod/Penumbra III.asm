######################################
Penumbra III Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x2B
.alias ModelID = 0x2B
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Penumbra III^"
PartDescription:
    String|
"A pod that was merged with 
an unknown living being. 
A Penumbra ll with 
upgraded firepower, faster 
speed, and more rounds. 
Can deploy three pods at 
one time. 
Blows target upward."
RoboBytes:
* 01030100 00000046
* 012C01E0 00000000
* 00000000 011E1E00
* 0046003C 00000000
* 005A012C 00050000
* 00050064 0064000A
* 001E0064 01010005
* 00130000 3F800000
* 3F99999A 405C28F6
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