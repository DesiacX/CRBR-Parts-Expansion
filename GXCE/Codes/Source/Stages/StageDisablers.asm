
########################################
Little Locomotive Train Delete [DesiacX]
########################################
* 2A23F0E8 00000156
* 283756A2 00001300
* 003756A5 00000009
* E0000000 80008000

########################################################
Stage Animation Disabler for Primary 3d Models [DesiacX]
########################################################

HOOK @ $800714D8
{
StagelistCheck:
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x98
  beq StageIDCheck
  cmpwi r3, 0x0
  beq StageIDCheck    #If Illegal Stages is Off, check the IDs for a stage Freeze
  cmpwi r3, 0xFF
  b End               #If Illegal Stages are On, ensure that 800714DC is false and that all animations run.

StageIDCheck:
  lbz r3, 0x05 (r31)  #Load Stage ID
  cmpwi r3, 0x9 #Chinese Bowl
  beq- End
  cmpwi r3, 0x21 #Battle Gear Station
  beq- End
  cmpwi r3, 0x24 #Scramble Walls
  beq- ScrambleWalls
  cmpwi r3, 0x20 #Loading Dock
  beq- End
  cmpwi r3, 0x13 #Little Locomotive
  beq- End
  cmpwi r3, 0x16 #Panic Cubes
  beq- End
  cmpwi r3, 0x18 #Impact Station
  beq- ImpactStation
  cmpwi r3, 0x22 #Panic Walls
  beq- End
  cmpwi r3, 0x1F #Merry-Go-Round
  beq- End
  cmpwi r3, 0x04 #Dead Line
  beq- End
  cmpwi r3, 0x1E #Double Dead Line
  beq- End
  #At this point, the CMPWI is garunteed to return false and not trigger the BEQ set by 800714DC, allowing the game to run animations.
  b End

ImpactStation:
  lwz r3, -0x4 (r31)
  cmpwi r3, 0x16      #Set timer for how long the animation will run for. I believe 0x8 = 1 Frame.
  beq End
  addi r3, r3, 0x1
  stw r3, -0x4 (r31)
  b End

ScrambleWalls:
  lwz r3, -0x4 (r31)
  cmpwi r3, 0x16      #Set timer for how long the animation will run for. I believe 0x8 = 1 Frame.
  beq End
  addi r3, r3, 0x1
  stw r3, -0x4 (r31)
  b End

End:
  mulli r3, r29, 0x13C  #Original Code
  addi r3, r3, 0xB8     #Original Code
  lwzx r3, r31, r3      #Overwritten Code @ $800714DC
}
op beq 0x8 @ $800714DC

HOOK @ $80072B04
{
  li r0, 0
  stw r0, -0x4 (r3) #Clear Timer for stages that need to run Animations. Stores at 80375698. This happens when a stage is previewed on the SSS.
  lbz r0, 0x6 (r3)
}

HOOK @ $801118B8
{
  li r24, 0
  stw r24, -0x4 (r7)  #Clear Timer for stages that need to run Animations. Stores at 80375698. This happens when a stage is previewed on the SSS.
  lwz r24, 0x18 (r6)  #Original Command
}

################################################################
Stage Animation Disabler for Interactive Destructibles [DesiacX]
################################################################
HOOK @ $80071500
{
StageIDCheck:
  lbz r3, 0x05 (r31)  #Load Stage ID
  cmpwi r3, 0x13 #Little Locomotive
  beq- StagelistCheck
  b End

StagelistCheck:
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x0
  beq- End
  cmpwi r3, 0x98

End:
  mulli r3, r29, 0x13C  #Original Code
  addi r0, r3, 0xB8     #Original Code
  lwzx r3, r31, r0      #Overwritten Code @ $800714DC
}
op beq 0x8 @ $80071504

#############################################
Stage Animation Disable for Shadows [DesiacX]
#############################################
HOOK @ $80071634
{
StageIDCheck:
  lbz r3, 0x05 (r31)  #Load Stage ID
  cmpwi r3, 0x20 #Loading Dock
  beq- StagelistCheck
  b End

StagelistCheck:
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x0
  beq- End
  cmpwi r3, 0x98

End:
  mulli r3, r0, 0x13C  #Original Code
  addi r0, r3, 0xB8     #Original Code
  lwzx r3, r31, r0      #Overwritten Code @ $800714DC
}
op beq 0x8 @ $80071638

###############################################
Stage Specific Disablers [DesiacX]
###############################################
HOOK @ $800717E0  #Disable Panic Walls Side walls from Lifting / Dropping
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}

HOOK @ $80071744  #Freeze Dark Star Camera
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}

HOOK @ $80071774  #Freeze Battle Gear Station Textures
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}


HOOK @ $8007187C  #Freeze Merry-Go-Round Shadow Texture
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}


HOOK @ $80071274  #Freeze Dead Line Conveyor Texture
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}

HOOK @ $80071894  #Freeze Double Dead Line Conveyor Texture
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}

HOOK @ $80071534  #Freeze Checkmate Foundry Conveyor Texture
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  bne %END%   #If Illegal Stages is Off, do not do the texture animation
  lis r3, 0x8019
  ori r3, r3, 0x7FD8
  mtctr r3
  lwz r3, 0x00B8 (r31)
  bctrl
}

HOOK @ $80070918  #Instructions between 8007090C - 918, for Magma Hole
{
  mulli r3, r29, 0x13C
  addi r0, r3, 0xF4
  lwzx r0, r31, r0
  rlwinm. r0, r0, 0, 27, 27
}

HOOK @ $80070910
{
MagmaHoleFreeze:
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x98
  beq %END%
  cmpwi r3, 0x0
  beq %END%   #If Illegal Stages is Off, skip the check and freeze the Magma Hole
  cmpwi r3, 0xFF
  #If Illegal Stages are On, ensure this if false and let the process run
}
op beq- 0x70 @ $80070914

##################################################
Lava / Ice / Movement Modifier Disablers [DesiacX]
##################################################

HOOK @ $8004CA40
{
  lis r3, 0x8023
  ori r3, r3, 0xF0E8  #Load Stagelist Check
  lhz r3, 0 (r3)
  cmpwi r3, 0x156
  beq- OriginalOp
IceCheck:
  lis r3, 0x0003
  ori r3, r3, 0x0300  #Check Ice
  cmpw r3, r6
  beq- ClearFlag
ConveyorCheck:
  cmpwi r6, 0x18  #Check Conveyor Belts
  blt- OriginalOp
  cmpwi r6, 0x1C
  bgt- OriginalOp
ClearFlag:
  li r6, 0
OriginalOp:
  lwz r3, 0x14 (r4)
  stw r6, 0x3498 (r5)
}

HOOK @ $8004CDB0
{
  lis r4, 0x8023
  ori r4, r4, 0xF0E8  #Load Stagelist Check
  lhz r4, 0 (r4)
  cmpwi r4, 0x156
  beq- OriginalOp
IceCheck:
  lis r4, 0x0003
  ori r4, r4, 0x0300  #Check Ice
  cmpw r4, r7
  beq- ClearFlag
ConveyorCheck:
  cmpwi r7, 0x18    #Check Conveyor Belts
  blt- OriginalOp
  cmpwi r7, 0x1C
  bgt- OriginalOp
ClearFlag:
  li r7, 0
OriginalOp:
  lwz r4, 0x14 (r3)
  stw r7, 0x3498 (r6)
}

HOOK @ $8004D49C
{
  lis r6, 0x8023
  ori r6, r6, 0xF0E8  #Load Stagelist Check
  lhz r6, 0 (r6)
  cmpwi r6, 0x156
  beq- Regular  #If this is true, run the command as normal
  li r17, 0     #If it isn't true, setting r17 to 0 turns off Lava

Regular:
  extsb. r6, r17
}