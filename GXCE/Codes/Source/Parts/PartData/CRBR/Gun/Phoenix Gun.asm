######################################
Phoenix Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x20
.alias ModelID = 0x20
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Phoenix Gun (CRBR)"
PartDescription:
    String|
"Fires quick, large rounds. 
Ground fire: Two rounds 
shoot up and down. 
Aerial fire: Rounds fly 
straight. 
Range: long. 
Advisory: Prevent your foe 
from jumping by shooting 
from the ground. When your 
opponent is on the ground, 
fire from the air. "
RoboBytes:
byte[56] |
0, | #Illegal Toggle
10, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
140, 100, 0, 0, | #Left Portion RGBA
230, 220, 0, 255, | #Middle Portion RGBA
140, 100, 0, 0, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 15, | #Trail Duration
0, 0, 0, 1, | #????
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 #????
float 2.0 #Trail Width, Start of Ground Shot
#############
#Ground Shot#
#############
byte[6] |
5, | #Startup
1, | #Number of Shots
2, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
2730, | #Initial Shot Angle
5461, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
8, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.005, | #Vertical Homing
0.25 #Shot Size
byte[2] |
50, | #Lingering Hitbox Duration
0 #Padding
half[9] |
54, | #Damage
450, | #Down
100, | #Knockback Velocity
-90, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
-90, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
3, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.09, | #Horizontal Homing
0.06, | #Vertical Homing
0.25 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
54, | #Damage
450, | #Down
100, | #Knockback Velocity
-90, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
-90, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
240, | #Phase Duration
0 #Padding
float[4] |
0.42, | #Phase Speed
0.0, | #Horizontal Homing
0.06, | #Vertical Homing
0.25 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
54, | #Damage
450, | #Down
100, | #Knockback Velocity
-90, | #Knockback Angle
40, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
-90, | #Knockback Angle (Downed)
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
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
50 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
6371, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
90, | #Phase Duration
0 #Padding
float[4] |
0.18, | #Phase Speed
0.0, | #Horizontal Homing
0.014, | #Vertical Homing
0.25 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
50, | #Damage
900, | #Down
150, | #Knockback Velocity
25, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
150, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
132, | #Phase Duration
0 #Padding
float[4] |
0.18, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.25 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
50, | #Damage
900, | #Down
150, | #Knockback Velocity
25, | #Knockback Angle
5, | #Hitstun
100, | #On-Hit Gravity
150, | #Knockback Velocity (Downed)
25, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
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
byte [5] 6, 10, 4, 8, 6   #Stat Line
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
