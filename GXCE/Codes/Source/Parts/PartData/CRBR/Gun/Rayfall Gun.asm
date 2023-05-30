######################################
Rayfall Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x0D
.alias ModelID = 0x0D
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Rayfall Gun (CRBR)"
PartDescription:
    String|
"Fires four homing rounds 
vertically. 
Ground fire: Rounds pause 
in midair. 
Aerial fire: Rounds do not 
pause in midair. 
Range: long. 
Advisory: The time it takes 
the rounds to home varies on 
where you shoot from so 
alternate firing positions."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
15, | #Slideshot Duration
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
4, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
45 #Endlag
half 5461 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
-10922, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
15, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
120, | #Phase Duration
0 #Padding
float[4] |
0.002, | #Phase Speed
0.25, | #Horizontal Homing
0.25, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
185, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.012, | #Horizontal Homing
0.017, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
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
4, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
30 #Endlag
half 1820 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
54614, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
8, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
6, | #Phase Duration
0 #Padding
float[4] |
0.002, | #Phase Speed
0.213, | #Horizontal Homing
0.213, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
30, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
185, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.017, | #Horizontal Homing
0.017, | #Vertical Homing
0.18 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
300, | #Down
15, | #Knockback Velocity
0, | #Knockback Angle
0, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
3, | #Knockback Angle (Downed)
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
byte [5] 6, 6, 8, 4, 4   #Stat Line
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
