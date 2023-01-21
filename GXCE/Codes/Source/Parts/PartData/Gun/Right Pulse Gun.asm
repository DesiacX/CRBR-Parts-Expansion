######################################
Right Pulse Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x23
.alias ModelID = 0x23
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Right Pulse Gun"
PartDescription:
    String|
"Fires eight rounds that 
start right then turn 
left. 
Firing direction reverses 
when shot from the air. 
Range: medium. 
Advisory: Since the rounds 
bend, hide behind a wall 
and fire."
RoboBytes:
* 000A0000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05080101
* 04280000 00002000
* 00000000 00050000
* 3E99999A 00000000
* 00000000 3DCCCCCD
* 00000009 0096000A
* 0000000A 00640050
* 001E0064 00050000
* 3E99999A 3E99999A
* 3D23D70A 3E19999A
* 00000009 0096000A
* 0000000A 00640050
* 001E0064 00030000
* 3E99999A 3E3851EC
* 3D23D70A 3DCCCCCD
* 00000009 0096000A
* 00000005 00640050
* 001E0064 00060000
* 3E99999A 3D23D70A
* 3D23D70A 3DCCCCCD
* 0000000C 00960000
* 00000005 00640050
* 001E0064 00050000
* 3E99999A 3C23D70A
* 3C23D70A 3E19999A
* 0000000E 00960000
* 00000005 00640050
* 001E0064 05080101
* 04280000 0000E000
* 00000000 00050000
* 3E99999A 00000000
* 00000000 3DCCCCCD
* 00000009 0096000A
* 0000000A 00640050
* 001E0064 00050000
* 3E99999A 3E99999A
* 3D23D70A 3DCCCCCD
* 00000009 0096000A
* 0000000A 00640050
* 001E0064 00030000
* 3E99999A 3E3851EC
* 3D23D70A 3DCCCCCD
* 00000009 0096000A
* 00000005 00640050
* 001E0064 00060000
* 3E99999A 3D23D70A
* 3D23D70A 3DCCCCCD
* 0000000C 00960000
* 00000005 00640050
* 001E0064 00050000
* 3E99999A 3C23D70A
* 3C23D70A 3DCCCCCD
* 0000000E 00960000
* 00000005 00640050
* 001E0064 DEADBEEF
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
