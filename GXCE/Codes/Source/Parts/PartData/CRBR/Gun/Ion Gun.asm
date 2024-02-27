######################################
Ion Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x25
.alias ModelID = 0x25
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
"Ion Gun (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Fires two rounds that turn 
twice. 
Rounds turn differently when 
fired from the air. 
Range: medium. 
Advisory: It's easy to hit 
your target with this gun, 
but the rounds move slowly, so 
fire as quickly as possible. "
RoboBytes:
byte[56] |
0, | #Illegal Toggle
10, | #Slideshot Duration
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
2, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
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
14, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
27, | #Damage
200, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.2, | #Horizontal Homing
0.15, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
400, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
9, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
400, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.2, | #Horizontal Homing
0.15, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
350, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
60, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
159, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
350, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
60, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
##########
#Air Shot#
##########
byte[6] |
5, | #Startup
2, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
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
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
27, | #Damage
200, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.2, | #Horizontal Homing
0.15, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
450, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
18, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
45, | #Damage
450, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.2, | #Horizontal Homing
0.15, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
350, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
60, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
158, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
350, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
60, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
ExtraBytes:
byte [5] 4, 4, 10, 8, 4   #Stat Line
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
