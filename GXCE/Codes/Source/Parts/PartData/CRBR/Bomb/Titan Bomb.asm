######################################
Titan Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x1E
.alias ModelID = 0x1E
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Titan Bomb (CRBR)"
PartDescription:
    String|
"Slowly flies in an arc. 
Emits an enormous blast. 
Launches one bomb at a time. 
Blows target diagonally high 
into the air. 
Advisory: Don't worry about 
where your opponent is and 
launch repeatedly."
RoboBytes:
byte [2] |
00, | #Illegal Toggle 
1 #Number of Bombs Fired
half [1] 100 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
100, | #Starting location of reticle (% of distance to opponent) 
240, #Reload 
half [3] |
15360, | #Burrow Time 
25, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
33, | #Explosion Expansion Radius 
42, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
2.9, | #Explosion Size after Initial Expansion 
4.05, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
18, | #Damage 
2000, | #Down 
140, | #Knockback Velocity 
70, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
140, | #Knockback Velocity (Downed) 
50, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
250, | #Vertical Arc Angle 
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
100, | #Starting location of reticle (% of distance to opponent) 
240 #Reload 
half [3] |
15360, | #Burrow Time 
20, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
33, | #Explosion Expansion Radius 
42, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
2.9, | #Explosion Size after Initial Expansion 
4.05, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
18, | #Damage 
2000, | #Down 
140, | #Knockback Velocity 
70, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
140, | #Knockback Velocity (Downed) 
50, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
150, | #Vertical Arc Angle 
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
