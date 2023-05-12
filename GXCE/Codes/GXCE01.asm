CUSTOM ROBO

##########################
#Custom Robo GCTRM Codeset
##########################

#########################
Unlock Everything [?????]
#########################
* 04321D44 FFFFFFFF
* 023BF79C 0003FFFF
* 023BF7BC 0003FFFF
* 023BF7DC 0003FFFF
* 023BF7FC 0003FFFF
* 023BF81C 0002FFFF
* 023BF83C 0003FFFF

#############################
Synchronized Spawns V2 [DesiacX]
#############################
op nop @ $80089900
HOOK @ $800898E0
{
  li r29, 0x1A0
  sth r29, 388(r30)
}
HOOK @ $80085448
{
  lwz r3, 0x150 (r31)
  cmpwi r3, 0x2
  blt %END%
  li r3, 0x1
}

##########################################
Illegal Parts enabled on startup [DesiacX]
##########################################
op stb r6, 0x43(r21) @ $800F1098

########################################################
HP Defaults to 70 for Tag Battles in V.S. Mode V2 [DesiacX]
########################################################
HOOK @ $8010B204
{
  rlwinm r7, r9, 0, 16, 31  #Original Instruction
  lis r12, 0x8041
  ori r12, r12, 0xC0AF
  lbz r12, 0 (r12)  #Load Consecutive Matches Played
  cmpwi r12, 0
  bne- %END%        #If this is not match 0, do not set health to 70.
  lis r12, 0x8041   #R12 is replaced in instruction after hook point and is safe to use
  ori r12, r12, 0xCBFC
  lbz r12, 0 (r12)  #Load which Main Menu selection was made
  cmpwi r12, 2
  bne- %END%  #If not equal to 2 (VS Mode), do not run
  lis r12, 0x8044   #R12 is replaced in instruction after hook point and is safe to use
  ori r12, r12, 0xF884
  lbz r12, 0 (r12)  #Load which VS Selection was made
  cmpwi r12, 2
  bne- %END% #If not equal to 2 (Tag Mode), do not run
  li r7, 0x46 #Default Health
}

###################################
Universal Settings Modifier v1 [DesiacX]
###################################
half 900 @ $801C6C00  #Damage Multiplier
float 2 @ $801C6C04 #Gravity / Jump Related
float 6 @ $801C6C08 #Gravity / Jump Related
half [27]|
40, | #Gravity while shooting
60, | #Invulnerability Frames after Down
4,  | #Locked Bomb Aim Time
175,| #Bomb Marker Movement Speed
10, | #Locked / Slide Frames after Pod Shot
250,| #Lava Bounce Height
50, | #Lava Downtime Frames
100,| #Lava Damage
100,| #Friction
100,| #Friction after Air Dash
100,| #Movement Acceleration
0x32, | #????
0x46, | #????
0x55, | #????
0x46, | #????
0x46, | #????
0x5A, | #????
0x23, | #Ice Stage Related
10, | #Ice Friction 
100,| #Maximum Ice Speed
30, | #Tag from Down related
90, | #Tag Rebirth Invulnerability
0x0A, | #????
0x3C, | #???? 
0x0A, | #????
150,  | #Health Regen Cap
420   | #Tag Cooldown Frames
@ $801C6C0C



######################################################
Stagelist Toggle (Tournamnet / Vanilla) [DE, DesiacX]
######################################################
#Default / Tournament Stagelist.
byte [37]|
0x00, 0x01, 0x1C, 0x11, 0x05, 0x0F, |
0x0E, 0x03, 0x13, 0x1B, 0x1D, 0x0C, |
0x10, 0x14, 0x27, 0x26, 0x08, 0x02, |
0x12, 0x0D, 0x15, 0x23, 0x09, 0x1F, |
0x17, 0x04, 0x1E, 0x16, 0x22, 0x24, |
0x20, 0x21, 0x18, 0x19, 0x1A, 0x25, |
0x28 |
@ $8023CF00

#Vanilla Stagelist Option
* 2823F0E8 00000156
byte [37]|
0x00, 0x0F, 0x01, 0x26, 0x08, 0x02, |
0x0E, 0x11, 0x12, 0x0D, 0x15, 0x23, |
0x05, 0x09, 0x1C, 0x03, 0x13, 0x1F, |
0x14, 0x17, 0x0C, 0x10, 0x04, 0x1E, |
0x16, 0x22, 0x24, 0x20, 0x21, 0x18, |
0x19, 0x1A, 0x1B, 0x1D, 0x25, 0x27, |
0x28 |
@ $8023CF00
* E0000000 80008000

string "Stage Hazards" @ $80AA28CA
string|
"If off, a tournament
style stagelist will
be used. When on, 
the original stagelist
will be used." @ $80AA29DC

.include Source/Extras/ZAltStages.asm
.include Source/Stages/StageDisablers.asm
.include Source/Parts/PartExpansion.asm

.include Source/Parts/PartData/CRBR/PartList.asm
.include Source/Parts/PartData/Custom/PartList.asm
#.include Source/Parts/PartData/TE4/PartList.asm

.include Source/Parts/PartExpansionCloser.asm

##################################
Remember Parts Selection [DesiacX]
##################################
op nop @ $80109B18
op nop @ $80109BE8
op nop @ $80109CD4
op nop @ $80109DC0
op nop @ $80109E68

#V2. This code checks if the memory has been expanded via Riivolution. If it has, it returns the codeset handler to Dolphin's codeset handler.
#################################
External Codeset Closer V2 [DesiacX]
#################################
* 220000F0 01800000
* 80000000 80001858
* 8A00040F 00001848
* 64000000 00000000
* E0000000 80008000
