######################################
Reflection Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x19
.alias ModelID = 0x19
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Reflection Pod (CRBR)"
PartDescription:
    String|
"Doesn't chase your opponent, 
but travels around for a 
long period of time. 
Can deploy three pods at one 
time. 
Blows target diagonally 
upward. 
Advisory: Constantly scatter 
three pods around the arena."
RoboBytes:
* 00010300 005A0055
* 005500F0 00000000
* 00000000 01000000
* 00500032 000A000A
* 00FA015E 00000000
* 00050064 0064001E
* 00320164 01010009
* 00220000 3F4CCCCD
* 3F666666 3F170A3D
* 0023012C 00640032
* 00050064 00640032
* 00640000 00000001
* FFFFFF7F 7FFF7FFF
* FFFFFF7F FFFFFFFF
* 0000000A 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3E4CCCCD 00000000
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
