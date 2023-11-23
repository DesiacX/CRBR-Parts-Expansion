######################################
Can Legs [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x04
.alias PartBase = 0x0A
.alias ModelID = 0x0A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Can Legs (CRBR)"
PartDescription:
    String|
"The weakest leg part. 
Weakens all abilities."
RoboBytes:
byte [16] |
0, | #Illegal Toggle 
90, | #Ground Speed
100, | #Ground Accel 
90, | #Ground Turning
90, | #Jump Height
90, | #Jump Speed 
1, | #Lateral Air Speed 
90, | #Air Accel 
90, | #Landing Lag 
90, | #Gravity 
90, | #Dash Startup 
90, | #Dash Landing Lag 
90, | #Continuous Jump Height 
90, | #Dash Duration 
90, | #Dash Speed 
0xFF  #Filler Data
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
