######################################
Grand Cross Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x28
.alias ModelID = 0x28
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Grand Cross Bomb^` (CRBR)"
PartDescription:
    String|
"A bomb that has been merged 
with an unknown living being. 
Emits four enormous blasts 
within your robo's range. 
Launches one bomb at a time. 
Blows target diagonally upward."
RoboBytes:
byte [2] |
01, | #Illegal Toggle 
4 #Number of Bombs Fired
half [1] 50 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
0, | #Starting location of reticle (% of distance to opponent) 
90, #Reload 
half [3] |
0, | #Burrow Time 
180, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
60, | #Explosion Expansion Radius 
25, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
1.0, | #Explosion Size after Initial Expansion 
1.0, | #Final Explosion Size 
5.88 #Explosion Height 
half [10] |
72, | #Damage 
600, | #Down 
120, | #Knockback Velocity 
70, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
120, | #Knockback Velocity (Downed) 
70, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
300, | #Left / Right Lnading Displacment 
300, | #Front / Back Landing Displacment 
100, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
65236, | #Left / Right Lnading Displacment 
300, | #Front / Back Landing Displacment 
100, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
300, | #Left / Right Lnading Displacment 
65236, | #Front / Back Landing Displacment 
100, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
65236, | #Left / Right Lnading Displacment 
65236, | #Front / Back Landing Displacment 
100, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 
#################
## Air Shot ##
#################
byte [2] |
0, | #Starting location of reticle (% of distance to opponent) 
90 #Reload 
half [3] |
0, | #Burrow Time 
180, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
48, | #Explosion Expansion Radius 
21, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
1.0, | #Explosion Size after Initial Expansion 
1.0, | #Final Explosion Size 
5.88 #Explosion Height 
half [10] |
72, | #Damage 
600, | #Down 
120, | #Knockback Velocity 
70, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
120, | #Knockback Velocity (Downed) 
70, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Ground Bomb #####
half [4] |
420, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
80, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
65116, | #Left / Right Lnading Displacment 
0, | #Front / Back Landing Displacment 
80, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
420, | #Front / Back Landing Displacment 
80, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Ground Bomb #####
half [4] |
0, | #Left / Right Lnading Displacment 
65116, | #Front / Back Landing Displacment 
80, | #Vertical Arc Angle 
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
