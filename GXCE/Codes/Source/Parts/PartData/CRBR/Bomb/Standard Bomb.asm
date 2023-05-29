######################################
Standard Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x00
.alias ModelID = 0x00
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Standard Bomb (CRBR)"
PartDescription:
    String|
"Features basic functions. 
Flies straight toward 
target. 
Launches one bomb at 
a time. 
Blows target back 
diagonally. 
Advisory: Launch as often 
as possible so your 
opponent cannot hide 
behind the walls."
RoboBytes:
* 0001005A 5A5A0000
* 00A00000 01010010
* 00140000 3F800000
* 3F933333 3F170A3D
* 00440258 00780046
* 001E0064 00780046
* 00640000 00000000
* 00640000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 555A0000
* 00B40000 0101000E
* 00120000 3F733333
* 3F8F5C29 3F170A3D
* 003501A4 00780046
* 001E0064 00780046
* 00640000 00000000
* 00000000 00000000
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
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
