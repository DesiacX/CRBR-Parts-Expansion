CUSTOM ROBO

##########################
#Custom Robo GCTRM Codeset
##########################

########################################
Universal Settings Modifier v1 [DesiacX]
########################################
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

##########################################
Illegal Parts enabled on startup [DesiacX]
##########################################
op stb r6, 0x43(r21) @ $800F1098

############################
Boot to Main Menu v1.1 [DesiacX]
############################
HOOK @ $80023C88
{
  li r8, 0x5
  stw r8, 0x8 (r7)
}

HOOK @ $800089B4
{
  lwz r4, 0 (r5)
  cmpwi r4, 0
  bne- Restore
  li r0, 0x120
Restore:
  lwz r4, 0x38 (r5)
}

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

########################################################
Temporarily Disable Illegal Parts by holding R [DesiacX]
########################################################
.macro IllegalLoad(<Unusued>)
{
  lbz r0, 0x0043 (r3) #Replaced Command
  cmplwi r0, 0x1
  bne 0x1C
  lwz r3, 0x46B8 (r28) #Load Input
  rlwinm r3, r3, 12, 27, 31 #Check for R-Input
  cmpwi r3, 0x1
  bne 0x8
  li r0, 0x00
  cmplwi r0, 0x1
}
HOOK @ $800F79A0
{
%IllegalLoad(0)
}

HOOK @ $800F7A1C
{
%IllegalLoad(0)
}

HOOK @ $800F7A98
{
%IllegalLoad(0)
}

HOOK @ $800F7B14
{
%IllegalLoad(0)
}

HOOK @ $800F7B90
{
%IllegalLoad(0)
}

##################################
Remember Parts Selection [DesiacX]
##################################
op nop @ $80109B18
op nop @ $80109BE8
op nop @ $80109CD4
op nop @ $80109DC0
op nop @ $80109E68

###################################
Default Color is Original [DesiacX]
###################################
op li r3, 0x0 @ $80109E78

#################################
Extra Bytes - Body Type [DesiacX]
#################################
# 09 in r4 / r5, 3f in r6, 43 in r7, 50 in r8, 2 in r9,0 in r10 1 in r11
# 4F 09 53 = Other
# 50 09 01 = Normal
# 43 09 00 = Armor
# 3F 09 02 = Speed
# 4F 00 53 = No Catagory
# Normal / Armor / Speed / Other / None 
.alias LocLow = 0x8023
.alias DataLocBodyHigh = 0xBD68
HOOK @ $800FC170
{
  #r11 will hold the Body ID Locations for this page
  #r10 will hold the loaded body location
  #r9 will hold the loaded byte
  #r8 will hold the offset to store at (Store in r31)
  #r0 will be the counter
  mr r11, r0
  mulli r11, r11, 0xC  #Get Page and Body Offset
  lis r10, 0x8023
  ori r10, r10, 0xBD68
  lwz r10, 0 (r10)
  add r11, r10, r11
  li r8, 0x4C
  li r29, 0
Loop:
  lwz r10, 0 (r11)
  addi r11, r11, 0x4  #Setup for next body load
  addi r29, r29, 0x1
  addi r8, r8, 0x20
  add r7, r8, r31
  cmpwi r10, 0x0
  beq- None
  lbz r9, 0xFD (r10)
Normal:
  cmpwi r9, 0x0 
  bne- Armor
  li r4, 0x50
  li r5, 0x09
  li r6, 0x01
  b- Store
Armor:
  cmpwi r9, 0x1
  bne- Speed
  li r4, 0x43
  li r5, 0x09
  li r6, 0x00
  b- Store
Speed:
  cmpwi r9, 0x2 
  bne- Other
  li r4, 0x3F
  li r5, 0x09
  li r6, 0x02
  b- Store
Other:
  cmpwi r9, 0x3
  bne- None
  li r4, 0x4F
  li r5, 0x09
  li r6, 0x53
  b- Store
None:
  li r4, 0x4F
  li r5, 0x00
  li r6, 0x53
Store:
  sth r4, 0 (r7)
  sth r5, 2 (r7)
  sth r6, 4 (r7)
  cmpwi r29, 3
  beq- restore  #After 3 parts, escape
  b Loop
restore:
  lha r0, 0x4862 (r20)
  cmpwi r0, 0x56  #Hook Point, except increased so this CMPWI will always be less than or equal
}

###################################
Extra Bytes - Build Title [DesiacX]
###################################
.alias LocLow = 0x8023
.alias DataLocBodyHigh = 0xBD68
op nop @ $800F8C94  #Redundant Reload of r4
HOOK @ $800F8C88
#r25, 27, 28, 30, and 31 are free.
{
  lis r25, 0x8023
  ori r25, r25, 0xB498
  cmpw r25, r4
  bne- restore
  lwz r25, 0x28 (r1)  #Load Physical Part Slot
  lwz r27, 0x38 (r1)  #Load Part Type 
  lwz r31, 0x38 (r1)  #Load Part Type, hold for later
  mulli r25, r25, 0x4
  mulli r27, r27, 0x4
  lis r28, LocLow
  ori r28, r28, DataLocBodyHigh
  add r28, r27, r28
  lwz r28, 0 (r28)  #Load into Part Array
  add r28, r25, r28
  lwz r28, 0 (r28)  #Load into Part
Body:
  cmpwi r31, 0
  bne- Gun
  addi r4, r28, 0xFE
Gun:
  cmpwi r31, 1
  bne- Bomb
  addi r4, r28, 0x1F5
Bomb:
  cmpwi r31, 2
  bne- Pod
  addi r4, r28, 0xE5
Pod:
  cmpwi r31, 3
  bne- Leg
  addi r4, r28, 0x9D
Leg:
  cmpwi r31, 4
  bne- restore
  addi r4, r28, 0x15
restore:
  li r25, 0 #hook point.
}

##################################
Extra Bytes - Stat Lines [DesiacX]
##################################
.alias LocLow = 0x8023
.alias DataLocBodyHigh = 0xBD68
#r0 = which slot is loaded from. r28 also tracks this.
#r1
#r2
#r3 
#r4 and r23 = Robo ID
#
#r7 = Physical Page
#r8 = Phyiscal Slot
#r24 = part type
op nop @  $800FD1CC #Makes other parts function similar to Bodies, with a range of 1 - 10 as opposed to 1 - 5

HOOK @ $800FD0B4
{
  #r0, r3, r5 are usable
  #goal is r20 should be where Extrabytes are
bodyID:
  cmpwi r24, 0
  bne- OtherID
  mulli r5, r7, 3 #Phyiscal Page to r0
  b- FinishID
OtherID:
  mulli r5, r7, 4 #Phyiscal Page to r0
FinishID:
  add r5, r8, r5  #Add Physical Slot to Physical page to get Data Slot
  mulli r5, r5, 0x4 #Offset to load Part ID with.
  mulli r3, r24, 0x4  #Multiply part Type by 4
  lis r0, LocLow
  ori r0, r0, DataLocBodyHigh
  add r3, r0, r3
  lwz r3, 0 (r3)
  add r3, r5, r3
  lwz r3, 0 (r3)
Body:
  cmpwi r24, 0
  bne- Gun
  addi r20, r3, 0xF8
Gun:
  cmpwi r24, 1
  bne- Bomb
  addi r20, r3, 0x1F0
Bomb:
  cmpwi r24, 2
  bne- Pod
  addi r20, r3, 0xE0
Pod:
  cmpwi r24, 3
  bne- Leg
  addi r20, r3, 0x98
Leg:
  cmpwi r24, 4
  bne- restore
  addi r20, r3, 0x10
restore:
  rlwinm r0, r28, 0, 24, 31 #Restore r0
  rlwinm r3, r28, 0, 24, 31 #Restore r3
  lbzx r5, r20, r3  #Hook Point
}


.include Source/Extras/ZAltStages.asm
.include Source/Stages/StageDisablers.asm
.include Source/Parts/PartExpansion.asm

.include Source/Parts/PartData/CRBR/PartList.asm
.include Source/Parts/PartData/Custom/PartList.asm
#.include Source/Parts/PartData/TE4/PartList.asm

.include Source/Parts/PartExpansionCloser.asm


#V2. This code checks if the memory has been expanded via Riivolution. If it has, it returns the codeset handler to Dolphin's codeset handler.
#################################
External Codeset Closer V2 [DesiacX]
#################################
* 220000F0 01800000
* 80000000 80001858
* 8A00040F 00001848
* 64000000 00000000
* E0000000 80008000
