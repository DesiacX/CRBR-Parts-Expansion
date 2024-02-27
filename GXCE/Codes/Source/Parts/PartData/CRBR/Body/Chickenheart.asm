######################################
Chickenheart [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x21
.alias ModelID = 0x21
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
"Chickenheart (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A Burning Beast model.
Excellent jump speed and
jump height.
Uses stealth function to
dodge fire while air-dashing.
Can only air-dash once, but
can glide for a long time.
Collision: Rises then quickly
descends, attacking its
opponent below. Ascends after
attacking."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
105, | #Defense
110, | #Knockback
80, | #Hitstun
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
8, 15, 23, | #Reduced, Unmodified, and Boosted Air Dash Startup
1, 2, 5, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
75, 120, 180  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
1, | #Number of Air Dashes
1, | #SV Air Dash Toggle
15, | #Air Dash Angle
12, 20, 30    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
130, 260, 312, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 20, 40, | #Reduced, Unmodified, and Boosted LS Dash Turning
39, 65, 70, | #Reduced, Unmodified, and Boosted Run Speed
120, 200, 400, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
160, 320, 480, | #Reduced, Unmodified, and Boosted Jump Height
1, 4, 8, | #Reduced, Unmodified, and Boosted Jump Speed
100, 140, 180, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 500, | #Reduced, Unmodified, and Boosted Air Acceleration
1, 5, 15, | #Reduced, Unmodified, and Boosted Landing Lag
75, 150, 225, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
40, | #Collision Box Size Related
55, | #????
48, | #Hurtbox Size
1 #????
word [8] |
0x9056837A, 0x83808389, 0x926E8FE3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
108, |  #Charge Damage
150, |  #Knockback Velocity
50, |   #Knockback Angle
20, |   #Homing
14, |   #Startup Phase Duration (+3 for # of Frames)
10, |   #Attack Phase Duration (+1 for # of Frames)
5, |   #Recovery Phase Duration
200, |   #Startup Phase Speed
320, |  #Attack Phase Speed
200, |   #Recovery Phase Speed
70, |    #Startup Phase Angle
-50, |    #Attack Phase Angle
70, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
30, |   #Hitbox Size Related
-20       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
126, |  #Charge Damage
180, |  #Knockback Velocity
80, |   #Knockback Angle
0, |   #Homing
15, |   #Startup Phase Duration (+3 for # of Frames)
15, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
180, |   #Startup Phase Speed
180, |  #Attack Phase Speed
180, |   #Recovery Phase Speed
120, |    #Startup Phase Angle
-150, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-50       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 5, 3, 7, 9   #Stat Line
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
