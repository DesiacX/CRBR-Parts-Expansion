######################################
Gemini Bomb B [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x11
.alias ModelID = 0x11
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Gemini Bomb P (CRBR)"
PartDescription:
    String|
"Ground fire: Launches a split 
bomb toward either side 
of your foe. 
Aerial fire: Launches a split 
bomb toward the front and 
back of your foe. 
Can launch two bombs at 
a time. 
Blast lingers for a while. 
Blows target sideways."
RoboBytes:
* 00020028 693C0000
* 00A00000 0101000F
* 003C0000 3E800000
* 3ECCCCCD 40F6147B
* 0028012C 0096005A
* 00140064 0096005A
* 00640000 FF380000
* 003CFFE2 00C80000
* 003C001E 00000000
* 00000000 00000000
* 00000000 643C0000
* 00B40000 0101000C
* 00370000 3E6B851F
* 3EC28F5C 411051EC
* 002800D2 0096005A
* 00140064 0096005A
* 00640000 0000FF10
* 003C0000 000000C8
* 00640000 00000000
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
