######################################
Titan Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x18
.alias ModelID = 0x18
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Titan Gun (CRBR)"
PartDescription:
    String|
"Fires an extremely large shot. 
Aerial and ground shots are 
the same. 
Range: medium. 
Advisory: Since its firepower 
is weak, try to fire this gun 
as quickly as possible."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
0, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
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
1, | #Number of Shots
1, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
50 #Endlag
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
170, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
1.1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
500, | #Down
120, | #Knockback Velocity
65, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
200, | #Knockback Velocity (Downed)
65, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.9 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
500, | #Down
120, | #Knockback Velocity
65, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
200, | #Knockback Velocity (Downed)
65, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.9 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
500, | #Down
120, | #Knockback Velocity
65, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
200, | #Knockback Velocity (Downed)
65, | #Knockback Angle (Downed)
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
1, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
20, | #Delay Between Shots
50 #Endlag
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
170, | #Phase Duration
0 #Padding
float[4] |
0.12, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
1.5 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
500, | #Down
120, | #Knockback Velocity
65, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
200, | #Knockback Velocity (Downed)
65, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.12, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
1.1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
500, | #Down
120, | #Knockback Velocity
65, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
200, | #Knockback Velocity (Downed)
65, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.12, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
1.1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
40, | #Damage
500, | #Down
120, | #Knockback Velocity
65, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
200, | #Knockback Velocity (Downed)
65, | #Knockback Angle (Downed)
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
byte [5] 2, 2, 2, 4, 6   #Stat Line
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
