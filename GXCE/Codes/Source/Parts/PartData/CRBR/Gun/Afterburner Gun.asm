######################################
Afterburner Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x1B
.alias ModelID = 0x1B
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Afterburner Gun (CRBR)"
PartDescription:
    String|
"Fires rounds that gradually 
increase in speed. 
Ground fire: Blows opponent 
away from you. 
Aerial fire: Draws opponent 
toward you. 
Range: medium-long. 
Advisory: Adjust to your foe's 
shooting range and fire from 
the ground and air to change 
which direction they fly."
RoboBytes:
byte[56] |
0, | #Illegal Toggle
10, | #Slideshot Duration
1, | #Related to Homing when rounds aren't facing the opponent
0, 0, 0, 0, | #Nothing?
1, | #Trail (0 for Invisible, 1 for Trail VFX)
50, 200, 228, 63, | #Left Portion RGBA
200, 240, 240, 255, | #Middle Portion RGBA
50, 200, 228, 63, | #Right Portion RGBA
255, 255, 255, 255, | #Unknown RGBA
0, 0, 0, 15, | #Trail Duration
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
40 #Endlag
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
30, | #Phase Duration
0 #Padding
float[4] |
0.04, | #Phase Speed
0.04, | #Horizontal Homing
0.023, | #Vertical Homing
0.16 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
33, | #Damage
300, | #Down
90, | #Knockback Velocity
20, | #Knockback Angle
60, | #Hitstun
50, | #On-Hit Gravity
90, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
50 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
16, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.01, | #Horizontal Homing
0.005, | #Vertical Homing
0.12 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
31, | #Damage
300, | #Down
90, | #Knockback Velocity
20, | #Knockback Angle
60, | #Hitstun
50, | #On-Hit Gravity
90, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
50 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
120, | #Phase Duration
0 #Padding
float[4] |
0.8, | #Phase Speed
0.005, | #Horizontal Homing
0.0, | #Vertical Homing
0.08 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
29, | #Damage
300, | #Down
90, | #Knockback Velocity
20, | #Knockback Angle
60, | #Hitstun
50, | #On-Hit Gravity
90, | #Knockback Velocity (Downed)
20, | #Knockback Angle (Downed)
50 #On-Hit Gravity (Downed)
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
30, | #Phase Duration
0 #Padding
float[4] |
0.04, | #Phase Speed
0.04, | #Horizontal Homing
0.023, | #Vertical Homing
0.16 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
31, | #Damage
300, | #Down
80, | #Knockback Velocity
160, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
160, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Second Phase
half[2] |
16, | #Phase Duration
0 #Padding
float[4] |
0.22, | #Phase Speed
0.01, | #Horizontal Homing
0.005, | #Vertical Homing
0.12 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
29, | #Damage
300, | #Down
80, | #Knockback Velocity
160, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
160, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)
#Third Phase
half[2] |
120, | #Phase Duration
0 #Padding
float[4] |
0.8, | #Phase Speed
0.005, | #Horizontal Homing
0.0, | #Vertical Homing
0.08 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
26, | #Damage
300, | #Down
80, | #Knockback Velocity
160, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
80, | #Knockback Velocity (Downed)
160, | #Knockback Angle (Downed)
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
byte [5] 8, 8, 4, 4, 6   #Stat Line
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
