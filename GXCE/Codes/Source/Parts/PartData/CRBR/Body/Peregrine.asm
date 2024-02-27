######################################
Peregrine [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x0B
.alias ModelID = 0x0B
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
"Peregrine (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"A Little Raider model. 
Extremely agile while on 
the ground. 
Poor defense allows foes 
to knock it down easily. 
Can jump up to three times. 
Collision: Charges straight 
toward its opponent."
RoboBytes:
half[1] |
200, #Down
byte[22] |
130, | #Defense
120, | #Knockback
90, | #Hitstun
0, | #Illegal Toggle
150, | #Time Spent Down without Mashing
34, | #Time Spent Down with Mashing
50, | #Damage taken from guns when downed
60, | #Damage taken from bombs when downed
60, | #Damage taken from pods when downed
50, | #Damage taken from charges when downed
95, | #Gun Damage
95, | #Bomb Damage
95, | #Pod Damage
100, | #Gun Endlag
3, 5, 9, | #Reduced, Unmodified, and Boosted Air Dash Startup
3, 10, 20, | #Reduced, Unmodified, and Boosted Dash Landing Lag
1, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
3    #Number of Continuous Jumps
half[3] |
44, 140, 192  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
11, 23, 46    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
65, 130, 171, | #Reduced, Unmodified, and Boosted Air Dash Speed
4, 9, 18, | #Reduced, Unmodified, and Boosted LS Dash Turning
62, 104, 116, | #Reduced, Unmodified, and Boosted Run Speed
189, 315, 504, | #Reduced, Unmodified, and Boosted Ground Acceleration
42, 84, 167, | #Reduced, Unmodified, and Boosted Ground Turning
106, 180, 270, | #Reduced, Unmodified, and Boosted Jump Height
3, 5, 10, | #Reduced, Unmodified, and Boosted Jump Speed
100, 120, 140, | #Reduced, Unmodified, and Boosted Lateral Air Speed
170, 340, 720, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 36, | #Reduced, Unmodified, and Boosted Landing Lag
35, 70, 119, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
120, | #Collision Box Size Related
40, | #????
18, | #Hurtbox Size
0 #????
word [8] |
0x82BF82D1, 0x93AA93CB, 0x82AB0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
112, |  #Charge Damage
170, |  #Knockback Velocity
80, |   #Knockback Angle
0, |   #Homing
5, |   #Startup Phase Duration (+3 for # of Frames)
33, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
120, |   #Startup Phase Speed
120, |  #Attack Phase Speed
30, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
10, |    #Attack Phase Angle
-30, |  #Recovery Phase Angle
35, |   #Hitbox Size Related
30, |   #Hitbox Size Related
-30       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
90, |  #Charge Damage
200, |  #Knockback Velocity
20, |   #Knockback Angle
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
20, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 1, 1, 9, 5, 5   #Stat Line
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
