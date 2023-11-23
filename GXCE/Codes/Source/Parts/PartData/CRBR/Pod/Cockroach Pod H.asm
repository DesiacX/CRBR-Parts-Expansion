######################################
Cockroach Pod H [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x06
.alias ModelID = 0x06
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Cockroach Pod H (CRBR)"
PartDescription:
    String|
"Normally flies slowly but 
quickly increases its speed 
when it spots its target. 
Can deploy two pods at one 
time. 
Blows target slowly sideways. 
Advisory: Deploy one pod left 
and one pod right to trap 
your opponent."
RoboBytes:
byte[4] |
00, | #Illegal Toggle 
2, | #Pod Count (Max 3) 
1, | #Number of Pods fired at once(Max 3) 
0x00 #Empty Data? 
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered) 
110, | #Horizontal Explosion Trigger Radius 
110, | #Vertical Explosion Trigger Radius 
110, | #Fuse Time 
0, | #Angle Pod faces at ground launch 
0x0000, | #Empty Data? 
0, | #Angle Pod faces at air launch 
0x0000 #Empty Data? 
byte[4] |
1, | #Homing Toggle
15, | #Roaming Phase Homing 
10, | #Locked On Phase Homing 
0x00 #Empty Data? 
half [13] |
40, | #Roaming Phase Speed 
200, | #Locked On Phase Speed 
10, | #Roaming Phase Height 
10, | #Locked On Phase Height 
90, | #Angle for conen of vision for activating lock on phase 
400, | #Lock On Range 
0, | #Duration of pause for switching between roaming and locked on. 
0, | #Initial Ground Launch Angle 
5, | #Initial Air Launch Angle 
100, | #Initial Ground Launch Speed 
100, | #Initial Air Launch Speed 
10, | #Initial Ground Launch Duration 
30 #Initial Air Launch Duration 
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
9, | #Explosion Expansion Duration 
32, | #Explosion Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.8, | #eExplosion Size after Initial Expansion 
0.9, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
26, | #Damage 
300, | #Down 
80, | #Knockback Velocity 
20, | #Knockback Angle 
30, | #Hitstun 
20, | #On-Hit Gravity 
80, | #Knockback Velocity (Downed) 
20, | #Knockback Anlge (Downed) 
20, | #On-Hit Gravity (Downed) 
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
