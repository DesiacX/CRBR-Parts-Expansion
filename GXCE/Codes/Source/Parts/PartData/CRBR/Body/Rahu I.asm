######################################
Rahu I [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1E
.alias ModelID = 0x1E
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
"Rahu I^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A robo that was merged with
an unknown living being.
A Lightning Sky model with
upgraded ground mobility and
aerial abilities.
Collision: Charges straight
toward its opponent."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
100, | #Defense
120, | #Knockback
100, | #Hitstun
1, | #Illegal Toggle
150, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
100, | #Gun Damage
100, | #Bomb Damage
100, | #Pod Damage
100, | #Gun Endlag
1, 2, 6, | #Reduced, Unmodified, and Boosted Air Dash Startup
15, 20, 35, | #Reduced, Unmodified, and Boosted Dash Landing Lag
2, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
38, 120, 198  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
0, | #SV Air Dash Toggle
5, | #Air Dash Angle
90, 180, 240    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
120, 160, 180, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 15, 20, | #Reduced, Unmodified, and Boosted LS Dash Turning
62, 104, 116, | #Reduced, Unmodified, and Boosted Run Speed
108, 180, 350, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
160, 320, 480, | #Reduced, Unmodified, and Boosted Jump Height
4, 15, 30, | #Reduced, Unmodified, and Boosted Jump Speed
105, 115, 125, | #Reduced, Unmodified, and Boosted Lateral Air Speed
200, 400, 640, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 36, | #Reduced, Unmodified, and Boosted Landing Lag
25, 50, 80, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
72, | #Collision Box Size Related
40, | #????
28, | #Hurtbox Size
1 #????
word [8] |
0x83708393, 0x83608251, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
2       #Invisibility
half [16] |
144, |  #Charge Damage
220, |  #Knockback Velocity
95, |   #Knockback Angle
10, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
14, |   #Attack Phase Duration (+1 for # of Frames)
35, |   #Recovery Phase Duration
80, |   #Startup Phase Speed
240, |  #Attack Phase Speed
80, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-30       #Hitbox Size Related
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
byte [5] 5, 6, 5, 8, 9   #Stat Line
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
