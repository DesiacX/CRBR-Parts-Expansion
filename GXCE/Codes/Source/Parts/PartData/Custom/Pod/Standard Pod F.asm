######################################
Standard Pod F [Custom Robo Battle Revolution]
######################################
#Fixes an issue with the graphics in the original Standard Pod F by changing the Part Base to Standard Pod.
.alias PartType = 0x03
.alias PartBase = 0x00
.alias ModelID = 0x24
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Standard Pod F (CRBR)"
PartDescription:
    String|
"Features basic functions. 
Flies straight ahead. 
Can deploy two pods at one 
time. 
Blows target back on a low 
trajectory. 
Advisory: Trap your opponent 
by deploying one pod to either 
side."
RoboBytes:
* 00020100 00000064
* 0064005A 00000000
* 00000000 010A1E00
* 005A0087 000A000A
* 005A00FA 00000000
* 00050064 0032000A
* 00320064 0101000A
* 004B0000 3ECCCCCD
* 3ECCCCCD 41000000
* 001D012C 00640032
* 00140064 00640032
* 00640000 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 00000000
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
