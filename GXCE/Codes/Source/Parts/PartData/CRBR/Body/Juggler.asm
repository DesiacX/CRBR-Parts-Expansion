######################################
Juggler [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x11
.alias ModelID = 0x11
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
"Juggler (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A Trick Flyer model. 
Very agile while airborne. 
Extremely slow on the ground. 
Can perform up to three 
short-range, but elaborate, 
air-dashes. 
Collision: Rises diagonally 
and immediately drops down, 
damaging its opponent below."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
110, | #Defense
120, | #Knockback
110, | #Hitstun
0, | #Illegal Toggle
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
4, 7, 13, | #Reduced, Unmodified, and Boosted Air Dash Startup
8, 15, 30, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
63, 100, 165  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
3, | #Number of Air Dashes
0, | #SV Air Dash Toggle
251, | #Air Dash Angle
2, 5, 8    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
200, 400, 660, | #Reduced, Unmodified, and Boosted Air Dash Speed
7, 15, 30, | #Reduced, Unmodified, and Boosted LS Dash Turning
39, 65, 78, | #Reduced, Unmodified, and Boosted Run Speed
81, 135, 250, | #Reduced, Unmodified, and Boosted Ground Acceleration
75, 150, 300, | #Reduced, Unmodified, and Boosted Ground Turning
101, 210, 315, | #Reduced, Unmodified, and Boosted Jump Height
2, 12, 24, | #Reduced, Unmodified, and Boosted Jump Speed
100, 110, 120, | #Reduced, Unmodified, and Boosted Lateral Air Speed
788, 1575, 3150, | #Reduced, Unmodified, and Boosted Air Acceleration
8, 15, 27, | #Reduced, Unmodified, and Boosted Landing Lag
50, 100, 180, | #Reduced, Unmodified, and Boosted Gravity
40, | #Collision Box Size Related
50, | #Collision Box Size Related
45, | #????
50, | #Hurtbox Size
1 #????
word [8] |
0x8BF390E4, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
108, |  #Charge Damage
180, |  #Knockback Velocity
120, |   #Knockback Angle
40, |   #Homing
1, |   #Startup Phase Duration (+3 for # of Frames)
28, |   #Attack Phase Duration (+1 for # of Frames)
49, |   #Recovery Phase Duration
2000, |   #Startup Phase Speed
236, |  #Attack Phase Speed
80, |   #Recovery Phase Speed
68, |    #Startup Phase Angle
-75, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
50, |   #Hitbox Size Related
0, |   #Hitbox Size Related
-50       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
2       #Invisibility
half [16] |
0, |  #Charge Damage
160, |  #Knockback Velocity
60, |   #Knockback Angle
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
50, |   #Hitbox Size Related
0, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 4, 3, 9, 5   #Stat Line
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
