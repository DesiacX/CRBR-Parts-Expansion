######################################
Twin Flank Pod F [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
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
"Twin Flank Pod F (CRBR)"
BuildTitle:
    String|
" (CRBR)"
PartDescription:
    String|
"Deploys one pod left and one 
pod right. 
Deploys two pods at one time. 
Blows target back on a low 
trajectory. 
Advisory: Use it when a wall 
separates you and your foe."
RoboBytes:
byte[4] |
00, | #Illegal Toggle 
1, | #Pod Count (Max 3) 
2, | #Number of Pods fired at once(Max 3) 
0x00 #Empty Data? 
half [8] |
180, | #Angle between simultaneous pods (Automatically Centered) 
100, | #Horizontal Explosion Trigger Radius 
100, | #Vertical Explosion Trigger Radius 
90, | #Fuse Time 
0, | #Angle Pod faces at ground launch 
0x0000, | #Empty Data? 
0, | #Angle Pod faces at air launch 
0x0000 #Empty Data? 
byte[4] |
1, | #Homing Toggle
10, | #Roaming Phase Homing 
15, | #Locked On Phase Homing 
0x00 #Empty Data? 
half [13] |
90, | #Roaming Phase Speed 
135, | #Locked On Phase Speed 
10, | #Roaming Phase Height 
10, | #Locked On Phase Height 
90, | #Angle for conen of vision for activating lock on phase 
250, | #Lock On Range 
0, | #Duration of pause for switching between roaming and locked on. 
0, | #Initial Ground Launch Angle 
5, | #Initial Air Launch Angle 
100, | #Initial Ground Launch Speed 
100, | #Initial Air Launch Speed 
30, | #Initial Ground Launch Duration 
30 #Initial Air Launch Duration 
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
5, | #Explosion Expansion Duration 
19, | #Explosion Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.75, | #eExplosion Size after Initial Expansion 
0.85, | #Final Explosion Size 
3.12 #Explosion Height 
half [10] |
35, | #Damage 
300, | #Down 
150, | #Knockback Velocity 
20, | #Knockback Angle 
20, | #Hitstun 
100, | #On-Hit Gravity 
150, | #Knockback Velocity (Downed) 
20, | #Knockback Anlge (Downed) 
100, | #On-Hit Gravity (Downed) 
0x0000 #Empty Data 
word [14] 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0000003C, 0x00000001, | 
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F800000 #Unknown Data
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
