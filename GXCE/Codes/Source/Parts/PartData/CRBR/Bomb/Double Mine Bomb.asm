######################################
Dobule Mine Bomb [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x02
.alias PartBase = 0x1C
.alias ModelID = 0x1C
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
"Double Mine Bomb (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Launches and splits to the 
left and right sides. 
Explodes after a short 
period of time if it 
lands on the ground. 
Launches two bombs at a time. 
Blows target diagonally 
upward. 
Advisory: Try to cover the 
area near your foe in bombs."
RoboBytes:
byte [2] |
00, | #Illegal Toggle 
2 #Number of Bombs Fired
half [1] 80 #Explosion Trigger Radius
#################
## Ground Shot ##
#################
byte [2] |
65, | #Starting location of reticle (% of distance to opponent) 
80, #Reload 
half [3] |
61440, | #Burrow Time 
160, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
16, | #Explosion Expansion Radius 
20, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.83, | #Explosion Size after Initial Expansion 
1.16, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
30, | #Damage 
100, | #Down 
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
-150, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Ground Bomb #####
half [4] |
150, | #Left / Right Landing Displacment 
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
65, | #Starting location of reticle (% of distance to opponent) 
80 #Reload 
half [3] |
30720, | #Burrow Time 
180, | #Projectile Speed 
0x0000 #Empty Data? 
byte [2] |
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
14, | #Explosion Expansion Radius 
18, | #Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.83, | #Explosion Size after Initial Expansion 
1.16, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
30, | #Damage 
100, | #Down 
120, | #Knockback Velocity 
70, | #Knockback Angle 
30, | #Histun 
100, | #On Hit Gravity 
120, | #Knockback Velocity (Downed) 
70, | #Knockback Angle (Downed) 
100, | #On Hit Gravity (Downed)
0x0000 #Empty Data? 

##### First Air Bomb #####
half [4] |
-300, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Second Air Bomb #####
half [4] |
300, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Third Air Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 

##### Fourth Air Bomb #####
half [4] |
0, | #Left / Right Landing Displacment 
0, | #Front / Back Landing Displacment 
0, | #Vertical Arc Angle 
0 #Horizontal Arc Angle 
word [14] 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0000003C, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F800000 #Unknown Data
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
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
