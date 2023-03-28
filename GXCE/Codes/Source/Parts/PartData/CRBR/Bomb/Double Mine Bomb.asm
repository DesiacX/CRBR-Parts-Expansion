######################################
Dobule Mine Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x1C
.alias ModelID = 0x1C
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Double Mine Bomb"
PartDescription:
    String|
"Launches and splits to the 
left and right sides. 
Explodes after a short 
period of time if it 
lands on the ground. 
Launches two bombs at a time. 
Blows target diagonally 
upward. 
Advisory: Try to cover the 
area near your foe in bombs."
RoboBytes:
* 00020050 4150F000
* 00A00000 01010010
* 00140000 3F547AE1
* 3F947AE1 3F170A3D
* 001E0064 00780046
* 001E0064 00780046
* 00640000 FF6A0000
* 00000000 00960000
* 00000000 00000000
* 00000000 00000000
* 00000000 41507800
* 00B40000 0101000E
* 00120000 3F547AE1
* 3F947AE1 3F170A3D
* 001E0064 00780046
* 001E0064 00780046
* 00640000 FED40000
* 00000000 012C0000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 DEADBEEF
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
