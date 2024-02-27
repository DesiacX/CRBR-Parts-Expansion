######################################
X Laser Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x2B
.alias ModelID = 0x2B
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
"X Laser Gun^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Illegal part. 
Fires two rounds from each 
side that curve at an angle. 
Range changes when shot from 
the ground or the air. 
Range: medium. "
RoboBytes:
byte[56] |
1, | #Illegal Toggle
10, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
130, 130, 150, 111, | #Left Portion RGBA
230, 210, 240, 255, | #Middle Portion RGBA
130, 130, 150, 111, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 24, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 1.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
2, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
40 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
8192, | #Initial Shot Angle
16384, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
9, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.05, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
1.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
8, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
54, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
117, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
72, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
0, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
0, | #Damage
0, | #Down
0, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
0, | #On-Hit Gravity
0, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
0 #On-Hit Gravity (Downed)
##########
#Air Shot#
##########
byte[6] |
5, | #Startup
1, | #Number of Shots
2, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
40 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
12743, | #Initial Shot Angle
25486, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.05, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
1.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
8, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
117, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.15 #Shot Size
byte[2] |
60, | #Lingering Hitbox Duration
0 #Padding
half[9] |
63, | #Damage
2000, | #Down
40, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
5, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
0, | #Phase Duration
0 #Padding
float[4] |
0.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
0, | #Damage
0, | #Down
0, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
0, | #On-Hit Gravity
0, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
0 #On-Hit Gravity (Downed)
ExtraBytes:
byte [5] 8, 10, 8, 6, 8   #Stat Line
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
