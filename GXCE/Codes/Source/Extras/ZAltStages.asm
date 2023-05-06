
########################
Stage Striking [DesiacX]
########################
HOOK @ $80111AD8
# U = 1, D = 4
{
  mr r3, r23  #HOOK Point
  lis r27, 0x8031
  ori r27, r27, 0xFED8  #Inputs
  lwz r28, 0x1C (r27)
  rlwinm r28, r28, 0, 27, 31
BanStage:
  cmpwi r28, 1
  bne UnbanStage
  lis r28, 0x8041
  ori r28, r28, 0xA24B
  lbz r29, 0 (r28)
  addi r28, r28, 0x8B
  li r30, 0
  stbx r30, r29, r28
  b END
UnbanStage:
  cmpwi r28, 4
  bne END
  lis r28, 0x8041
  ori r28, r28, 0xA24B
  lbz r29, 0 (r28)
  addi r28, r28, 0x8B
  li r30, 1
  stbx r30, r29, r28
END:
}

######################
Z-Alt Stages [DesiacX]
######################
.macro HoldZ(<BaseStageID>, <ZAltID>)
{
  cmpwi r6, <BaseStageID>
  bne- 0xC
  li r27, <ZAltID>
  stb r27, 6 (r5)
}

.macro IconSwap(<BaseStageIcon, <ZAltIcon>)
{
  cmplwi r0, <BaseStageIcon>
  bne- 0x0C
  li r5, <ZAltIcon>
  sth r5, 0x10 (r3)
}

HOOK @ $80111A34  #Write when holding Z
{
%HoldZ(0x0F, 0x08) #Diamond Fence / Diamond Cell
%HoldZ(0x01, 0x02) #High Rise Plaza / High Rise Cell
%HoldZ(0x0E, 0x12) #Crevice Court / Checkmate Foundry
OGHook:
  stb r8, 0xD (r5)  #Hook Point
}

HOOK @ $80111FF0  #Overwrite Icons when holding Z
{
%IconSwap(0x02, 0x04) #Diamond Fence / Diamond Cell
%IconSwap(0x03, 0x05) #High Rise Plaza / High Rise Cell
%IconSwap(0x08, 0x06) #Crevice Court / Checkmate Foundry
  cmplwi r0, 0x1  #hook point
}

HOOK @ $80111A94  #Write when not holding Z
{
  lis r27, 0x8041
  ori r27, r27, 0xA244
  lbz r3, 0x7 (r27)
  addi r31, r27, 0x14
  lbzx r3, r3, r31
  stb r3, 0x6 (r27)
  stb r5, 0x0D (r4)  #Hook Point
}
