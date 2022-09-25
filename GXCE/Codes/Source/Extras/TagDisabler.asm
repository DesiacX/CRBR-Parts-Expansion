#####################################
Cannot Tag while in Mid Air [DesiacX]
#####################################
HOOK @ $8004afb0
{
  lbz r4, 0x139 (r5)  #Load Robots Airborn State
  cmpwi r4, 0
  beq On_Ground
In_Air:
  li r4, 0x1  #Set r4 to 0x1 to fail the Cooldown Check by default
  b %END%
On_Ground:
  lha r4, 0x146 (r5)  #Original Instruction
}

#####################################
Cannot Tag while downed and in Mid Air [DesiacX]
#####################################
HOOK @ $8004666C
{
  lbz r0, 0x139 (r3)  #Load Robots Airborn State
  cmpwi r0, 0
  beq On_Ground
In_Air:
  li r0, 0x1  #Set r0 to 0x1 to fail the Cooldown Check by default
  b %END%
On_Ground:
  lha r0, 0x146 (r3)  #Original Instruction
}

