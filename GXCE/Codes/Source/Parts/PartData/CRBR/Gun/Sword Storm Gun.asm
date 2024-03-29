######################################
Sword Storm Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x24
.alias ModelID = 0x24
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
"Sword Storm Gun (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Fires rounds that ascend high 
then fly straight at the target. 
The rounds rise differently 
when fired from the air. 
Range: medium-long. 
Advisory: Though it can fire 
repeatedly, this gun can be 
difficult to aim with, so shift 
your timing and fire from both 
the ground and air. "
RoboBytes:
byte[56] |
0, | #Illegal Toggle
10, | #Slideshot Duration
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
6, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
0, | #Delay Between Shots
28 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
10922, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
20, | #Phase Duration
0 #Padding
float[4] |
0.4, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.01 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
3, | #Damage
240, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
280, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
30, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
1.0, | #Horizontal Homing
1.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
280, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
280, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
85, | #Phase Duration
0 #Padding
float[4] |
0.35, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
200, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
##########
#Air Shot#
##########
byte[6] |
5, | #Startup
1, | #Number of Shots
6, | #Rounds per Shot
1, | #Shot Spread (00 for Vertical, 01 for Horizontal)
0, | #Delay Between Shots
25 #Endlag
half 0 #Shot Randomization
byte[2] |
1, | #Spread Phase
0 #Padding
half[3] |
0, | #Initial Shot Angle
10922, | #Angle Between Simultaneous Shots
0 #????
#First Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.4, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.01 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
3, | #Damage
240, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.2, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
280, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
30, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
1.0, | #Horizontal Homing
1.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
280, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fourth Phase
half[2] |
10, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
280, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Fifth Phase
half[2] |
85, | #Phase Duration
0 #Padding
float[4] |
0.35, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.3 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
15, | #Damage
200, | #Down
10, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
100, | #Knockback Velocity (Downed)
35, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
ExtraBytes:
byte [5] 6, 10, 4, 8, 6   #Stat Line
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
