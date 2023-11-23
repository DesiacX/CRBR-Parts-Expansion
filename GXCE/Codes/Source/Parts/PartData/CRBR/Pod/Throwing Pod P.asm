######################################
Throwing Pod P [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x20
.alias ModelID = 0x20
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Throwing Pod P (CRBR)"
PartDescription:
    String|
"Travels in a high arc. 
Can deploy two pods at one 
time. 
Blast lingers a while and 
blows target upward on impact. 
Advisory: Deploy directly 
at your foe from behind a 
wall."
RoboBytes:
byte[4] |
00, | #Illegal Toggle 
2, | #Pod Count (Max 3) 
1, | #Number of Pods fired at once(Max 3) 
0x00 #Empty Data? 
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered) 
60, | #Horizontal Explosion Trigger Radius 
60, | #Vertical Explosion Trigger Radius 
100, | #Fuse Time 
0, | #Angle Pod faces at ground launch 
0x0000, | #Empty Data? 
0, | #Angle Pod faces at air launch 
0x0000 #Empty Data? 
byte[4] |
1, | #Homing Toggle
20, | #Roaming Phase Homing 
10, | #Locked On Phase Homing 
0x00 #Empty Data? 
half [13] |
5, | #Roaming Phase Speed 
22, | #Locked On Phase Speed 
10, | #Roaming Phase Height 
10, | #Locked On Phase Height 
90, | #Angle for conen of vision for activating lock on phase 
400, | #Lock On Range 
5, | #Duration of pause for switching between roaming and locked on. 
30, | #Initial Ground Launch Angle 
20, | #Initial Air Launch Angle 
233, | #Initial Ground Launch Speed 
233, | #Initial Air Launch Speed 
30, | #Initial Ground Launch Duration 
30 #Initial Air Launch Duration 
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
10, | #Explosion Expansion Duration 
75, | #Explosion Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.62, | #eExplosion Size after Initial Expansion 
0.62, | #Final Explosion Size 
5.15 #Explosion Height 
half [10] |
35, | #Damage 
300, | #Down 
150, | #Knockback Velocity 
90, | #Knockback Angle 
20, | #Hitstun 
100, | #On-Hit Gravity 
150, | #Knockback Velocity (Downed) 
90, | #Knockback Anlge (Downed) 
100, | #On-Hit Gravity (Downed) 
0x0000 #Empty Data 
word [14] 0x00000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x0000003C, 0x00000001, | 
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F800000 #Unknown Data
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
