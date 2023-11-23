##################
Fastfall [DesiacX]
##################
HOOK @ $8004B1D8
{
    lfs f1, 0x4 (r5)   #Original Op
    lbz r5, 0x23F (r3)  #Load Charge Input
    rlwinm r5, r5, 28, 28, 29   #Remove Other Inputs
    cmpwi r5, 0x4   #If Charge Input
    bne %END%
    lbz r5, 0xdb (r3)   
    cmpwi r5, 0x52  #If Jumping / Falling
    bne %END%
    fmuls f1, f1, f1    #Multiply Gravity by itself
}