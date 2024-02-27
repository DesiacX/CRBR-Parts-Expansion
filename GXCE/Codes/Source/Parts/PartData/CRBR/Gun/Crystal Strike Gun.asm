######################################
Crystal Strike Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x2C
.alias ModelID = 0x2C
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
"Crystal Strike Gun^` (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Illegal part. 
Fires large rounds continuously. 
Ground fire: Stops in midair 
then chases the target. 
Aerial fire: Flies straight. 
Range: long."
RoboBytes:
byte[56] |
1, | #Illegal Toggle
5, | #Slideshot Duration
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
8, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
3, | #Delay Between Shots
5 #Endlag
half 3640 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
-1820, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.5, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.25 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
28, | #Damage
135, | #Down
120, | #Knockback Velocity
80, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
150, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.03, | #Horizontal Homing
0.03, | #Vertical Homing
0.5 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
28, | #Damage
135, | #Down
120, | #Knockback Velocity
80, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
145, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.01, | #Vertical Homing
0.5 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
31, | #Damage
270, | #Down
120, | #Knockback Velocity
80, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
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
4, | #Number of Shots
2, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
5, | #Delay Between Shots
50 #Endlag
half 3640 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
5461, | #Initial Shot Angle
10922, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
20, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.02, | #Horizontal Homing
0.005, | #Vertical Homing
0.6 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
29, | #Damage
100, | #Down
120, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
80, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
80 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
125, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.6 #Shot Size
byte[2] |
5, | #Lingering Hitbox Duration
0 #Padding
half[9] |
29, | #Damage
100, | #Down
120, | #Knockback Velocity
60, | #Knockback Angle
20, | #Hitstun
80, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
80 #On-Hit Gravity (Downed)
#Third Phase
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
byte [5] 10, 8, 8, 8, 8   #Stat Line
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
