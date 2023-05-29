#################################
Custom Parts Master Code [DesiacX]
#################################
.alias LocLow = 0x8023
.alias PartSelectLocHigh = 0xB8BC
.alias NameLocHigh = 0xBD50
.alias DescriptionHigh = 0xBD64
.alias DataLocHigh = 0xBD68
.alias ModelLocHigh = 0xBD7C
.alias PartSelectCounters = 0xBD98

#Do Not Touch these registers.
#r8, PartCounter
#r9, PartType
#r10, ModelID
#r11, PartBase
#r13, PartName
#r14, PartDescription
#r15, RoboBytes

#Clobbering Registers
#r12, LoadFrom
#r16, Numbers
#r17, Numbers 2

CODE @ $800048E0
{
#Check to see if the Close code had already ran. If it did, the part list has been made and this shouldn't run.
CHECK:
    lis r12, LocLow
    ori r12, r12, PartSelectCounters
    lbzx r8, r9, r12    #Load the Part Select Counter into r8 using the PartType as reference
    lbz r12, 0x6 (r12)
    cmpwi r12, 0xFF
    beq- RETURN

SETUP:
    lis r12, 0x8023
    ori r12, r12, 0xBCF0
    lwz r13, 0 (r12)    #Load Stored PartName, PartDescription, and Robobytes Locations
    lwz r14, 4 (r12)
    lwz r15, 8 (r12)

BASEID:
    lis r12, LocLow
    ori r12, r12, PartSelectLocHigh
    mulli r16, r9, 0x4  #Get Offset based off of Part Type
    lwzx r12, r16 (r12)
    mulli r16, r8, 0x2  #Get Slot Offset based off of PartCounter
    sthx r11, r16 (r12)    #Store BaseID


PARTNAME:
    lis r12, LocLow
    ori r12, r12, NameLocHigh
    mulli r16, r9, 0x4  #Get Offset based off of Part Type
    lwzx r12, r16 (r12)
    mulli r16, r8, 0x4  #Get Slot Offset based off of PartCounter
    stwx r13, r16 (r12)    #Store PartName

PARTDESCRIPTION:
    lis r12, LocLow
    ori r12, r12, DescriptionHigh
    lwz r12, 0 (r12)
    mulli r16, r9, 0x100 #Get Offset based off of Part Type.
    mulli r17, r8, 0x4  #Get Slot Offset based off of PartCounter
    add r16, r16, r17
    stwx r14, r16 (r12)    #Store PartDescription

ROBOBYTES:
    lis r12, LocLow
    ori r12, r12, DataLocHigh
    mulli r16, r9, 0x4  #Get Offset based off of Part Type
    lwzx r12, r16 (r12)
    mulli r16, r8, 0x4  #Get Slot Offset based off of PartCounter
    stwx r15, r16 (r12)    #Store RoboBytes

MODELID:
    lis r12, LocLow 
    ori r12, r12, ModelLocHigh
    mulli r16, r9, 0x4  #Get Offset based off of Part Type
    lwzx r12, r16 (r12)
    stbx r10, r8 (r12)    #Store ModelID

ADDSLOT:
    addi r8, r8, 0x1
    lis r12, LocLow
    ori r12, r12, PartSelectCounters
    stbx r8, r9, r12

RETURN:
    blr
}

##########################
Part Select Data [DesiacX]
##########################
    .BA<-BodyMenuTable
    .BA->$8023B8BC
    .BA<-GunMenuTable
    .BA->$8023B8C0
    .BA<-BombMenuTable
    .BA->$8023B8C4
    .BA<-PodMenuTable
    .BA->$8023B8C8
    .BA<-LegMenuTable
    .BA->$8023B8CC
    .GOTO->END
BodyMenuTable:
half[253] |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF

GunMenuTable:
half[253] |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF

BombMenuTable:
half[253] |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF

PodMenuTable:
half[253] |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF

LegMenuTable:
half[253] |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, |
0xFFFF
END:

#############################
Part Data Storage [DesiacX]
#############################
    .BA<-BodyPartLocation
    .BA->$8023BD68
    .BA<-GunPartLocation
    .BA->$8023BD6C
    .BA<-BombPartLocation
    .BA->$8023BD70
    .BA<-PodPartLocation
    .BA->$8023BD74
    .BA<-LegPartLocation
    .BA->$8023BD78
    .GOTO->End
BodyPartLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
GunPartLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
BombPartLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
PodPartLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
LegPartLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
End:


#############################
Part Name and Description Storage [DesiacX]
#############################
    .BA<-BodyNameLocation
    .BA->$8023BD50
    .BA<-GunNameLocation
    .BA->$8023BD54
    .BA<-BombNameLocation
    .BA->$8023BD58
    .BA<-PodNameLocation
    .BA->$8023BD5C
    .BA<-LegNameLocation
    .BA->$8023BD60
    .BA<-DescriptionLocation
    .BA->$8023BD64
    .GOTO->End
BodyNameLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
GunNameLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
BombNameLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
PodNameLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
LegNameLocation:
word[252] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0
DescriptionLocation:
word[1275] |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, |
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
End:

##########################
Part Model Control Data [DesiacX]
##########################
    .BA<-BodyModelTable
    .BA->$8023BD7C
    .BA<-GunModelTable
    .BA->$8023BD80
    .BA<-BombModelTable
    .BA->$8023BD84
    .BA<-PodModelTable
    .BA->$8023BD88
    .BA<-LegModelTable
    .BA->$8023BD8C
    .GOTO->END
BodyModelTable:
byte[253] |
0x00, 0x01, 0x02, |
0x03, 0x04, 0x05, |
0x06, 0x07, 0x08, |
0x09, 0x0A, 0x0B, |
0x0C, 0x0D, 0x0E, |
0x0F, 0x10, 0x11, |
0x12, 0x13, 0x14, |
0x15, 0x16, 0x17, |
0x18, 0x19, 0x1A, |
0x1B, 0x1C, 0x1D, |
0x1E, 0x1F, 0x20, |
0x21, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, |
0xFF

GunModelTable:
byte[253] |
0x00, 0x01, 0x02, 0x03, |
0x04, 0x05, 0x06, 0x07, |
0x08, 0x09, 0x0A, 0x0B, |
0x0C, 0x0D, 0x0E, 0x0F, |
0x10, 0x11, 0x12, 0x13, |
0x14, 0x15, 0x16, 0x17, |
0x18, 0x19, 0x1A, 0x1B, |
0x1C, 0x1D, 0x1E, 0x1F, |
0x20, 0x22, 0x23, 0x24, |
0x25, 0x26, 0x27, 0x28, |
0x29, 0x2A, 0x2B, 0x2C, |
0x2D, 0x2E, 0x2F, 0x30, |
0x31, 0x32, 0x33, 0x21, |
0x34, 0x35, 0x36, 0x37, |
0x38, 0x39, 0x3A, 0x3B, |
0x3C, 0x3D, 0x3E, 0x3F, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0xFF

BombModelTable:
byte[253] |
0x00, 0x01, 0x02, 0x03, |
0x04, 0x05, 0x06, 0x07, |
0x08, 0x09, 0x0A, 0x0B, |
0x0C, 0x0D, 0x0E, 0x0F, |
0x10, 0x11, 0x12, 0x13, |
0x14, 0x15, 0x16, 0x17, |
0x18, 0x19, 0x1A, 0x1B, |
0x1C, 0x1D, 0x1E, 0x1F, |
0x20, 0x21, 0x22, 0x23, |
0x24, 0x25, 0x26, 0x27, |
0x28, 0x29, 0x2A, 0x2B, |
0x2C, 0x2D, 0x2E, 0x2F, |
0x30, 0x31, 0x32, 0x33, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0xFF

PodModelTable:
byte[253] |
0x00, 0x01, 0x02, 0x03, |
0x04, 0x05, 0x06, 0x07, |
0x08, 0x09, 0x0A, 0x0B, |
0x0C, 0x0D, 0x0E, 0x0F, |
0x10, 0x11, 0x12, 0x13, |
0x14, 0x15, 0x16, 0x17, |
0x18, 0x19, 0x1A, 0x1B, |
0x1C, 0x1D, 0x1E, 0x1F, |
0x20, 0x21, 0x22, 0x23, |
0x24, 0x25, 0x26, 0x27, |
0x28, 0x29, 0x2A, 0x2B, |
0x2C, 0x2D, 0x2E, 0x2F, |
0x30, 0x31, 0x32, 0x33, |
0x34, 0x35, 0x36, 0x37, |
0x38, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0xFF

LegModelTable:
byte[253] |
0x00, 0x01, 0x02, 0x03, |
0x04, 0x05, 0x06, 0x07, |
0x08, 0x09, 0x0A, 0x0B, |
0x0C, 0x0D, 0x0E, 0x0F, |
0x10, 0x11, 0x12, 0x13, |
0x14, 0x15, 0x16, 0x17, |
0x18, 0x19, 0x1A, 0x1B, |
0x1C, 0x00, 0x00, 0x00, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0x01, 0x01, 0x01, 0x01, |
0xFF
END:

* E0000000 80008000


##############################################
Part Name and Description Control V2 [DesiacX]
##############################################
.alias LocLow = 0x8023
.alias BodyNameLocHigh = 0xBD50
.alias DescriptionHigh = 0xBD64
#r0 contains part type
#r6 and r24 are Free.
#r3 is free until the final result needs to be stored in it.
#r22 contains mode. If 3, its a submenu. If 0, its a menu.
#r26 contains physical slot.
HOOK @ $801059C0
{
    mulli r3, r26, 0x4
    rlwinm r6, r0, 28, 0, 31 
    mulli r6, r6, 0x4
    lis r24, LocLow
    ori r24, r24, BodyNameLocHigh
    lwzx r24, r6, r24
    lwzx r3, r24, r3
    cmpwi r3, 0
    bne- END
    lis r3, 0x817F
    ori r3, r3, 0xC817
END:
    lwz r24, 0x0C (r1)  #Clobbered Register Reload
    lwz r6, 0x10 (r1)   #Clobbered Register Reload
    #lwz r3, 0x10 (r1)   #Original Op
}

#r3, r18, r27 Open
#r17 contains location of name
op nop @ $800F9A4C
HOOK @ $800F9A48
{

    lbz r27, 0x4855 (r31)   #Load Menu State
    cmpwi r27, 0
    beq- MenuDesc
    lbz r3, 0x4863 (r31)   #Load Page #
    lbz r27, 0x4868 (r31)   #Load Page ID
    cmpwi r27, 0
    bne- NotBody
Body:
    mulli r3, r3, 0x3
    b Continued
NotBody:
    mulli r3, r3, 0x4
Continued:
    mulli r27, r27, 0x4
    lis r18, LocLow
    ori r18, r18, BodyNameLocHigh
    lwzx r27, r18, r27      #Get Name Set to load from
    lbz r18, 0x4860 (r31)    #Load Selection Offset
    add r18, r3, r18        #Get Slot ID
    mulli r18, r18, 0x4
    lwzx r17, r18, r27  #Load Name
    b Failsafe
MenuDesc:
    lbz r3, 0x4860 (r31)    #Load Selected Menu
    mulli r27, r3, 0x2   #Multiply to get Part Type
    addi r27, r27, 0x4857
    lbzx r27, r27, r31
    lis r18, LocLow
    ori r18, r18, BodyNameLocHigh
    mulli r3, r3, 0x4
    lwzx r18, r3, r18
    mulli r27, r27, 0x4
    lwzx r17, r18, r27
Failsafe:
    cmpwi r17, 0
    bne- END
    lis r17, 0x817F
    ori r17, r17, 0xC817
END:
    li r3, 0x1              #Original Op
    #lwz r17, 0x178 (r31)    #Original Op
}

#Description Control

#r7 is Page Number if on Submenu
#r8 is Selected Slot. If 3D5 we are on Main Menu. Otherwise, Submenu.
#r29 is final result. It gets moved into r31, then r31 gets moved into r3
#r3, r30, r29 are Free due to the above
HOOK @ $80066E34
{
    cmpwi r8, 0x3D5
    bne SubMenu
MainMenu:
    lbz r3, 0x4860 (r31) #Get Selected Part Type
    mulli r30, r3, 0x100  #Store offset for later
    lis r29, LocLow
    ori r29, r29, DescriptionHigh
    lwz r29, 0 (r29)    #Load into Descriptor storage
    mulli r3, r3, 0x2
    addi r3, r3, 0x4857
    lbzx r3, r31, r3    #LoadPartID
    mulli r3, r3, 0x4
    add r3, r3, r30
    lwzx r29, r30, r29
    b- Check
SubMenu:
    lbz r3, 0x4861 (r31) #Get Selected Part Type
    lbz r30, 0x4863 (r31) #Get Selected Page Number
    cmpwi r3, 0
    bne SubMenuNotBody
SubMenuBody:
    mulli r29, r3, 0x100
    mulli r30, r30, 0x3
    b- SubMenuPt2
SubMenuNotBody:
    mulli r29, r3, 0x100
    mulli r30, r30, 0x4
SubMenuPt2:
    lbz r31, 0x4860 (r31) #Get Selected ID
    add r30, r30, r31  #Get Selected Part Physical Slot
    mulli r30, r30, 0x4
    add r30, r29, r30   #Get Part OFfset.
    lis r29, LocLow
    ori r29, r29, DescriptionHigh
    lwz r29, 0 (r29)
    lwzx r29, r30, r29 
Check:
    cmpwi r29, 0
    bne- END
    lis r29, 0x817F
    ori r29, r29, 0xC817
End:
    #r29, r0, r29 Original Op
}

op li r0, 0 @ $800F9700 #Forces Description Updates
op nop @ $800F972C  #Forces Description Updates
###################################
!Force Description Updates [DesiacX]
###################################
#Disable this if Debugging on the Part Select Screen. It forces the selected part to update every frame, which will mess with Breakpointing.
op li r0, 0 @ $800F9700 #Forces Description Updates
op nop @ $800F972C  #Forces Description Updates

###############################
Part Model Control V2 [DesiacX]
###############################
.alias ModelLocLow = 0x8023
.alias BodyModelLoc = 0xBD7C
.alias GunModelLoc = BodyModelLoc + 4
.alias BombModelLoc = GunModelLoc + 4
.alias PodModelLoc = BombModelLoc + 4
.alias LegModelLoc = PodModelLoc + 4

.macro LoadModel(<TargetModel>, <TargetRegister>)
{
    lis r29, ModelLocLow
    ori r29, r29, <TargetModel>
    lwz r29, 0 (r29)
    lbzx <TargetRegister>, <TargetRegister>, r29

}

#All Zoom Previews Branch to here. 
#r21 contains modes (0 = body, 1 = guns, ...). 
#r27 contains model ID.
#r28 is freeeeeeeeeeee.
HOOK @ $8010E0C4    
{
    lbz r28, 0x4863 (r31)
    cmpwi r21, 0
    bne- NotBody
Body:
    mulli r28, r28, 0x3     #Get Menu Page, multiply by 3
    b Model
NotBody:
    mulli r28, r28, 0x4     #Get Menu Page, Multiply by 4
Model:
    lbz r3, 0x4860 (r31)    
    add r28, r3, r28

    lis r3, ModelLocLow
    ori r3, r3, BodyModelLoc
    mulli r27, r21, 0x4
    add r3, r27, r3     #Get offset for loading
    lwz r3, 0, r3
    lbzx r27, r3, r28

    lbz r3, 0x4866 (r31)  #Original Function
}


#r0 is Legs. r4 Pod, r5 Bombs, r7 Gun, r9 is Body, r10 is Body but doubled.
HOOK @ $8010E2C0   
{
Setup:
    addi r4, r31, 0x4857   #Get Physical Slots ready
    lbz r9, 0, r4
    lbz r7, 2, r4
    lbz r5, 4, r4
    lbz r10, 8, r4
    lbz r4, 6, r4
LegModel:
    #Because r0 can't be used for an lhzx, i use r10 before the Body Model uses it.
    %LoadModel(LegModelLoc, r10)
    mr r0, r10
BodyModel:
    %LoadModel(BodyModelLoc, r9)
    mulli r10, r9, 0x4
    sth r9, 0x8 (r1)
OtherModels:
    %LoadModel(GunModelLoc, r7)
    %LoadModel(BombModelLoc, r5)
    %LoadModel(PodModelLoc, r4)
    li r29, 0
}

###########################
Illegal Byte Control V3 [DesiacX]
###########################
#r19 is menu type. 0xf means main menu. 0x0 means selections. 0x1 is for the Scroller. When in Selection mode, use r26 for Physical Slot.
#r7 is destination for Illegal / Can
#Scroller Goes first, than slot 1/2/3
.alias LocLow = 0x8023
.alias DataLocBodyHigh = 0xBD68
.alias DataLocGunHigh = DataLocBodyHigh + 4
.alias DataLocBombHigh = DataLocGunHigh + 4
.alias DataLocPodHigh = DataLocBombHigh + 4
.alias DataLocLegHigh = DataLocPodHigh + 4
######
#BODY#
######
HOOK @ $800667B0
{
PartSelection:
    cmpwi r19, 0x0
    bne- MainMenu
    lis r7, LocLow
    ori r7, r7, DataLocBodyHigh
    lwz r7, 0 (r7)
    mulli r26, r26, 0x4
    lwzx r7, r26, r7
    b- Load
MainMenu:
    cmpwi r19, 0x1
    beq- Scroller
    lbz r7, 0x4857 (r21)    #Obtain Part Slot
    mulli r0, r7, 0x4       #Obtain Offset
    lis r7, LocLow
    ori r7, r7, DataLocBodyHigh 
    lwz r7, 0 (r7)
    add r7, r0, r7          #Combin Offset and Base Address
    lwz r7, 0 (r7)
    b- Load
Scroller:
    li r0, 0x0
    b- %END%
Load:
    lbz r0, 0x05 (r7)
}
op b 0x0C @ $800667A4

#####
#GUN#
#####
HOOK @ $800667D8
{
PartSelection:
    cmpwi r19, 0x0
    bne- MainMenu
    lis r7, LocLow
    ori r7, r7, DataLocGunHigh
    lwz r7, 0 (r7)
    mulli r26, r26, 0x4
    lwzx r7, r26, r7
    b- Load
MainMenu:
    cmpwi r19, 0x1
    beq- Scroller
    lbz r7, 0x4859 (r21)    #Obtain Part Slot
    mulli r0, r7, 0x4       #Obtain Offset
    lis r7, LocLow
    ori r7, r7, DataLocGunHigh 
    lwz r7, 0 (r7)
    add r7, r0, r7          #Combin Offset and Base Address
    lwz r7, 0 (r7)
    b- Load
Scroller:
    li r0, 0x0
    b- %END%
Load:
    lbz r0, 0x0 (r7)
}
op b 0x0C @ $800667CC

######
#BOMB#
######
HOOK @ $80066800
{
PartSelection:
    cmpwi r19, 0x0
    bne- MainMenu
    lis r7, LocLow
    ori r7, r7, DataLocBombHigh
    lwz r7, 0 (r7)
    mulli r26, r26, 0x4
    lwzx r7, r26, r7
    b- Load
MainMenu:
    cmpwi r19, 0x1
    beq- Scroller
    lbz r7, 0x485B (r21)    #Obtain Part Slot
    mulli r0, r7, 0x4       #Obtain Offset
    lis r7, LocLow
    ori r7, r7, DataLocBombHigh 
    lwz r7, 0 (r7)
    add r7, r0, r7          #Combin Offset and Base Address
    lwz r7, 0 (r7)
    b- Load
Scroller:
    li r0, 0x0
    b- %END%
Load:
    lbz r0, 0x00 (r7)
}
op b 0x0C @ $800667F4

#####
#POD#
#####
HOOK @ $80066828
{
PartSelection:
    cmpwi r19, 0x0
    bne- MainMenu
    lis r7, LocLow
    ori r7, r7, DataLocPodHigh
    lwz r7, 0 (r7)
    mulli r26, r26, 0x4
    lwzx r7, r26, r7
    b- Load
MainMenu:
    cmpwi r19, 0x1
    beq- Scroller
    lbz r7, 0x485D (r21)    #Obtain Part Slot
    mulli r0, r7, 0x4       #Obtain Offset
    lis r7, LocLow
    ori r7, r7, DataLocPodHigh 
    lwz r7, 0 (r7)
    add r7, r0, r7          #Combin Offset and Base Address
    lwz r7, 0 (r7)
    b- Load
Scroller:
    li r0, 0x0
    b- %END%
Load:
    lbz r0, 0x00 (r7)
}
op b 0x0C @ $8006681C

#####
#LEG#
#####
HOOK @ $80066850
{
PartSelection:
    cmpwi r19, 0x0
    bne- MainMenu
    lis r7, LocLow
    ori r7, r7, DataLocLegHigh
    lwz r7, 0 (r7)
    mulli r26, r26, 0x4
    lwzx r7, r26, r7
    b- Load
MainMenu:
    cmpwi r19, 0x1
    beq- Scroller
    lbz r7, 0x485F (r21)    #Obtain Part Slot
    mulli r0, r7, 0x4       #Obtain Offset
    lis r7, LocLow
    ori r7, r7, DataLocLegHigh 
    lwz r7, 0 (r7)
    add r7, r0, r7          #Combin Offset and Base Address
    lwz r7, 0 (r7)
    b- Load
Scroller:
    li r0, 0x0
    b- %END%
Load:
    lbz r0, 0x00 (r7)
}
op b 0x0C @ $80066844

###########################
Robobytes Control [DesiacX]
###########################
.alias LocLow = 0x8023
.alias DataLocBodyHigh = 0xBD68
.alias DataLocGunHigh = DataLocBodyHigh + 4
.alias DataLocBombHigh = DataLocGunHigh + 4
.alias DataLocPodHigh = DataLocBombHigh + 4
.alias DataLocLegHigh = DataLocPodHigh + 4
* 061C0A88 0000000A
* 00FF00FF 00FF00FF
* 00FF00FF 00FF00FF
#Data Data Copy
#r0 = Ammount of Data to Copy
#r4 = Copy Clobbering Register
#r5 = Copy From Location
#r6 = Copy To Location
#r7 = Robo ID
#r8 = Player ID
#r4 / r22 = Free Realestate
#Update: r22 is not free realestate. r8 had the player controller slot, so in tag, it'd go 0 0 1 1 instead of 0 1 2 3. r22 had the correct slot for this code. 
op nop @ $80005F34
HOOK @ $80005f30
{
    lis r7, 0x8040
    ori r7, r7, 0x7260    #Setup Player Locations
    li r4, 0x4994
    mullw r4, r22, r4        
    add r7, r4, r7        #Get specific Player Location
    lbz r7, 0x4857 (r7)    #Load Body Physical Slot ID
    lis r22, LocLow
    ori r22, r22, DataLocBodyHigh
    lwz r22, 0 (r22)
    mulli r4, r7, 0x4
    lwzx r5, r4, r22        #Load Data Location into r5
    li r0, 0x3D             #Original Copy Ammount was 4D. 
    addi r6, r6, 0x40       #Do not copy Name Data.

    lwz r22, -0x05074 (r13) #Make this register Free Realestate by performing an earlier op.
    lwz r4, -0x5078 (r13)
    lbz r8, 0x008D (r4) #Make this register Free Realestate by performing an earlier op.
}

op nop @ $80005F74
op nop @ $80005F78
HOOK @ $80005f70
{
    lis r7, 0x8040
    ori r7, r7, 0x7260    #Setup Player Locations
    li r4, 0x4994
    mullw r4, r22, r4        
    add r7, r4, r7        #Get specific Player Location
    lbz r7, 0x4859 (r7)    #Load Gun Physical Slot ID
    lis r22, LocLow
    ori r22, r22, DataLocGunHigh
    lwz r22, 0 (r22)
    mulli r4, r7, 0x4
    lwzx r5, r4, r22        #Load Data Location into r5
    subi r5, r5, 0x4
    li r0, 0x41             #Original Copy Ammount was 0x51. 
    addi r6, r6, 0xA0       #Do not copy Name Data.

    lwz r22, -0x05074 (r13) #Make this register Free Realestate by performing an earlier op.
    lwz r4, -0x5078 (r13)
    lbz r8, 0x008D (r4) #Make this register Free Realestate by performing an earlier op.
}

HOOK @ $80005fBC
{
    lis r7, 0x8040
    ori r7, r7, 0x7260    #Setup Player Locations
    li r4, 0x4994
    mullw r4, r22, r4        
    add r7, r4, r7        #Get specific Player Location
    lbz r7, 0x485B (r7)    #Load Bomb Physical Slot ID
    lis r22, LocLow
    ori r22, r22, DataLocBombHigh
    lwz r22, 0 (r22)
    mulli r4, r7, 0x4
    lwzx r5, r4, r22        #Load Data Location into r5
    li r0, 0x1B             #Original Copy Ammount was 0x2F. 
    addi r6, r6, 0xA0       #Do not copy Name Data.

    lwz r22, -0x05074 (r13) #Make this register Free Realestate by performing an earlier op.
    lwz r4, -0x5078 (r13)
    lbz r8, 0x008D (r4) #Make this register Free Realestate by performing an earlier op.
}


#Different for Pods and Legs
#r3 = Copy From Location
#r4 = Copy From Location
#r5 = Copy To Location
op nop @ $80006004
HOOK @ $80006000
{
    subi r5, r3, 0x1D1C
    lis r4, 0x8040
    ori r4, r4, 0x7260    #Setup Player Locations
    li r3, 0x4994
    mullw r3, r3, r22        
    add r4, r3, r4        #Get specific Player Location
    lbz r4, 0x485D (r4)    #Load Pod Physical Slot ID
    lis r22, LocLow
    ori r22, r22, DataLocPodHigh
    lwz r22, 0 (r22)
    mulli r3, r4, 0x4
    lwzx r4, r3, r22        #Load Data Location into r5
    li r0, 0x1C             #Original Copy Ammount was 0x2F. 
    addi r5, r5, 0xE0       #Do not copy Name Data.

    lwz r22, -0x05074 (r13) #Make this register Free Realestate by performing an earlier op.
    #lwz r4, -0x5078 (r13)
    #lbz r8, 0x008D (r4) #Make this register Free Realestate by performing an earlier op.
}

HOOK @ $8000604C
{
    lis r4, 0x8040
    ori r4, r4, 0x7260    #Setup Player Locations
    li r3, 0x4994
    mullw r3, r3, r22        
    add r4, r3, r4        #Get specific Player Location
    lbz r4, 0x485F (r4)    #Load Pod Physical Slot ID
    lis r22, LocLow
    ori r22, r22, DataLocLegHigh
    lwz r22, 0 (r22)
    mulli r3, r4, 0x4
    lwzx r4, r3, r22        #Load Data Location into r5
    li r0, 0x7             #Original Copy Ammount was 0x47. 
    addi r5, r5, 0x80       #Do not copy Name Data.

    lwz r22, -0x05074 (r13) #Make this register Free Realestate by performing an earlier op.
    #lwz r4, -0x5078 (r13)
    #lbz r8, 0x008D (r4) #Make this register Free Realestate by performing an earlier op.
}


###########################
Part Expansion V2 [DesiacX]
###########################
.alias PartLocLow = 0x8023
.alias BodyPartLoc = 0xB8BC
.alias GunPartLoc = BodyPartLoc + 4
.alias BombPartLoc = GunPartLoc + 4
.alias PodPartLoc = BombPartLoc + 4
.alias LegPartLoc = PodPartLoc + 4

#Target and Source Register are generally the same unless something is being loaded to r0.
.macro LoadHalf(<SourceRegister>, <TargetRegister>, <TargetPart>)
{
    lis <SourceRegister>, PartLocLow
    ori <SourceRegister>, <SourceRegister>,  <TargetPart>
    lwz <SourceRegister>, 0 (<SourceRegister>)
    lhz <TargetRegister>, 0 (<SourceRegister>) 
}

.macro SetPartLoc(<Register>, <TargetPart>)
{
    lis <Register>, PartLocLow
    ori <Register>, <Register>,  <TargetPart>
    lwz <Register>, 0 (<Register>)
}


#Body Loading. These loading parts go off inbetween the Stage Select and the Part Select

HOOK @ $80109a98
{
%LoadHalf(r3, r3, BodyPartLoc)
}

HOOK @ $80109AC8
{
%SetPartLoc(r3, BodyPartLoc)
}

HOOK @ $80109AF0
{
%SetPartLoc(r5, BodyPartLoc)
}

#Gun Loading

HOOK @ $80109B6C
{
%LoadHalf(r4, r4, GunPartLoc)
}

HOOK @ $80109B9C
{
%SetPartLoc(r3, GunPartLoc)
}

HOOK @ $80109BC0
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb Loading

HOOK @ $80109C3C
{
%LoadHalf(r5, r5, BombPartLoc)
}

HOOK @ $80109C74
{
%SetPartLoc(r4, BombPartLoc)
}

HOOK @ $80109C98
{
%SetPartLoc(r3, BombPartLoc)
}

#Pod Loading

HOOK @ $80109D28
{
%LoadHalf(r7, r0, PodPartLoc)
}

HOOK @ $80109D60
{
%SetPartLoc(r3, PodPartLoc)
}

HOOK @ $80109D84
{
%SetPartLoc(r3, PodPartLoc)
}

#Leg Loading

HOOK @ $80109DC8
{
%LoadHalf(r5, r5, LegPartLoc)
}

HOOK @ $80109E00
{
%SetPartLoc(r4, LegPartLoc)
}

HOOK @ $80109E24
{
%SetPartLoc(r4, LegPartLoc)
}


#Body Parts Counter

HOOK @ $8010B23C
{
%LoadHalf(r21, r0, BodyPartLoc)
}

HOOK @ $8010B26C
{
%SetPartLoc(r4, BodyPartLoc)
}

HOOK @ $8010B2A0
{
%SetPartLoc(r14, BodyPartLoc)
}

HOOK @ $8010B2BC
{
%SetPartLoc(r5, BodyPartLoc)
}

#Guns Parts Counter

HOOK @ $8010B2D0
{
%LoadHalf(r6, r6, GunPartLoc)
}

HOOK @ $8010B2F4
{
%SetPartLoc(r14, GunPartLoc)
}

HOOK @ $8010B31C
{
%SetPartLoc(r4, GunPartLoc)
}

HOOK @ $8010B33C
{
%SetPartLoc(r9, GunPartLoc)
}

#Bombs Parts Counter

HOOK @ $8010B350
{
%LoadHalf(r5, r5, BombPartLoc)
}

HOOK @ $8010B374
{
%SetPartLoc(r4, BombPartLoc)
}

HOOK @ $8010B3A0
{
%SetPartLoc(r6, BombPartLoc)
}

HOOK @ $8010B3C0
{
%SetPartLoc(r8, BombPartLoc)
}

#Pod Counter

HOOK @ $8010B3DC
{
%LoadHalf(r9, r9, PodPartLoc)
}

HOOK @ $8010B404
{
%SetPartLoc(r10, PodPartLoc)
}

HOOK @ $8010B448
{
%SetPartLoc(r12, PodPartLoc)
}

HOOK @ $8010B468
{
%SetPartLoc(r8, PodPartLoc)
}

#Leg Counter

HOOK @ $8010B480
{
%LoadHalf(r7, r0, LegPartLoc)
}

HOOK @ $8010B4B8
{
%SetPartLoc(r15, LegPartLoc)
}

HOOK @ $8010B4E4
{
    lis r15, PartLocLow     #This one is special cause R0 is doing the loading. R15 is gonna get hit shortly so am loading from it.
    ori r15, r15, LegPartLoc
    lwz r0, 0 (r15)
}

HOOK @ $8010B510
{
%SetPartLoc(r8, LegPartLoc)
}


#More Menu SEtup

HOOK @ $8010592C
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $80105944
{
%SetPartLoc(r3, GunPartLoc)
}
HOOK @ $8010595C
{
%SetPartLoc(r3, BombPartLoc)
}
HOOK @ $80105974
{
%SetPartLoc(r3, PodPartLoc)
}
HOOK @ $8010598C
{
%SetPartLoc(r3, LegPartLoc)
}

#Even More Menu Setup
HOOK @ $8010878C
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $80108840
{
%SetPartLoc(r3, GunPartLoc)
}
HOOK @ $8010893C
{
%SetPartLoc(r11, BombPartLoc)
}
HOOK @ $80108A2C
{
%SetPartLoc(r22, PodPartLoc)
}
HOOK @ $80108B68
{
%SetPartLoc(r10, LegPartLoc)
}

#This is getting out of hand levels of Menu Setup
HOOK @ $8010E270
{
%SetPartLoc(r9, BodyPartLoc)
}
HOOK @ $8010E278
{
%SetPartLoc(r7, GunPartLoc)
}
HOOK @ $8010E294
{
%SetPartLoc(r5, BombPartLoc)
}
HOOK @ $8010E2A4
{
%SetPartLoc(r3, PodPartLoc)
}
HOOK @ $8010E2B4
{
%SetPartLoc(r3, LegPartLoc)
}


#Menu - Body
HOOK @ $8010E010
{
%SetPartLoc(r3, BodyPartLoc)
}

HOOK @ $800F8BA0
{
%SetPartLoc(r6, BodyPartLoc)
}

#Menu - Gun
HOOK @ $8010E034
{
%SetPartLoc(r3, GunPartLoc)
}

HOOK @ $800F8BB0
{
%SetPartLoc(r6, GunPartLoc)
}

#Menu - Bomb
HOOK @ $8010E058
{
%SetPartLoc(r3, BombPartLoc)
}

HOOK @ $800F8BC0
{
%SetPartLoc(r6, BombPartLoc)
}

#Menu - Pod
HOOK @ $8010E07C
{
%SetPartLoc(r3, PodPartLoc)
}

HOOK @ $800F8BD0
{
%SetPartLoc(r6, PodPartLoc)
}

#Menu - Leg
HOOK @ $8010E0A0
{
%SetPartLoc(r3, LegPartLoc)
}

HOOK @ $800F8BE0
{
%SetPartLoc(r6, LegPartLoc)
}

#Parts Exit via B Press

HOOK @ $80107124
{
%SetPartLoc(r12, BodyPartLoc)
}
HOOK @ $80107134
{
%SetPartLoc(r30, GunPartLoc)
}
HOOK @ $80107164
{
%SetPartLoc(r11, BombPartLoc)
}
HOOK @ $80107174
{
%SetPartLoc(r9, PodPartLoc)
}
HOOK @ $8010717C
{
%SetPartLoc(r7, LegPartLoc)
}


HOOK @ $80106EF8
{
%SetPartLoc(r4, BodyPartLoc)
}
HOOK @ $80106F20
{
%SetPartLoc(r4, GunPartLoc)
}
HOOK @ $80106F38
{
%SetPartLoc(r28, BombPartLoc)
}
HOOK @ $80106F88
{
%SetPartLoc(r28, PodPartLoc)
}
HOOK @ $80106F90
{
%SetPartLoc(r27, LegPartLoc)
}

#Something about CPU Parts
#Body
HOOK @ $80109ED0
{
%LoadHalf(r4, r0, BodyPartLoc)
}

HOOK @ $80109F34
{
%SetPartLoc(r3, BodyPartLoc)
}

HOOK @ $80109F58
{
%SetPartLoc(r5, BodyPartLoc)
}

#Gun
HOOK @ $80109FA4
{
%LoadHalf(r4, r0, GunPartLoc)
}

HOOK @ $80109FE0
{
%SetPartLoc(r3, GunPartLoc)
}

HOOK @ $8010A004
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb
HOOK @ $8010A050
{
%LoadHalf(r4, r4, BombPartLoc)
}

HOOK @ $8010A08C
{
%SetPartLoc(r5, BombPartLoc)
}

HOOK @ $8010A0B0
{
%SetPartLoc(r4, BombPartLoc)
}

#Pod
HOOK @ $8010A0FC
{
%LoadHalf(r3, r3, PodPartLoc)
}

HOOK @ $8010A138
{
%SetPartLoc(r3, PodPartLoc)
}

HOOK @ $8010A15C
{
%SetPartLoc(r4, PodPartLoc)
}

#Leg
HOOK @ $8010A1AC
{
%LoadHalf(r4, r0, LegPartLoc)
}

HOOK @ $8010A1E8
{
%SetPartLoc(r3, LegPartLoc)
}

HOOK @ $8010A20C
{
%SetPartLoc(r4, LegPartLoc)
}


#Something about CPU Parts 2
#Body
HOOK @ $8010A27C
{
%LoadHalf(r5, r5, BodyPartLoc)
}

HOOK @ $8010A2B0
{
%SetPartLoc(r4, BodyPartLoc)
}

HOOK @ $8010A2D4
{
%SetPartLoc(r4, BodyPartLoc)
}

#Gun
HOOK @ $8010A324
{
%LoadHalf(r3, r3, GunPartLoc)
}

HOOK @ $8010A358
{
%SetPartLoc(r5, GunPartLoc)
}

HOOK @ $8010A37C
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb
HOOK @ $8010A3D0
{
%LoadHalf(r6, r6, BombPartLoc)
}

HOOK @ $8010A404
{
%SetPartLoc(r9, BombPartLoc)
}

HOOK @ $8010A428
{
%SetPartLoc(r6, BombPartLoc)
}

#Pod
HOOK @ $8010A478
{
%LoadHalf(r7, r0, PodPartLoc)
}

HOOK @ $8010A4AC
{
%SetPartLoc(r4, PodPartLoc)
}

HOOK @ $8010A4D0
{
%SetPartLoc(r4, PodPartLoc)
}

#Leg
HOOK @ $8010A520
{
%LoadHalf(r5, r5, LegPartLoc)
}

HOOK @ $8010A554
{
%SetPartLoc(r4, LegPartLoc)
}

HOOK @ $8010A578
{
%SetPartLoc(r5, LegPartLoc)
}

#CPU Change Difficulty (Press Right)
#Body
HOOK @ $801036D0
{
%LoadHalf(r5, r5, BodyPartLoc)
}
HOOK @ $8010372C
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $80103754
{
%SetPartLoc(r3, BodyPartLoc)
}

#Gun
HOOK @ $80103790
{
%LoadHalf(r3, r0, GunPartLoc)
}
HOOK @ $801037C4
{
%SetPartLoc(r3, GunPartLoc)
}
HOOK @ $801037EC
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb
HOOK @ $80103828
{
%LoadHalf(r4, r4, BombPartLoc)
}
HOOK @ $8010385C
{
%SetPartLoc(r3, BombPartLoc)
}
HOOK @ $80103884
{
%SetPartLoc(r6, BombPartLoc)
}

#Pod
HOOK @ $801038C0
{
%LoadHalf(r3, r0, PodPartLoc)
}
HOOK @ $801038F4
{
%SetPartLoc(r4, PodPartLoc)
}
HOOK @ $8010391C
{
%SetPartLoc(r3, PodPartLoc)
}

#Legs
HOOK @ $80103958
{
%LoadHalf(r4, r4, LegPartLoc)
}
HOOK @ $8010398C
{
%SetPartLoc(r3, LegPartLoc)
}
HOOK @ $801039B4
{
%SetPartLoc(r3, LegPartLoc)
}


#CPU Change Difficulty (Press Left)
#Body
HOOK @ $80104164
{
%LoadHalf(r5, r5, BodyPartLoc)
}
HOOK @ $801041C0
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $801041E8
{
%SetPartLoc(r3, BodyPartLoc)
}

#Gun
HOOK @ $80104224
{
%LoadHalf(r3, r0, GunPartLoc)
}
HOOK @ $80104258
{
%SetPartLoc(r3, GunPartLoc)
}
HOOK @ $80104280
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb
HOOK @ $801042BC
{
%LoadHalf(r5, r0, BombPartLoc)
lbz r5, 0x4854 (r30)    #No Registers to clobber, re-running the previous op after using R5
}
HOOK @ $801042F0
{
%SetPartLoc(r3, BombPartLoc)
}
HOOK @ $80104318
{
%SetPartLoc(r4, BombPartLoc)
}

#Pod
HOOK @ $80104354
{
%LoadHalf(r4, r4, PodPartLoc)
}
HOOK @ $80104388
{
%SetPartLoc(r3, PodPartLoc)
}
HOOK @ $801043B0
{
%SetPartLoc(r4, PodPartLoc)
}

#Legs
HOOK @ $801043EC
{
%LoadHalf(r3, r3, LegPartLoc)
}
HOOK @ $80104420
{
%SetPartLoc(r3, LegPartLoc)
}
HOOK @ $80104448
{
%SetPartLoc(r3, LegPartLoc)
}

#CPU Type Change Left
#Body
HOOK @ $801044E0
{
%LoadHalf(r8, r0, BodyPartLoc)
}
HOOK @ $8010453C
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $80104564
{
%SetPartLoc(r3, BodyPartLoc)
}

#Gun
HOOK @ $801045A0
{
%LoadHalf(r5, r0, GunPartLoc)
lbz r5, 0x4854(r30)  #No Registers to clobber, re-running the previous op after using R5
}
HOOK @ $801045D4
{
%SetPartLoc(r3, GunPartLoc)
}
HOOK @ $801045FC
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb
HOOK @ $80104638
{
%LoadHalf(r5, r0, BombPartLoc)
}
HOOK @ $8010466C
{
%SetPartLoc(r3, BombPartLoc)
}
HOOK @ $80104694
{
%SetPartLoc(r5, BombPartLoc)
}

#Pod
HOOK @ $801046D0
{
%LoadHalf(r3, r0, PodPartLoc)
}
HOOK @ $80104704
{
%SetPartLoc(r6, PodPartLoc)
}
HOOK @ $8010472C
{
%SetPartLoc(r3, PodPartLoc)
}

#Legs
HOOK @ $80104768
{
%LoadHalf(r4, r4, LegPartLoc)
}
HOOK @ $8010479C
{
%SetPartLoc(r3, LegPartLoc)
}
HOOK @ $801047C0
{
%SetPartLoc(r3, LegPartLoc)
}

#CPU Type Change Right
#Body
HOOK @ $80103A50
{
%LoadHalf(r8, r0, BodyPartLoc)
}
HOOK @ $80103AAC
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $80103AD4
{
%SetPartLoc(r3, BodyPartLoc)
}

#Gun
HOOK @ $80103B10
{
%LoadHalf(r5, r0, GunPartLoc)
lbz r5, 0x4854(r30)  #No Registers to clobber, re-running the previous op after using R5
}
HOOK @ $80103B44
{
%SetPartLoc(r3, GunPartLoc)
}
HOOK @ $80103B6C
{
%SetPartLoc(r3, GunPartLoc)
}

#Bomb
HOOK @ $80103BA8
{
%LoadHalf(r5, r0, BombPartLoc)
}
HOOK @ $80103BDC
{
%SetPartLoc(r3, BombPartLoc)
}
HOOK @ $80103C04
{
%SetPartLoc(r5, BombPartLoc)
}

#Pod
HOOK @ $80103C40
{
%LoadHalf(r3, r0, PodPartLoc)
}
HOOK @ $80103C74
{
%SetPartLoc(r6, PodPartLoc)
}
HOOK @ $80103C9C
{
%SetPartLoc(r3, PodPartLoc)
}

#Legs
HOOK @ $80103CD8
{
%LoadHalf(r4, r4, LegPartLoc)
}
HOOK @ $80103D0C
{
%SetPartLoc(r3, LegPartLoc)
}
HOOK @ $80103D30
{
%SetPartLoc(r3, LegPartLoc)
}

#Arcade Menu Body
HOOK @ $800F8894
{
%LoadHalf(r5, r0, BodyPartLoc)
}
HOOK @ $800F88B4
{
%SetPartLoc(r6, BodyPartLoc)
}
HOOK @ $800F88D8
{
%SetPartLoc(r6, BodyPartLoc)
}

#Arcade Menu Gun
HOOK @ $800F8904
{
%LoadHalf(r6, r0, GunPartLoc)
}
HOOK @ $800F8924
{
%SetPartLoc(r6, GunPartLoc)
}
HOOK @ $800F8948
{
%SetPartLoc(r6, GunPartLoc)
}

#Arcade Menu Bomb
HOOK @ $800F8974
{
%LoadHalf(r6, r0, BombPartLoc)
}
HOOK @ $800F8994
{
%SetPartLoc(r6, BombPartLoc)
}
HOOK @ $800F89B8
{
%SetPartLoc(r6, BombPartLoc)
}

#Arcade Menu Pod
HOOK @ $800F89E4
{
%LoadHalf(r6, r0, PodPartLoc)
}
HOOK @ $800F8A08
{
%SetPartLoc(r6, PodPartLoc)
}
HOOK @ $800F8A30
{
%SetPartLoc(r6, PodPartLoc)
}



#Arcade Menu Leg
HOOK @ $800F8A5C
{
%LoadHalf(r6, r0, LegPartLoc)
}
HOOK @ $800F8A80
{
%SetPartLoc(r6, LegPartLoc)
}
HOOK @ $800F8AA8
{
%SetPartLoc(r6, LegPartLoc)
}

#Arcade Loading Body
HOOK @ $80103004
{
%LoadHalf(r15, r10, BodyPartLoc)
}
HOOK @ $80103040
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $80103064
{
%SetPartLoc(r3, BodyPartLoc)
}
HOOK @ $8010263C
{
%LoadHalf(r4, r11, BodyPartLoc)
}
HOOK @ $801026BC
{
%SetPartLoc(r14, BodyPartLoc)
}
HOOK @ $801026E4
{
%SetPartLoc(r5, BodyPartLoc)
}


#Arcade Loading Gun
HOOK @ $8010308C
{
%LoadHalf(r5, r11, GunPartLoc)
}
HOOK @ $80103110
{
%SetPartLoc(r7, GunPartLoc)
}
HOOK @ $80103134
{
%SetPartLoc(r5, GunPartLoc)
}
HOOK @ $80102718
{
%LoadHalf(r11, r0, GunPartLoc)
}
HOOK @ $801027A8
{
%SetPartLoc(r4, GunPartLoc)
}
HOOK @ $801027CC
{
%SetPartLoc(r8, GunPartLoc)
}

#Arcade Loading Bomb
HOOK @ $80103178
{
%LoadHalf(r3, r0, BombPartLoc)
}
HOOK @ $801031F0
{
%SetPartLoc(r10, BombPartLoc)
}
HOOK @ $80103214
{
%SetPartLoc(r4, BombPartLoc)
}
HOOK @ $80102804
{
%LoadHalf(r4, r3, BombPartLoc)
}
HOOK @ $801028B8
{
%SetPartLoc(r7, BombPartLoc)
}
HOOK @ $801028DC
{
%SetPartLoc(r10, BombPartLoc)
}

#Arcade Loading Pod
HOOK @ $8010326C
{
%LoadHalf(r6, r16, PodPartLoc)
}
HOOK @ $801032C4
{
%SetPartLoc(r5, PodPartLoc)
}
HOOK @ $801032E4
{
    lis r10, PartLocLow     #This one is special cause R0 is doing the loading. R10 is gonna get hit shortly so am loading from it.
    ori r10, r10, PodPartLoc
    lwz r0, 0 (r10)
}
HOOK @ $80102900
{
%LoadHalf(r4, r0, PodPartLoc)
}
HOOK @ $801029A0
{
%SetPartLoc(r4, PodPartLoc)
}
HOOK @ $801029C4
{
%SetPartLoc(r10, PodPartLoc)
}

#Arcade Loading Legs
HOOK @ $80103350
{
%LoadHalf(r3, r0, LegPartLoc)
}
HOOK @ $801033E0
{
    lis r9, PartLocLow     #This one is special cause R0 is doing the loading. R9 is gonna get hit shortly so am loading from it.
    ori r9, r9, PodPartLoc
    lwz r0, 0 (r9)
}
HOOK @ $80103418
{
%SetPartLoc(r6, LegPartLoc)
}
HOOK @ $801029F8
{
%LoadHalf(r8, r0, LegPartLoc)
}
HOOK @ $80102A80
{
%SetPartLoc(r7, LegPartLoc)
}
HOOK @ $80102AA4
{
%SetPartLoc(r5, LegPartLoc)
}

#Arcade Loading All
HOOK @ $80107234
{
%SetPartLoc(r7, BodyPartLoc)
}
HOOK @ $8010725C
{
%SetPartLoc(r8, GunPartLoc)
}
HOOK @ $8010726C
{
%SetPartLoc(r5, BombPartLoc)
}
HOOK @ $80107284
{
%SetPartLoc(r11, PodPartLoc)
}
HOOK @ $80107290
{
%SetPartLoc(r9, PodPartLoc)
}

###########################
Plus One Legs on Leg Base ID 0x10 [de;, DesiacX]
###########################
HOOK @ $80005F54
{
add r4, r23, r24    #Add Player ID Times 10 to Player Parts Location and store it in r4
lbz r4, 0xB (r4)    #Load the Players Leg Data
cmpwi r4, 0x10      #Check if its Leg 0x10 (Adjustment Leg 1)
bne END

lbz r4, -0xD4 (r6)
addi r7, r4, 0x1
stb r7, -0xD4 (r6)	#Load Dash Count Byte, Add 0x1 to it, and store it.

lbz r4, -0xDB (r6)
addi r7, r4, 0x1
stb r7, -0xDB (r6)	#Load Dash Count Byte, Add 0x1 to it, and store it.

END:
lwz r6, -0x5078 (r13)    #Code Overwritten at Injection point
}

####################################################
Replace "^`" in names with Illegal Symbol [DesiacX]
####################################################
HOOK @ $800F8D24
{
    lbzx r0, r29, r31
Check1:
    cmpwi r0, 0x5E
    bne- Check2
    li r0, 0x81
    stbx r0, r29, r31
Check2:
    cmpwi r0, 0x60
    bne- %END%
    li r0, 0x8F
    stbx r0, r29, r31
}
HOOK @ $800F9A60
{
    lbzx r0, r17, r27
Check1:
    cmpwi r0, 0x5E
    bne- Check2
    li r0, 0x81
    stbx r0, r17, r27
Check2:
    cmpwi r0, 0x60
    bne- %END%
    li r0, 0x8F
    stbx r0, r17, r27
}