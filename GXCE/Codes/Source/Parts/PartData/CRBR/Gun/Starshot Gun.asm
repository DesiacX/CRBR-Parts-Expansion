######################################
Starshot Gun [Custom Robo Battle Revolution]
######################################
#Note: Starshot Gun's gun model releases bullets at an upwards angle.
.alias PartType = 0x01
.alias PartBase = 0x13
.alias ModelID = 0x13
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Starshot Gun (CRBR)"
PartDescription:
    String|
"Splits into five rounds as 
it ascends. 
Ground fire: Rounds split 
vertically. 
Aerial fire: Rounds split 
horizontally. 
Range: long. 
Advisory: When in the air, 
spread your fire. When on the 
ground, fire repeatedly when 
your opponent approaches."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
20, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
255, 128, 0, 63, | #Left Portion RGBA
255, 255, 190, 255, | #Middle Portion RGBA
255, 128, 0, 63, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 10, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 1.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
5, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
20 #Endlag
half 0 #Shot Randomization
byte[2] |
2, | #Spread Phase
0 #Padding
half[3] |
10922, | #Initial Shot Angle
62442, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.15 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
200, | #Down
10, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
2, | #Phase Duration
0 #Padding
float[4] |
0.002, | #Phase Speed
0.05, | #Horizontal Homing
0.055, | #Vertical Homing
0.15 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
200, | #Down
10, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
135, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.03, | #Horizontal Homing
0.005, | #Vertical Homing
0.15 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
30, | #Damage
350, | #Down
10, | #Knockback Velocity
30, | #Knockback Angle
45, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
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
5, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
25 #Endlag
half 0 #Shot Randomization
byte[2] |
2, | #Spread Phase
0 #Padding
half[3] |
7281, | #Initial Shot Angle
3640, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
200, | #Down
10, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
60, | #Phase Duration
0 #Padding
float[4] |
0.002, | #Phase Speed
0.213, | #Horizontal Homing
0.213, | #Vertical Homing
0.1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
200, | #Down
10, | #Knockback Velocity
30, | #Knockback Angle
5, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
166, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.1 #Shot Size
byte[2] |
15, | #Lingering Hitbox Duration
0 #Padding
half[9] |
23, | #Damage
200, | #Down
10, | #Knockback Velocity
30, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
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
byte [5] 4, 6, 4, 8, 4   #Stat Line
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
