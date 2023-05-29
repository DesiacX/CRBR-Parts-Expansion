######################################
Halo Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x29
.alias ModelID = 0x29
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Halo Gun (CRBR)"
PartDescription:
    String|
"Fires a large homing round. 
Ground fire: Ascends then 
chases your opponent. 
Aerial fire: Stops in front 
of you. 
Range: medium-long. 
Advisory: Since it takes time 
for the rounds to reach your 
opponent, shoot from behind a 
wall. When firing from the air, 
wait until they approach you."
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
3, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
4, | #Delay Between Shots
52 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
23665, | #Initial Shot Angle
10922, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
4, | #Phase Duration
0 #Padding
float[4] |
1.0, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.01 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
200, | #Down
10, | #Knockback Velocity
60, | #Knockback Angle
10, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
60, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
14, | #Phase Duration
0 #Padding
float[4] |
0.086, | #Phase Speed
0.01, | #Horizontal Homing
0.02, | #Vertical Homing
0.7 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
220, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
10, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
22, | #Phase Duration
0 #Padding
float[4] |
0.065, | #Phase Speed
0.01, | #Horizontal Homing
0.02, | #Vertical Homing
1.2 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
250, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
13, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
123, | #Phase Duration
0 #Padding
float[4] |
0.065, | #Phase Speed
0.006, | #Horizontal Homing
0.02, | #Vertical Homing
1.6 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
27, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
45, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.004, | #Horizontal Homing
0.02, | #Vertical Homing
2.0 #Shot Size
byte[2] |
10, | #Lingering Hitbox Duration
0 #Padding
half[9] |
36, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
80, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
##########
#Air Shot#
##########
byte[6] |
5, | #Startup
3, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
4, | #Delay Between Shots
35 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
10922, | #Initial Shot Angle
10922, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
4, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.01 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
300, | #Down
120, | #Knockback Velocity
20, | #Knockback Angle
20, | #Hitstun
90, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
90 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
5, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
0.7 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
300, | #Down
120, | #Knockback Velocity
20, | #Knockback Angle
20, | #Hitstun
90, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
90 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
1.2 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
300, | #Down
120, | #Knockback Velocity
20, | #Knockback Angle
20, | #Hitstun
90, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
90 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
1.6 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
300, | #Down
120, | #Knockback Velocity
20, | #Knockback Angle
20, | #Hitstun
90, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
90 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
45, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.02, | #Horizontal Homing
0.02, | #Vertical Homing
2.0 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
22, | #Damage
300, | #Down
120, | #Knockback Velocity
20, | #Knockback Angle
20, | #Hitstun
90, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
90 #On-Hit Gravity (Downed)
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
