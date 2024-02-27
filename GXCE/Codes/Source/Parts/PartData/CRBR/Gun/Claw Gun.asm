######################################
Claw Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x19
.alias ModelID = 0x19
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
"Claw Gun (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Repeatedly fires shots that 
pull your opponent toward you. 
Ground fire: Rounds ascend 
slightly. 
Aerial fire: Rounds fly 
straight. 
Range: medium. 
Advisory: The gun has low 
firepower, so draw your foe 
toward you and use a bomb 
or collision."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
30, | #Slideshot Duration
0, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
165, 20, 240, 95, | #Left Portion RGBA
255, 195, 255, 255, | #Middle Portion RGBA
165, 20, 240, 95, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 24, | #Trail Duration
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
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
15 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
-5461, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
8, | #Phase Duration
0 #Padding
float[4] |
0.158, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
75, | #Knockback Velocity
170, | #Knockback Angle
70, | #Hitstun
10, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
170, | #Knockback Angle (Downed)
10 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
35, | #Phase Duration
0 #Padding
float[4] |
0.158, | #Phase Speed
0.013, | #Horizontal Homing
0.064, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
75, | #Knockback Velocity
170, | #Knockback Angle
70, | #Hitstun
10, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
170, | #Knockback Angle (Downed)
10 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
240, | #Phase Duration
0 #Padding
float[4] |
0.158, | #Phase Speed
0.025, | #Horizontal Homing
0.013, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
75, | #Knockback Velocity
170, | #Knockback Angle
70, | #Hitstun
10, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
170, | #Knockback Angle (Downed)
10 #On-Hit Gravity (Downed)
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
10, | #Delay Between Shots
45 #Endlag
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
35, | #Phase Duration
0 #Padding
float[4] |
0.158, | #Phase Speed
0.064, | #Horizontal Homing
0.013, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
75, | #Knockback Velocity
170, | #Knockback Angle
70, | #Hitstun
10, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
170, | #Knockback Angle (Downed)
10 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
250, | #Phase Duration
0 #Padding
float[4] |
0.158, | #Phase Speed
0.025, | #Horizontal Homing
0.013, | #Vertical Homing
0.2 #Shot Size
byte[2] |
30, | #Lingering Hitbox Duration
0 #Padding
half[9] |
18, | #Damage
350, | #Down
75, | #Knockback Velocity
170, | #Knockback Angle
70, | #Hitstun
10, | #On-Hit Gravity
60, | #Knockback Velocity (Downed)
170, | #Knockback Angle (Downed)
10 #On-Hit Gravity (Downed)
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
byte [5] 2, 6, 10, 8, 2   #Stat Line
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
