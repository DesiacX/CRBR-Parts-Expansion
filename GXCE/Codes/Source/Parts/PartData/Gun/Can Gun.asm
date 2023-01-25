######################################
Can Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x21
.alias ModelID = 0x21
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Can Gun"
PartDescription:
    String|
"The weakest gun, this model is 
a weaker version of the 
Basic gun. 
Fires three rounds in a 
straight line. 
Rounds become small after 
leaving the gun. 
Aerial and ground shots are 
the same. 
Range: medium."
RoboBytes:
* 000A0100 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05030100
* 0A280000 00000000
* 00000000 00160000
* 3E6147AE 3C23D70A
* 3C23D70A 3ECCCCCD
* 0000001C 0118000A
* 001E0014 00640064
* 00230064 00140000
* 3E6147AE 00000000
* 00000000 3E19999A
* 00000007 00C8000A
* 001E0005 00640064
* 00230064 00730000
* 3DF5C28F 00000000
* 00000000 3E19999A
* 00000007 00640000
* 001E0000 00640000
* 00000064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 05030100
* 0A320000 00000000
* 00000000 00160000
* 3E2E147B 3C23D70A
* 3C23D70A 3ECCCCCD
* 0000001C 00FA000A
* 001E0014 00640064
* 00190064 00140000
* 3E2E147B 00000000
* 00000000 3E19999A
* 00000007 00C8000A
* 001E0005 00640064
* 00190064 00730000
* 3DE147AE 00000000
* 00000000 3E19999A
* 00000007 00640000
* 001E0000 00640000
* 00000064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 DEADBEEF
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