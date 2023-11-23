######################################
Caboose Pod C [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x1A
.alias ModelID = 0x1A
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Caboose Pod C (CRBR)"
PartDescription:
    String|
"Flies in the opposite 
direction of where you aim. 
Can deploy two pods at one 
time. 
Blows target slowly upward. 
Advisory: Use it to cover 
your escape while retreating."
RoboBytes:
byte[4] |
00, | #Illegal Toggle 
2, | #Pod Count (Max 3) 
1, | #Number of Pods fired at once(Max 3) 
0x00 #Empty Data? 
half [8] |
0, | #Angle between simultaneous pods (Automatically Centered) 
100, | #Horizontal Explosion Trigger Radius 
400, | #Vertical Explosion Trigger Radius 
120, | #Fuse Time 
180, | #Angle Pod faces at ground launch 
0x0000, | #Empty Data? 
180, | #Angle Pod faces at air launch 
0x0000 #Empty Data? 
byte[4] |
1, | #Homing Toggle
5, | #Roaming Phase Homing 
30, | #Locked On Phase Homing 
0x00 #Empty Data? 
half [13] |
60, | #Roaming Phase Speed 
90, | #Locked On Phase Speed 
10, | #Roaming Phase Height 
10, | #Locked On Phase Height 
160, | #Angle for conen of vision for activating lock on phase 
250, | #Lock On Range 
0, | #Duration of pause for switching between roaming and locked on. 
200, | #Initial Ground Launch Angle 
200, | #Initial Air Launch Angle 
100, | #Initial Ground Launch Speed 
100, | #Initial Air Launch Speed 
10, | #Initial Ground Launch Duration 
10 #Initial Air Launch Duration 
byte[4] |
0, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
5, | #Explosion Expansion Duration 
34, | #Explosion Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
1.0, | #eExplosion Size after Initial Expansion 
1.2, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
45, | #Damage 
300, | #Down 
60, | #Knockback Velocity 
90, | #Knockback Angle 
30, | #Hitstun 
15, | #On-Hit Gravity 
60, | #Knockback Velocity (Downed) 
90, | #Knockback Anlge (Downed) 
15, | #On-Hit Gravity (Downed) 
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
