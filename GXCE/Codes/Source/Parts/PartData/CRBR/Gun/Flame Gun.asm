######################################
Flame Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x07
.alias ModelID = 0x07
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
"Flame Gun (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Fires six rounds. 
Aerial and ground shots are 
the same. 
Range: medium. 
Advisory: Since its power 
increases over distance, 
stay as far away as possible 
when shooting."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
0, | #Slideshot Duration
1, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
0, | #Trail (0 for Invisible, 1 for Trail VFX)
255, 255, 255, 255, | #Left Portion RGBA
255, 255, 255, 255, | #Middle Portion RGBA
255, 255, 255, 255, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 60, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 1.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
6, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
4, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.173, | #Phase Speed
0.125, | #Horizontal Homing
0.1, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
11, | #Damage
260, | #Down
20, | #Knockback Velocity
0, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
85, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
14, | #Phase Duration
0 #Padding
float[4] |
0.173, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
16, | #Damage
220, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
27, | #Phase Duration
0 #Padding
float[4] |
0.123, | #Phase Speed
0.01, | #Horizontal Homing
0.02, | #Vertical Homing
0.45 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
220, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
10, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
75, | #Knockback Angle (Downed)
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
6, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
4, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.173, | #Phase Speed
0.125, | #Horizontal Homing
0.1, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
11, | #Damage
260, | #Down
20, | #Knockback Velocity
0, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
85, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
14, | #Phase Duration
0 #Padding
float[4] |
0.173, | #Phase Speed
0.02, | #Horizontal Homing
0.015, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
16, | #Damage
220, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
27, | #Phase Duration
0 #Padding
float[4] |
0.123, | #Phase Speed
0.015, | #Horizontal Homing
0.015, | #Vertical Homing
0.45 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
220, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
10, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
75, | #Knockback Angle (Downed)
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
byte [5] 6, 6, 4, 6, 8   #Stat Line
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
