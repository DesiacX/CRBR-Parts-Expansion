######################################
Defender [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x12
.alias ModelID = 0x12
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
"Defender (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A Lightning Sky model. 
Can attack and change 
direction while air-dashing. 
Slow in all movements 
besides air-dashes. 
Performs only a single 
long-range air-dash and 
slowly descends. 
Collision: Slowly charges 
toward its opponent."
RoboBytes:
half[1] |
600, #Down
byte[22] |
120, | #Defense
120, | #Knockback
100, | #Hitstun
0, | #Illegal Toggle
170, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
40, | #Damage taken from guns when downed
55, | #Damage taken from bombs when downed
55, | #Damage taken from pods when downed
40, | #Damage taken from charges when downed
100, | #Gun Damage
100, | #Bomb Damage
100, | #Pod Damage
110, | #Gun Endlag
1, 2, 6, | #Reduced, Unmodified, and Boosted Air Dash Startup
15, 20, 30, | #Reduced, Unmodified, and Boosted Dash Landing Lag
2, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
38, 120, 198  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
5, | #Air Dash Angle
30, 95, 158    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
120, 150, 170, | #Reduced, Unmodified, and Boosted Air Dash Speed
12, 15, 18, | #Reduced, Unmodified, and Boosted LS Dash Turning
30, 50, 60, | #Reduced, Unmodified, and Boosted Run Speed
108, 180, 350, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
160, 290, 420, | #Reduced, Unmodified, and Boosted Jump Height
2, 4, 12, | #Reduced, Unmodified, and Boosted Jump Speed
95, 105, 115, | #Reduced, Unmodified, and Boosted Lateral Air Speed
80, 150, 300, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 36, | #Reduced, Unmodified, and Boosted Landing Lag
75, 150, 225, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
72, | #Collision Box Size Related
40, | #????
28, | #Hurtbox Size
0 #????
word [8] |
0x82BF82D1, 0x93AA93CB, 0x82AB0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
144, |  #Charge Damage
200, |  #Knockback Velocity
70, |   #Knockback Angle
100, |   #Homing
5, |   #Startup Phase Duration (+3 for # of Frames)
120, |   #Attack Phase Duration (+1 for # of Frames)
38, |   #Recovery Phase Duration
10, |   #Startup Phase Speed
40, |  #Attack Phase Speed
140, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-60, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
10, |   #Hitbox Size Related
-20       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
1       #Invisibility
half [16] |
135, |  #Charge Damage
200, |  #Knockback Velocity
105, |   #Knockback Angle
0, |   #Homing
20, |   #Startup Phase Duration (+3 for # of Frames)
15, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
110, |   #Startup Phase Speed
120, |  #Attack Phase Speed
40, |   #Recovery Phase Speed
120, |    #Startup Phase Angle
-160, |    #Attack Phase Angle
-120, |  #Recovery Phase Angle
70, |   #Hitbox Size Related
10, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 3, 3, 3, 8, 9   #Stat Line
byte [1] 3  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
