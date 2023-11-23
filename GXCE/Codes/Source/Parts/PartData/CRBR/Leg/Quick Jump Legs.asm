######################################
Quick Jump Legs [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x04
.alias PartBase = 0x07
.alias ModelID = 0x07
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Quick Jump Legs (CRBR)"
PartDescription:
    String|
"Augments descent abilities. 
Makes you less vulnerable 
to attacks when landing. 
Advisory: Use this set of 
legs when you don't want to 
stay in the air for long."
RoboBytes:
byte [16] |
0, | #Illegal Toggle 
100, | #Ground Speed
100, | #Ground Accel 
100, | #Ground Turning
100, | #Jump Height
100, | #Jump Speed 
1, | #Lateral Air Speed 
100, | #Air Accel 
50, | #Landing Lag 
200, | #Gravity 
100, | #Dash Startup 
50, | #Dash Landing Lag 
100, | #Continuous Jump Height 
100, | #Dash Duration 
100, | #Dash Speed 
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
