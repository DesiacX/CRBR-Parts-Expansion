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

##################################
default non-legal stages off [DE:]
##################################
* 0623CF00 00000025
* 00011C11 050F0E03
* 131B1D0C 10142726
* 0802120D 1523091F
* 17041E16 22242021
* 18191A25 28000000
* 2823F0E8 00000156
* 0623CF00 00000025
* 000F0126 08020E11
* 120D1523 05091C03
* 131F1417 0C10041E
* 16222420 2118191A
* 1B1D2527 28000000
* E0000000 80008000
* 06aa28ca 0000000f
* 496c6c65 67616c20
* 53746167 65730000
* 06aa29f0 0000003b
* 696c6c65 67616c20
* 73746167 65732077
* 696c6c0a 616c736f
* 20617070 65617220
* 696e0a73 74616765
* 2073656c 6563742e
* 20202020 20202020
* 20200000 00000000

.include Source/Stages/StageDisablers.asm
.include Source/Parts/PartExpansion.asm
.include Source/Parts/PartData/PartList.asm
.include Source/Parts/PartExpansionCloser.asm

##################################
Remember Parts Selection [DesiacX]
##################################
op nop @ $80109B18
op nop @ $80109BE8
op nop @ $80109CD4
op nop @ $80109DC0
op nop @ $80109E68

#Put this code at the end of the Codeset file that gets loaded in by Riivolution. This moves the Code Handler from the Riivolution Codes back to the Dolphin codes. Must be the last code.
#################################
External Codeset Closer [DesiacX]
#################################
* 80000000 80001858
* 8A00040F 00001848
* 64000000 00000000
