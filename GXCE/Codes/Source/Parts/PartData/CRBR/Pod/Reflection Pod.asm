######################################
Reflection Pod [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x03
.alias PartBase = 0x19
.alias ModelID = 0x19
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Reflection Pod (CRBR)"
PartDescription:
    String|
"Doesn't chase your opponent, 
but travels around for a 
long period of time. 
Can deploy three pods at one 
time. 
Blows target diagonally 
upward. 
Advisory: Constantly scatter 
three pods around the arena."
RoboBytes:
byte[4] |
00, | #Illegal Toggle 
1, | #Pod Count (Max 3) 
3, | #Number of Pods fired at once(Max 3) 
0x00 #Empty Data? 
half [8] |
90, | #Angle between simultaneous pods (Automatically Centered) 
85, | #Horizontal Explosion Trigger Radius 
85, | #Vertical Explosion Trigger Radius 
240, | #Fuse Time 
0, | #Angle Pod faces at ground launch 
0x0000, | #Empty Data? 
0, | #Angle Pod faces at air launch 
0x0000 #Empty Data? 
byte[4] |
1, | #Homing Toggle
0, | #Roaming Phase Homing 
0, | #Locked On Phase Homing 
0x00 #Empty Data? 
half [13] |
80, | #Roaming Phase Speed 
50, | #Locked On Phase Speed 
10, | #Roaming Phase Height 
10, | #Locked On Phase Height 
250, | #Angle for conen of vision for activating lock on phase 
350, | #Lock On Range 
0, | #Duration of pause for switching between roaming and locked on. 
0, | #Initial Ground Launch Angle 
5, | #Initial Air Launch Angle 
100, | #Initial Ground Launch Speed 
100, | #Initial Air Launch Speed 
30, | #Initial Ground Launch Duration 
50 #Initial Air Launch Duration 
byte[4] |
1, | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)
100, | #Pod Size
1, | #Number of Explosions 
1 #Delay between Explosions 
half [3] |
9, | #Explosion Expansion Duration 
34, | #Explosion Lingering Hitbox Duration 
0x0000 #Empty Data? 
float [3] |
0.8, | #eExplosion Size after Initial Expansion 
0.9, | #Final Explosion Size 
0.59 #Explosion Height 
half [10] |
35, | #Damage 
300, | #Down 
100, | #Knockback Velocity 
50, | #Knockback Angle 
5, | #Hitstun 
100, | #On-Hit Gravity 
100, | #Knockback Velocity (Downed) 
50, | #Knockback Anlge (Downed) 
100, | #On-Hit Gravity (Downed) 
0x0000 #Empty Data 
word [14] 0x00000001, 0xFFFFFF7F, 0x7FFF7FFF, 0xFFFFFF7F, 0xFFFFFFFF, 0x0000000A, 0x00000001, | 
0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3E4CCCCD #Unknown Data
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
