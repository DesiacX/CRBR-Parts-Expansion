#######################
Camera Freeze [DesiacX]
#######################
HOOK @ $8002F7A8
{
  addi r4, r30, 0x167C  #Original Code
  lwz r3, 0 (r4)
  cmpwi r3, 0           #Check if there is already a camera value
  addi r3, r30, 0x15BC
}

op bne 0x8 @ $8002F7AC  #If there is already a camera value, do not update the camera value

HOOK @ $80010068
{
  addi r4, r3, 0x344C
  lwz r3, 0 (r4)
  cmpwi r4, 0
  add r3, r0, r5
}

op bne 0x8 @ $8001006C