#################################
Cannon Manipulation Fix [DesiacX]
#################################
HOOK @ $80085448
{
  cmpwi r4, 0x1 #Check Cube Mode
  beq- OrigCode
  rlwinm.	r3, r28, 0, 22, 23
  cmpwi r3, 0x0
  beq- NoHold
  li r3, 0x2
  b %END%
NoHold:
  li r3, 0x1
  b %END%
OrigCode:
  lwz r3, 0x150 (r31)
}