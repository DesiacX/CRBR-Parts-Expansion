######################################
Freeze Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
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
"Freeze Bomb (CRBR)"
PartDescription:
    String|
"A bomb with basic functions. 
Travels in an arc toward 
target. 
Launches one bomb at a time. 
Briefly immobilizes target. 
Advisory: Since the bomb won't 
directly hit your opponent, 
fire it as you approach."
RoboBytes:
byte [2] |
00, | #Illegal Toggle 
1 #Number of Bombs Fired
half [1] 100 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
60, | #Starting location of reticle (% of distance to opponent) 
80, #Reload 
half [3] |
0, | #Burrow Time 
170, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
15, | #Explosion Expansion Radius 
70, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.7, | #Explosion Size after Initial Expansion 
1.0, | #Final Explosion Size 
3.23 #Explosion Height 
half [10] |
8, | #Damage 
300, | #Down 
0, | #Knockback Velocity 
0, | #Knockback Angle 
90, | #Histun 
0, | #On Hit Gravity 
0, | #Knockback Velocity (Downed) 
0, | #Knockback Angle (Downed) 
0, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
100, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 
#################
## Air Shot ##
#################
byte [2] |
70, | #Starting location of reticle (% of distance to opponent) 
90 #Reload 
half [3] |
0, | #Burrow Time 
160, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
12, | #Explosion Expansion Radius 
60, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.65, | #Explosion Size after Initial Expansion 
0.8, | #Final Explosion Size 
3.79 #Explosion Height 
half [10] |
8, | #Damage 
300, | #Down 
0, | #Knockback Velocity 
0, | #Knockback Angle 
90, | #Histun 
0, | #On Hit Gravity 
0, | #Knockback Velocity (Downed) 
0, | #Knockback Angle (Downed) 
0, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
30, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
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
