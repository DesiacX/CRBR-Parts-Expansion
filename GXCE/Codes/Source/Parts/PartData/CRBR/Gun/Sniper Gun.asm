######################################
Sniper Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x04
.alias ModelID = 0x04
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Sniper Gun (CRBR)"
PartDescription:
    String|
"Fires one fast round straight 
ahead. 
Aerial and ground shots are 
the same. 
Range: medium-long. 
Advisory: After firing, you will 
become vulnerable, so try to 
keep your distance."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
25, | #Slideshot Duration
1, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
150, 170, 135, 96, | #Left Portion RGBA
220, 220, 240, 164, | #Middle Portion RGBA
150, 170, 135, 96, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 15, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 0.8 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
47 #Endlag
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
10, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.01, | #Horizontal Homing
0.03, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
100, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.35, | #Phase Speed
0.009, | #Horizontal Homing
0.0, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
80, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
122, | #Phase Duration
0 #Padding
float[4] |
0.26, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
70, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
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
15, | #Startup
1, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
3, | #Delay Between Shots
47 #Endlag
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
10, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.01, | #Horizontal Homing
0.01, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
80, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.35, | #Phase Speed
0.005, | #Horizontal Homing
0.005, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
70, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
122, | #Phase Duration
0 #Padding
float[4] |
0.26, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.24 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
60, | #Damage
800, | #Down
170, | #Knockback Velocity
0, | #Knockback Angle
35, | #Hitstun
100, | #On-Hit Gravity
170, | #Knockback Velocity (Downed)
0, | #Knockback Angle (Downed)
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
byte [5] 5, 5, 5, 5, 5   #Stat Line
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
