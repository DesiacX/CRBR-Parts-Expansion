######################################
Jumping Pod B [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
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
"Jumping Pod B (CRBR)"
PartDescription:
    String|
"Approaches target from the 
front then flies over it 
and explodes in the air. 
Can deploy two pods at one 
time. 
Blast lingers for a while 
and blows target back at 
a low trajectory on impact. 
Advisory: Deploy toward your 
foe to keep them from jumping."
RoboBytes:
byte[4] |
00, | #Illegal Toggle 
2, | #Pod Count (Max 3) 
1, | #Number of Pods fired at once(Max 3) 
0x00 #Empty Data? 
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered) 
100, | #Horizontal Explosion Trigger Radius 
170, | #Vertical Explosion Trigger Radius 
90, | #Fuse Time 
0, | #Angle Pod faces at ground launch 
0x0000, | #Empty Data? 
0, | #Angle Pod faces at air launch 
0x0000 #Empty Data? 
byte[4] |
1, | #Homing Toggle
20, | #Roaming Phase Homing 
20, | #Locked On Phase Homing 
0x00 #Empty Data? 
half [13] |
80, | #Roaming Phase Speed 
64, | #Locked On Phase Speed 
10, | #Roaming Phase Height 
180, | #Locked On Phase Height 
80, | #Angle for conen of vision for activating lock on phase 
500, | #Lock On Range 
0, | #Duration of pause for switching between roaming and locked on. 
0, | #Initial Ground Launch Angle 
5, | #Initial Air Launch Angle 
100, | #Initial Ground Launch Speed 
50, | #Initial Air Launch Speed 
10, | #Initial Ground Launch Duration 
50 #Initial Air Launch Duration 
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
10, | #Explosion Expansion Duration 
100, | #Explosion Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.9, | #eExplosion Size after Initial Expansion 
1.04, | #Final Explosion Size 
0.4 #Explosion Height 
half [10] |
31, | #Damage 
300, | #Down 
80, | #Knockback Velocity 
50, | #Knockback Angle 
20, | #Hitstun 
100, | #On-Hit Gravity 
80, | #Knockback Velocity (Downed) 
50, | #Knockback Anlge (Downed) 
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
