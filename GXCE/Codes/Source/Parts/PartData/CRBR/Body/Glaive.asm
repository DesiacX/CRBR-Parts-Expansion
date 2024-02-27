######################################
Glaive [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0D
.alias ModelID = 0x0D
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
"Glaive (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A Strike Vanisher model. 
Uses stealth function to 
dodge fire while air-dashing. 
Slow while on the ground. 
Can air-dash up to three times. 
Collision: Jumps toward its 
opponent then drifts 
backward."
RoboBytes:
half[1] |
1000, #Down
byte[22] |
95, | #Defense
100, | #Knockback
100, | #Hitstun
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
1, 2, 3, | #Reduced, Unmodified, and Boosted Air Dash Startup
5, 15, 30, | #Reduced, Unmodified, and Boosted Dash Landing Lag
0, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
100, 160, 262  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
3, | #Number of Air Dashes
1, | #SV Air Dash Toggle
0, | #Air Dash Angle
7, 13, 20    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
135, 270, 356, | #Reduced, Unmodified, and Boosted Air Dash Speed
8, 16, 33, | #Reduced, Unmodified, and Boosted LS Dash Turning
43, 71, 85, | #Reduced, Unmodified, and Boosted Run Speed
90, 150, 240, | #Reduced, Unmodified, and Boosted Ground Acceleration
84, 168, 336, | #Reduced, Unmodified, and Boosted Ground Turning
67, 140, 210, | #Reduced, Unmodified, and Boosted Jump Height
4, 8, 16, | #Reduced, Unmodified, and Boosted Jump Speed
120, 160, 200, | #Reduced, Unmodified, and Boosted Lateral Air Speed
100, 200, 400, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 40, | #Reduced, Unmodified, and Boosted Landing Lag
40, 80, 120, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x83848343, 0x836F8F52, 0x82E882A0, 0x82B00000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
99, |  #Charge Damage
180, |  #Knockback Velocity
60, |   #Knockback Angle
10, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
8, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
120, |   #Startup Phase Speed
240, |  #Attack Phase Speed
80, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
45, |    #Attack Phase Angle
160, |  #Recovery Phase Angle
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
75, |   #Knockback Angle
0, |   #Homing
15, |   #Startup Phase Duration (+3 for # of Frames)
5, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
180, |   #Startup Phase Speed
220, |  #Attack Phase Speed
220, |   #Recovery Phase Speed
100, |    #Startup Phase Angle
-120, |    #Attack Phase Angle
-100, |  #Recovery Phase Angle
40, |   #Hitbox Size Related
20, |   #Hitbox Size Related
-50       #Hitbox Size Related
ExtraBytes:
byte [5] 5, 7, 3, 4, 4   #Stat Line
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
