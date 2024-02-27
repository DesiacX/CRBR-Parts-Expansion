######################################
Earth [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x04
.alias ModelID = 0x04
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
"Earth (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Aerial Beauty model. 
Very agile while airborne. 
Great at avoiding attacks but 
lacks power. 
Capable of two continuous 
jumps. 
Collision: Rises diagonally 
and attacks. 
Able to clear walls."
RoboBytes:
half[1] |
800, #Down
byte[22] |
105, | #Defense
110, | #Knockback
100, | #Hitstun
0, | #Illegal Toggle
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
2    #Number of Continuous Jumps
half[3] |
50, 160, 264  #Reduced, Unmodified, and Boosted Continuous Jump Height
byte[6] |
2, | #Number of Air Dashes
0, | #SV Air Dash Toggle
0, | #Air Dash Angle
5, 10, 15    #Reduced, Unmodified, and Boosted Air Dash Length
half [38] |
150, 300, 396, | #Reduced, Unmodified, and Boosted Air Dash Speed
10, 21, 42, | #Reduced, Unmodified, and Boosted LS Dash Turning
46, 76, 91, | #Reduced, Unmodified, and Boosted Run Speed
96, 160, 256, | #Reduced, Unmodified, and Boosted Ground Acceleration
105, 210, 420, | #Reduced, Unmodified, and Boosted Ground Turning
86, 180, 270, | #Reduced, Unmodified, and Boosted Jump Height
2, 4, 12, | #Reduced, Unmodified, and Boosted Jump Speed
105, 110, 115, | #Reduced, Unmodified, and Boosted Lateral Air Speed
361, 722, 1444, | #Reduced, Unmodified, and Boosted Air Acceleration
6, 12, 22, | #Reduced, Unmodified, and Boosted Landing Lag
50, 115, 172, | #Reduced, Unmodified, and Boosted Gravity
35, | #Collision Box Size Related
50, | #Collision Box Size Related
40, | #????
30, | #Hurtbox Size
1 #????
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Charge Title
byte [2] |
2, |    #Invulnerability
0       #Invisibility
half [16] |
108, |  #Charge Damage
200, |  #Knockback Velocity
100, |   #Knockback Angle
20, |   #Homing
1, |   #Startup Phase Duration (+3 for # of Frames)
22, |   #Attack Phase Duration (+1 for # of Frames)
30, |   #Recovery Phase Duration
0, |   #Startup Phase Speed
180, |  #Attack Phase Speed
44, |   #Recovery Phase Speed
0, |    #Startup Phase Angle
30, |    #Attack Phase Angle
-90, |  #Recovery Phase Angle
30, |   #Hitbox Size Related
30, |   #Hitbox Size Related
-30       #Hitbox Size Related
word [8] |
0x8354837D, 0x815B835C, 0x838B8367, 0x82510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 #Unused Charge Title
byte [2] |
11, |    #Invulnerability
0       #Invisibility
half [16] |
117, |  #Charge Damage
180, |  #Knockback Velocity
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
40, |   #Hitbox Size Related
20, |   #Hitbox Size Related
0       #Hitbox Size Related
ExtraBytes:
byte [5] 4, 5, 5, 7, 5   #Stat Line
byte [1] 1  #Body Type. 0 = Normal. 1 = Armor. 2 = Speed. 3 = Other. 4 = Nothing.
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
