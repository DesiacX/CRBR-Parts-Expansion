Ray Legend [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x18
.alias ModelID = 0x18
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
"Ray Legend^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"An obsolete version of Ray 
created during the early years 
of custom robo. 
Imbalanced with good offense 
and poor defense. 
Collision: Attacks by 
jumping backwards."
RoboBytes:
half[1] |
800, #Down
byte[22] |
160, | #Defense
100, | #Knockback
100, | #Hitstun
1, | #Illegal Toggle
100, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
80, | #Damage taken from guns when downed
80, | #Damage taken from bombs when downed
80, | #Damage taken from pods when downed
80, | #Damage taken from charges when downed
150, | #Gun Damage
150, | #Bomb Damage
150, | #Pod Damage
90, | #Gun Endlag
1, 2, 3, | #Reduced, Unmodified, and Boosted Air Dash Startup
5, 15, 30, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
100, 160, 264  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
6, | #Number of Air Dashes
0, | #SV Air Dash Toggle
251, | #Air Dash Angle
3, 7, 9    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
200, 400, 500, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 20, 40, | #Reduced, Unmodified, and Boosted LS Dash Turning
48, 80, 96, | #Reduced, Unmodified, and Boosted Run Speed
90, 150, 240, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
120, 250, 375, | #Reduced, Unmodified, and Boosted Jump Height
4, 8, 16, | #Reduced, Unmodified, and Boosted Jump Speed
100, 140, 180, | #Reduced, Unmodified, and Boosted Lateral Air Speed
50, 100, 325, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 40, | #Reduced, Unmodified, and Boosted Landing Lag
50, 100, 150, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
0 #????
word [8] |
0x83708393, 0x83608251, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
3, |    #Invulnerability
0       #Invisibility
half [16] |
117, |  #Charge Damage
220, |  #Knockback Velocity
40, |   #Knockback Angle
15, |   #Homing
4, |   #Startup Phase Duration (+3 for # of Frames)
13, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
80, |   #Startup Phase Speed
180, |  #Attack Phase Speed
180, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
140, |    #Attack Phase Angle
-120, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
40, |   #Hitbox Size Related
-30       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
135, |  #Charge Damage
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
0       #Hitbox Size Related
ExtraBytes:
byte [5] 4, 1, 10, 10, 6   #Stat Line
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
