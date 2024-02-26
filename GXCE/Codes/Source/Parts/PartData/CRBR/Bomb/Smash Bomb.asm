######################################
Smash Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Smash Bomb (CRBR)"
PartDescription:
    String|
"Explodes above your head. 
Launches one bomb at a time. 
Blows target diagonally upward. 
Advisory: Use it when your 
opponent tries to attack from 
the air."
RoboBytes:
byte [2] |
00, | #Illegal Toggle 
1 #Number of Bombs Fired
half [1] 4500 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
20, | #Starting location of reticle (% of distance to opponent) 
75, #Reload 
half [3] |
0, | #Burrow Time 
1000, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
1, | #Explosion Expansion Radius 
35, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
1.21, | #Explosion Size after Initial Expansion 
1.69, | #Final Explosion Size 
0.5 #Explosion Height 
half [10] |
75, | #Damage 
600, | #Down 
180, | #Knockback Velocity 
40, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
180, | #Knockback Velocity (Downed) 
40, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
240, | #Front / Back Landing Displacment 
300, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 
#################
## Air Shot ##
#################
byte [2] |
20, | #Starting location of reticle (% of distance to opponent) 
90 #Reload 
half [3] |
0, | #Burrow Time 
1000, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
14, | #Explosion Expansion Radius 
18, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
1.1, | #Explosion Size after Initial Expansion 
1.54, | #Final Explosion Size 
0.5 #Explosion Height 
half [10] |
53, | #Damage 
420, | #Down 
180, | #Knockback Velocity 
40, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
180, | #Knockback Velocity (Downed) 
40, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
240, | #Front / Back Landing Displacment 
200, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 
word [14] 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0000003C, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F800000 #Unknown Data
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
