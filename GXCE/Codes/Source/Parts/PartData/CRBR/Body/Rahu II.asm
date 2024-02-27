######################################
Rahu II [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1F
.alias ModelID = 0x1F
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
"Rahu II^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A robo that was merged
with an unknown living
being.
An evolved version of
Rahu I with upgraded
defensive abilities and
ground mobility.
Collision: Ascends backward
then immediately charges
forward."
RoboBytes:
half[1] |
1200, #Down
byte[22] |
100, | #Defense
0, | #Knockback
0, | #Hitstun
1, | #Illegal Toggle
45, | #Time Spent Down without Mashing
15, | #Time Spent Down with Mashing
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
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
251, | #Air Dash Angle
40, 90, 120    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
120, 160, 180, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 15, 20, | #Reduced, Unmodified, and Boosted LS Dash Turning
72, 114, 126, | #Reduced, Unmodified, and Boosted Run Speed
189, 315, 504, | #Reduced, Unmodified, and Boosted Ground Acceleration
200, 300, 500, | #Reduced, Unmodified, and Boosted Ground Turning
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
0x8E638965, 0x8C9D0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
3, |    #Invulnerability
0       #Invisibility
half [16] |
163, |  #Charge Damage
100, |  #Knockback Velocity
60, |   #Knockback Angle
20, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
200, |   #Startup Phase Speed
350, |  #Attack Phase Speed
0, |   #Recovery Phase Speed
135, |    #Startup Phase Angle
-20, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
60, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-40       #Hitbox Size Related
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
byte [5] 7, 6, 5, 9, 10   #Stat Line
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
