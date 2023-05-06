######################################
Swift [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x09
.alias ModelID = 0x09
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Switft"
PartDescription:
    String|
"A Little Raider model. 
Extremely agile while on 
the ground. 
Poor defense allows foes 
to knock it down easily. 
Can jump up to three times. 
Collision: Charges toward its 
opponent with a short jump. 
Able to clear walls."
RoboBytes:
half[1] |
200, #Down
byte[22] |
125, | #Defense
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
4, 8, 17, | #Reduced, Unmodified, and Boosted LS Dash Turning
59, 99, 110, | #Reduced, Unmodified, and Boosted Run Speed
189, 315, 504, | #Reduced, Unmodified, and Boosted Ground Acceleration
44, 88, 176, | #Reduced, Unmodified, and Boosted Ground Turning
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
0x82BF82D1, 0x8E7193AA, 0x93CB82AB, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
90, |  #Charge Damage
120, |  #Knockback Velocity
110, |   #Knockback Angle
10, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
24, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
223, |   #Startup Phase Speed
146, |  #Attack Phase Speed
80, |   #Recovery Phase Speed
63, |    #Startup Phase Angle
-35, |    #Attack Phase Angle
0, |  #Recovery Phase Angle
35, |   #Hitbox Size Related
10, |   #Hitbox Size Related
-10       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
90, |  #Charge Damage
120, |  #Knockback Velocity
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
50, |   #Hitbox Size Related
0, |   #Hitbox Size Related
-10       #Hitbox Size Related
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
