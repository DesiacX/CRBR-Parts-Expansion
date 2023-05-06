Athena [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x1D
.alias ModelID = 0x1D
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Athena^`"
PartDescription:
    String|
"Illegal part.
An Aerial Beauty model with 
upgraded aerial abilities 
and additional jumps. 
Collision: Ascends quickly."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
105, | #Defense
110, | #Knockback
100, | #Hitstun
1, | #Illegal Toggle
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
6    #Number of Continuous Jumps
half[3] |
50, 160, 264  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
150, 300, 396, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 20, 40, | #Reduced, Unmodified, and Boosted LS Dash Turning
48, 80, 96, | #Reduced, Unmodified, and Boosted Run Speed
96, 160, 256, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
86, 180, 270, | #Reduced, Unmodified, and Boosted Jump Height
2, 4, 12, | #Reduced, Unmodified, and Boosted Jump Speed
105, 110, 115, | #Reduced, Unmodified, and Boosted Lateral Air Speed
750, 1500, 3000, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 22, | #Reduced, Unmodified, and Boosted Landing Lag
50, 100, 172, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
7, |    #Invulnerability
0       #Invisibility
half [16] |
135, |  #Charge Damage
300, |  #Knockback Velocity
80, |   #Knockback Angle
20, |   #Homing
3, |   #Startup Phase Duration (+3 for # of Frames)
12, |   #Attack Phase Duration (+1 for # of Frames)
6, |   #Recovery Phase Duration
160, |   #Startup Phase Speed
160, |  #Attack Phase Speed
160, |   #Recovery Phase Speed
30, |    #Startup Phase Angle
90, |    #Attack Phase Angle
120, |  #Recovery Phase Angle
30, |   #Hitbox Size Related
30, |   #Hitbox Size Related
-30       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
108, |  #Charge Damage
220, |  #Knockback Velocity
10, |   #Knockback Angle
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
30, |   #Hitbox Size Related
30, |   #Hitbox Size Related
-30       #Hitbox Size Related
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
