######################################
Dragon Fist Gun [DesiacX]
######################################
.alias PartType = 0x01
.alias PartBase =0x08
.alias ModelID = 0x1A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Dragon Fist Gun (DXE)"
PartDescription:
    String|
"Fires extremely short- 
range rounds. 
Ground fire: Blows your 
opponent upward. 
Aerial fire: Blows your 
opponent far away. 
Range: short. 
Advisory: The gun is powerful 
but difficult to hit with. 
Stop your opponent with 
a bomb or pod, then fire."
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
1, | #Delay Between Shots
5 #Endlag
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
1, | #Phase Duration
0 #Padding
float[4] |
0.1, | #Phase Speed
0.02, | #Horizontal Homing
0.04, | #Vertical Homing
1 #Shot Size
byte[2] |
0, | #Lingering Hitbox Duration
0 #Padding
half[9] |
20, | #Damage
400, | #Down
50, | #Knockback Velocity
90, | #Knockback Angle
40, | #Hitstun
10, | #On-Hit Gravity
120, | #Knockback Velocity (Downed)
90, | #Knockback Angle (Downed)
20 #On-Hit Gravity (Downed)

#Second Phase
half[2] |
8, | #Phase Duration
0 #Padding
float[4] |
0.001, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
1.0 #Shot Size
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

##########
#Air Shot#
##########
byte[6] |
5, | #Startup
1, | #Number of Shots
1, | #Rounds per Shot
0, | #Shot Spread (00 for Vertical, 01 for Horizontal)
10, | #Delay Between Shots
85 #Endlag
half 0 #Shot Randomization
byte[2] |
0, | #Spread Phase
0 #Padding
half[3] |
90, | #Initial Shot Angle
0, | #Angle Between Simultaneous Shots
0 #????

#First Phase
half[2] |
97, | #Phase Duration
0 #Padding
float[4] |
0.12, | #Phase Speed
0.023, | #Horizontal Homing
0.017, | #Vertical Homing
0.27 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
99, | #Damage
900, | #Down
140, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
160, | #Knockback Velocity (Downed)
75, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)

#Second Phase
half[2] |
145, | #Phase Duration
0 #Padding
float[4] |
0.12, | #Phase Speed
0.0, | #Horizontal Homing
0.0, | #Vertical Homing
0.27 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
99, | #Damage
900, | #Down
140, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
160, | #Knockback Velocity (Downed)
75, | #Knockback Angle (Downed)
100 #On-Hit Gravity (Downed)

#Third Phase
half[2] |
145, | #Phase Duration
0 #Padding
float[4] |
0.08, | #Phase Speed
0.5, | #Horizontal Homing
0.5, | #Vertical Homing
0.27 #Shot Size
byte[2] |
40, | #Lingering Hitbox Duration
0 #Padding
half[9] |
99, | #Damage
900, | #Down
140, | #Knockback Velocity
0, | #Knockback Angle
20, | #Hitstun
100, | #On-Hit Gravity
160, | #Knockback Velocity (Downed)
75, | #Knockback Angle (Downed)
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
byte [5] 10, 10, 2, 10, 10   #Stat Line
word [3] 0x20284458, 0x45290000, 0x00000000 #Build Code
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
