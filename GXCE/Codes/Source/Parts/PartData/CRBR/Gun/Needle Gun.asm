######################################
Needle Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x12
.alias ModelID = 0x12
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
"Needle Gun (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Fires three vertical, 
laser-like rounds. 
Aerial and ground shots 
are the same. 
Range: medium. 
Advisory: Your opponent will 
be blown upward when hit, 
so use the chance to close 
in and attack."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
15, | #Slideshot Duration
1, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
0, 175, 0, 63, | #Left Portion RGBA
255, 255, 128, 255, | #Middle Portion RGBA
0, 175, 0, 63, | #Right Portion RGBA
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
3, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
20 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
2730, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.03, | #Horizontal Homing
0.01, | #Vertical Homing
0.2 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
400, | #Down
130, | #Knockback Velocity
90, | #Knockback Angle
5, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
110, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
400, | #Down
130, | #Knockback Velocity
90, | #Knockback Angle
5, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
110, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
350, | #Phase Duration
0 #Padding
float[4] |
0.3, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.2 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
400, | #Down
130, | #Knockback Velocity
90, | #Knockback Angle
30, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
110, | #Knockback Angle (Downed)
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
3, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
30 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
1820, | #Initial Shot Angle
1820, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
12, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.03, | #Horizontal Homing
0.01, | #Vertical Homing
0.2 #Shot Size
byte[2] |
15, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
400, | #Down
130, | #Knockback Velocity
90, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
110, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
20, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.2 #Shot Size
byte[2] |
20, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
400, | #Down
130, | #Knockback Velocity
90, | #Knockback Angle
5, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
110, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
150, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
400, | #Down
130, | #Knockback Velocity
90, | #Knockback Angle
5, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
110, | #Knockback Angle (Downed)
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
byte [5] 4, 6, 2, 8, 8   #Stat Line
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
