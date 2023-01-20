######################################
Knuckle Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x1A
.alias ModelID = 0x1A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Knuckle Gun"
PartDescription:
    String|
"Fires extremely short- 
range rounds. 
Ground fire: Blows your 
opponent upward. 
Aerial fire: Blows your 
opponent far away. 
Range: short. 
Advisory: The gun is powerful 
but difficult to hit with. 
Stop your opponent with 
a bomb or pod, then fire."
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
* 00000000 00190000
* 3E6147AE 3C23D70A
* 3C23D70A 3E99999A
* 0000001C 0118000A
* 00000014 00640064
* 00230064 009D0000
* 3E6147AE 00000000
* 00000000 3E99999A
* 00000014 00C8000A
* 00000005 00640064
* 00230064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
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
* 00000000 00190000
* 3E2E147B 3C23D70A
* 3C23D70A 3E99999A
* 0000001C 00FA000A
* 00000014 00640064
* 00190064 00D20000
* 3E2E147B 00000000
* 00000000 3E99999A
* 00000014 00C8000A
* 00000005 00640064
* 00190064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 DEADBEAF
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
