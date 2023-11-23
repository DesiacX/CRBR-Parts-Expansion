######################################
Ground Legs [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x04
.alias PartBase = 0x02
.alias ModelID = 0x02
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Ground Legs (CRBR)"
PartDescription:
    String|
"Decreases jump interval. 
Enables sharp turning on the 
ground and in the air, but 
decreases jump height. 
Advisory: Use this set of 
legs when you want to shoot 
while making short jumps."
RoboBytes:
byte [16] |
0, | #Illegal Toggle 
100, | #Ground Speed
150, | #Ground Accel 
100, | #Ground Turning
50, | #Jump Height
200, | #Jump Speed 
1, | #Lateral Air Speed 
150, | #Air Accel 
1, | #Landing Lag 
100, | #Gravity 
100, | #Dash Startup 
1, | #Dash Landing Lag 
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
