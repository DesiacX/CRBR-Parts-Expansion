###############################
Part Expansion Closer [DesiacX]
###############################
#This code will turn off the Part Expansion setup codes. Its easier if they only run once.
.alias LocLow = 0x8023
.alias PartSelectCounters = 0xBD98
PULSE
{
    lis r6, LocLow  
    ori r6, r6, PartSelectCounters
    li r16, 0xff
    stb r16, 0x6 (r6)
    blr
}
* E0000000 80008000