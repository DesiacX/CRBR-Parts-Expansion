######################################
Metal Ape [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x06
.alias ModelID = 0x06
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
"Metal Ape (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A Metal Grappler model. 
Strong on offense and 
defense. 
Poor mobility makes dodging 
attacks difficult. 
Air-dashes once. 
Collision: Rises diagonally 
and attacks."
RoboBytes:
half[1] |
1800, #Down
byte[22] |
90, | #Defense
110, | #Knockback
80, | #Hitstun
0, | #Illegal Toggle
150, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
105, | #Gun Damage
105, | #Bomb Damage
105, | #Pod Damage
100, | #Gun Endlag
2, 5, 9, | #Reduced, Unmodified, and Boosted Air Dash Startup
2, 5, 10, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
75, 120, 198  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
10, 17, 26    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
150, 300, 396, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 20, 40, | #Reduced, Unmodified, and Boosted LS Dash Turning
39, 65, 70, | #Reduced, Unmodified, and Boosted Run Speed
120, 200, 400, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
95, 190, 285, | #Reduced, Unmodified, and Boosted Jump Height
2, 5, 10, | #Reduced, Unmodified, and Boosted Jump Speed
100, 140, 180, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 500, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 36, | #Reduced, Unmodified, and Boosted Landing Lag
75, 150, 225, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
40, | #Collision Box Size Related
55, | #????
48, | #Hurtbox Size
1 #????
word [8] |
0x8389838A, 0x83418362, 0x83678FB8, 0x97B40000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
99, |  #Charge Damage
250, |  #Knockback Velocity
100, |   #Knockback Angle
100, |   #Homing
1, |   #Startup Phase Duration (+3 for # of Frames)
64, |   #Attack Phase Duration (+1 for # of Frames)
15, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
80, |  #Attack Phase Speed
66, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
30, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
90, |   #Hitbox Size Related
0, |   #Hitbox Size Related
-20       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
135, |  #Charge Damage
80, |  #Knockback Velocity
70, |   #Knockback Angle
0, |   #Homing
40, |   #Startup Phase Duration (+3 for # of Frames)
12, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
65186, |  #Attack Phase Speed
100, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
5, |    #Attack Phase Angle
-130, |  #Recovery Phase Angle
90, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 10, 8, 3, 3, 4   #Stat Line
byte [1] 0  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
