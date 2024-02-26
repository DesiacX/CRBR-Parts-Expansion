######################################
Gemin Bomb B [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x10
.alias ModelID = 0x10
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Gemini Bomb B (CRBR)"
PartDescription:
    String|
"Ground fire: Launches a split 
bomb toward either side 
of your foe. 
Aerial fire: Launches a split 
bomb toward the front and 
back of your foe. 
Launch two bombs at a time. 
Blast lingers for a while. 
Blows target sideways. 
Advisory: Fire frequently 
to trap your opponent."
RoboBytes:
byte [2] |
00, | #Illegal Toggle 
2 #Number of Bombs Fired
half [1] 100 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
105, | #Starting location of reticle (% of distance to opponent) 
60, #Reload 
half [3] |
0, | #Burrow Time 
160, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
16, | #Explosion Expansion Radius 
40, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.61, | #Explosion Size after Initial Expansion 
0.74, | #Final Explosion Size 
0.8 #Explosion Height 
half [10] |
40, | #Damage 
300, | #Down 
135, | #Knockback Velocity 
20, | #Knockback Angle 
20, | #Histun 
100, | #On Hit Gravity 
135, | #Knockback Velocity (Downed) 
20, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
-250, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
60, | #Vertical Arc Angle 
-30 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
250, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
60, | #Vertical Arc Angle 
30 #Horizontal Arc Angle 

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
100, | #Starting location of reticle (% of distance to opponent) 
60 #Reload 
half [3] |
0, | #Burrow Time 
180, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
16, | #Explosion Expansion Radius 
40, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.61, | #Explosion Size after Initial Expansion 
0.74, | #Final Explosion Size 
0.8 #Explosion Height 
half [10] |
40, | #Damage 
210, | #Down 
135, | #Knockback Velocity 
20, | #Knockback Angle 
20, | #Histun 
100, | #On Hit Gravity 
135, | #Knockback Velocity (Downed) 
20, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
-240, | #Front / Back Landing Displacment 
60, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
200, | #Front / Back Landing Displacment 
100, | #Vertical Arc Angle 
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
