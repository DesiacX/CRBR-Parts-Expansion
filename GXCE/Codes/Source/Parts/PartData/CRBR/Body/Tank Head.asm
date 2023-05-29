######################################
Tank Head [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x17
.alias ModelID = 0x17
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Tank Head (CRBR)"
PartDescription:
    String|
"A Funky Big Head model. 
Excellent at dodging attacks 
while airborne. 
Highly rated defense. 
Slow in all movements. 
Can perform two continuous 
jumps. 
Collision: Pounces from high 
in the air. 
Able to clear walls."
RoboBytes:
half[1] |
1200, #Down
byte[22] |
90, | #Defense
110, | #Knockback
80, | #Hitstun
0, | #Illegal Toggle
192, | #Time Spent Down without Mashing
54, | #Time Spent Down with Mashing
38, | #Damage taken from guns when downed
63, | #Damage taken from bombs when downed
63, | #Damage taken from pods when downed
35, | #Damage taken from charges when downed
100, | #Gun Damage
100, | #Bomb Damage
100, | #Pod Damage
100, | #Gun Endlag
3, 6, 11, | #Reduced, Unmodified, and Boosted Air Dash Startup
3, 5, 10, | #Reduced, Unmodified, and Boosted Dash Landing Lag
1, | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS)
2    #Number of Continuous Jumps
half[3] |
38, 120, 198  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
17, 33, 66    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
75, 150, 198, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 20, 40, | #Reduced, Unmodified, and Boosted LS Dash Turning
30, 50, 60, | #Reduced, Unmodified, and Boosted Run Speed
108, 180, 350, | #Reduced, Unmodified, and Boosted Ground Acceleration
100, 200, 400, | #Reduced, Unmodified, and Boosted Ground Turning
126, 263, 394, | #Reduced, Unmodified, and Boosted Jump Height
4, 12, 24, | #Reduced, Unmodified, and Boosted Jump Speed
130, 135, 140, | #Reduced, Unmodified, and Boosted Lateral Air Speed
105, 210, 420, | #Reduced, Unmodified, and Boosted Air Acceleration
10, 20, 36, | #Reduced, Unmodified, and Boosted Landing Lag
30, 60, 108, | #Reduced, Unmodified, and Boosted Gravity
48, | #Collision Box Size Related
45, | #Collision Box Size Related
55, | #????
40, | #Hurtbox Size
0 #????
word [8] |
0x83718362, 0x83768376, 0x838C8358, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
135, |  #Charge Damage
80, |  #Knockback Velocity
80, |   #Knockback Angle
60, |   #Homing
10, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
225, |   #Startup Phase Speed
153, |  #Attack Phase Speed
20, |   #Recovery Phase Speed
58, |    #Startup Phase Angle
-38, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
80, |   #Hitbox Size Related
25, |   #Hitbox Size Related
-25       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
10, |    #Invulnerability
0       #Invisibility
half [16] |
135, |  #Charge Damage
80, |  #Knockback Velocity
80, |   #Knockback Angle
0, |   #Homing
20, |   #Startup Phase Duration (+3 for # of Frames)
20, |   #Attack Phase Duration (+1 for # of Frames)
20, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
120, |  #Attack Phase Speed
140, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
-80, |    #Attack Phase Angle
-80, |  #Recovery Phase Angle
80, |   #Hitbox Size Related
25, |   #Hitbox Size Related
-25       #Hitbox Size Related
ExtraBytes:
byte [5] 7, 8, 3, 10, 8   #Stat Line
byte [1] 3  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
word [3] 0x20284352, 0x42522900, 0x00000000
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
