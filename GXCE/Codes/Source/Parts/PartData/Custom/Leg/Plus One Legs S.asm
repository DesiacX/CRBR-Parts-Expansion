######################################
Plus One Legs S [CRBR Parts Expansion, de, DesiacX]
######################################
.alias PartType = 0x04
.alias PartBase = 0x10
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
"Plus One Legs S (DXE)"
PartDescription:
    String|
"A variant of the Standard
Legs that adds an extra jump.
Features no other special 
characteristics. 
Possesses no ascent or 
descent augmentation."
RoboBytes:
byte [16] |
00, | #Illegal Toggle 
100, | #Ground Speed
100, | #Ground Accel 
100, | #Ground Turning
100, | #Jump Height
100, | #Jump Speed 
1, | #Lateral Air Speed 
100, | #Air Accel 
100, | #Landing Lag 
100, | #Gravity 
100, | #Dash Startup 
100, | #Dash Landing Lag 
100, | #Continuous Jump Height 
100, | #Dash Duration 
100, | #Dash Speed 
0xFF #Filler Data
ExtraBytes:
byte [5] 10, 10, 2, 10, 10   #Stat Line
word [3] 0x20284458, 0x45290000, 0x00000000 #Build Code
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
