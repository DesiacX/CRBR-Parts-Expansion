######################################
Ultimate Legs [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x04
.alias PartBase = 0x0F
.alias ModelID = 0x0F
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
    .BA<-BuildTitle
PartName:
    String|
"Ultimate Legs^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A leg part that was merged 
with an unknown living being. 
Upgrades all abilities."
RoboBytes:
byte [16] |
1, | #Illegal Toggle 
200, | #Ground Speed
200, | #Ground Accel 
200, | #Ground Turning
100, | #Jump Height
100, | #Jump Speed 
200, | #Lateral Air Speed 
200, | #Air Accel 
1, | #Landing Lag 
100, | #Gravity 
1, | #Dash Startup 
100, | #Dash Landing Lag 
200, | #Continuous Jump Height 
100, | #Dash Duration 
200, | #Dash Speed 
0xFF  #Filler Data
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
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
