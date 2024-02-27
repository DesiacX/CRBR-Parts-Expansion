Ray Warrior [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1A
.alias ModelID = 0x1A
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
"Ray Warrior^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"IIllegal part. 
A Shining Fighter model with 
upgraded offense and 
defense. 
Collision: Stops in place 
then charges toward its 
opponent."
RoboBytes:
half[1] |
1500, #Down
byte[22] |
85, | #Defense
100, | #Knockback
100, | #Hitstun
1, | #Illegal Toggle
150, | #Time Spent Down without Mashing
57, | #Time Spent Down with Mashing
30, | #Damage taken from guns when downed
50, | #Damage taken from bombs when downed
50, | #Damage taken from pods when downed
30, | #Damage taken from charges when downed
110, | #Gun Damage
110, | #Bomb Damage
110, | #Pod Damage
100, | #Gun Endlag
3, 6, 10, | #Reduced, Unmodified, and Boosted Air Dash Startup
5, 15, 30, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
100, 160, 264  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15    #Reduced, Unmodified, and Boosted Air Dash Length
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
0x835E8362, 0x834E838B, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
3, |    #Invulnerability
0       #Invisibility
half [16] |
162, |  #Charge Damage
400, |  #Knockback Velocity
7, |   #Knockback Angle
20, |   #Homing
30, |   #Startup Phase Duration (+3 for # of Frames)
8, |   #Attack Phase Duration (+1 for # of Frames)
5, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
350, |  #Attack Phase Speed
0, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
0, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
70, |   #Hitbox Size Related
0, |   #Hitbox Size Related
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
byte [5] 9, 9, 5, 5, 10   #Stat Line
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
