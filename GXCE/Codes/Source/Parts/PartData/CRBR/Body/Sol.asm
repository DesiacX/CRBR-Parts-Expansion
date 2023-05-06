######################################
Sol [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x05
.alias ModelID = 0x05
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Sol"
PartDescription:
    String|
"Aerial Beauty model. 
Very agile while airborne. 
Great at avoiding attacks but 
lacks power. 
Capable of two continuous 
jumps. 
Collision: Performs a slight
jump and attacks its opponent.
Able to clear walls."
RoboBytes:
half[1] |
800, #Down
byte[22] |
115, | #Defense
110, | #Knockback
100, | #Hitstun
0, | #Illegal Toggle
150, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
95, | #Gun Damage
95, | #Bomb Damage
95, | #Pod Damage
100, | #Gun Endlag
4, 8, 12, | #Reduced, Unmodified, and Boosted Air Dash Startup
2, 5, 10, | #Reduced, Unmodified, and Boosted Dash Landing Lag
1, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
50, 160, 264  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
150, 300, 396, | #Reduced, Unmodified, and Boosted Air Dash Speed
9, 18, 36, | #Reduced, Unmodified, and Boosted LS Dash Turning
50, 84, 101, | #Reduced, Unmodified, and Boosted Run Speed
96, 160, 256, | #Reduced, Unmodified, and Boosted Ground Acceleration
91, 181, 362, | #Reduced, Unmodified, and Boosted Ground Turning
86, 180, 270, | #Reduced, Unmodified, and Boosted Jump Height
2, 4, 12, | #Reduced, Unmodified, and Boosted Jump Speed
105, 110, 115, | #Reduced, Unmodified, and Boosted Lateral Air Speed
361, 722, 1444, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 22, | #Reduced, Unmodified, and Boosted Landing Lag
50, 115, 172, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x82A982A9, 0x82C6978E, 0x82B50000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
3, |    #Invulnerability
0       #Invisibility
half [16] |
117, |  #Charge Damage
220, |  #Knockback Velocity
10, |   #Knockback Angle
10, |   #Homing
11, |   #Startup Phase Duration (+3 for # of Frames)
12, |   #Attack Phase Duration (+1 for # of Frames)
35, |   #Recovery Phase Duration
160, |   #Startup Phase Speed
160, |  #Attack Phase Speed
80, |   #Recovery Phase Speed
50, |    #Startup Phase Angle
-50, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
60, |   #Hitbox Size Related
-75       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
117, |  #Charge Damage
125, |  #Knockback Velocity
25, |   #Knockback Angle
0, |   #Homing
15, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
120, |  #Attack Phase Speed
180, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
150, |    #Attack Phase Angle
-120, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
30, |   #Hitbox Size Related
0       #Hitbox Size Related
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
