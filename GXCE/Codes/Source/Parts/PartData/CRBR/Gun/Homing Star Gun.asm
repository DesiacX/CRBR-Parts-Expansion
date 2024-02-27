######################################
Homing Star Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x15
.alias ModelID = 0x15
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
"Homing Star Gun (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Breaks up after you fire and 
chases your opponent. 
Ground fire: Rounds break 
in a vertical pattern. 
Aerial fire: Rounds break 
in a horizontal pattern. 
Range: medium-long. 
Advisory: When your opponent 
is walking, fire from the air. 
If your foe jumps, shoot from 
the ground."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
0, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
180, 110, 20, 63, | #Left Portion RGBA
240, 220, 110, 255, | #Middle Portion RGBA
180, 110, 20, 63, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 5, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 1.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
6, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
1, | #Delay Between Shots
55 #Endlag
half 910 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
5461, | #Initial Shot Angle
2184, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.06, | #Vertical Homing
0.15 #Shot Size
byte[2] |
66, | #Lingering Hitbox Duration
0 #Padding
half[9] |
10, | #Damage
100, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
160, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
20, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.02, | #Horizontal Homing
0.005, | #Vertical Homing
0.1 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
35, | #Damage
300, | #Down
100, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
110, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.02, | #Horizontal Homing
0.04, | #Vertical Homing
0.1 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
35, | #Damage
300, | #Down
100, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
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
7, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
1, | #Delay Between Shots
63 #Endlag
half 910 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
5461, | #Initial Shot Angle
2184, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
20, | #Phase Duration
0 #Padding
float[4] |
0.15, | #Phase Speed
0.0, | #Horizontal Homing
0.055, | #Vertical Homing
0.15 #Shot Size
byte[2] |
66, | #Lingering Hitbox Duration
0 #Padding
half[9] |
10, | #Damage
100, | #Down
60, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
160, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
20, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.01, | #Horizontal Homing
0.018, | #Vertical Homing
0.1 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
27, | #Damage
300, | #Down
100, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.06, | #Horizontal Homing
0.025, | #Vertical Homing
0.1 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
27, | #Damage
300, | #Down
100, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
100, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.1 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
27, | #Damage
300, | #Down
100, | #Knockback Velocity
30, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
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
byte [5] 6, 6, 8, 4, 4   #Stat Line
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
