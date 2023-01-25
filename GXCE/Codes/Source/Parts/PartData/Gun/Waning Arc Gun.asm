######################################
Waning Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x30
.alias ModelID = 0x30
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Waning Gun^"
PartDescription:
    String|
"Illegal part. 
A Right Arc Gun with 
additional rounds and 
a homing device. 
Fires four rounds that 
start right then curve 
at an angle. 
The rounds turn in 
the opposite direction when 
fired from the air. 
Range: medium-long. "
RoboBytes:
* 010A0000 00000001
* DC64DCFF 87239B3F
* DC64DCFF FFFFFFFF
* 00000006 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05040101
* 0A280000 00001555
* 00000000 000D0000
* 3E6147AE 00000000
* 00000000 3EB33333
* 05000028 012C000A
* 00000014 00640064
* 00230064 00050000
* 3A83126F 3F800000
* 3E4CCCCD 3EB33333
* 0500001B 012C000A
* 00000014 00640064
* 00230064 006A0000
* 3EB33333 3C23D70A
* 3C23D70A 3EB33333
* 0500001B 012C000A
* 00000014 00640064
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
* 00000000 0A040101
* 0A2D0000 0000EAAB
* 00000000 000D0000
* 3E6147AE 00000000
* 00000000 3EB33333
* 05000028 012C000A
* 00000014 00640064
* 00230064 00050000
* 3A83126F 3F800000
* 3E4CCCCD 3EB33333
* 0500001C 012C000A
* 00000014 00640064
* 00230064 006A0000
* 3EB33333 3C23D70A
* 3C23D70A 3EB33333
* 0500001C 012C000A
* 00000014 00640064
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