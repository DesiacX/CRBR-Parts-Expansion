######################################
Basic Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x02
.alias ModelID = 0x02
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Gatling Gun"
PartDescription:
    String|
"Fires eight small rounds 
straight ahead. 
Aerial and ground shots are 
the same. 
Range: medium. 
Advisory: When fired from a 
distance, power increases but 
accuracy decreases"
RoboBytes:
* 00000100 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 05080100
* 04280000 00000000
* 00000000 00110000
* 3E99999A 3C23D70A
* 3C23D70A 3DCCCCCD
* 00000009 0096000F
* 00000005 00640050
* 001E0064 007D0000
* 3E99999A 00000000
* 00000000 3DCCCCCD
* 0000000D 0078000F
* 00000000 00640050
* 001E0064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 05080100
* 041E0000 00000000
* 00000000 00100000
* 3E99999A 00000000
* 3C75C28F 3DCCCCCD
* 00000009 0096000F
* 00000005 00640050
* 001E0064 00100000
* 3E99999A 3C75C28F
* 00000000 3DCCCCCD
* 0000000B 0078000F
* 00000000 00640050
* 001E0064 006E0000
* 3E99999A 00000000
* 00000000 3DCCCCCD
* 0000000D 0078000F
* 00000000 00640050
* 00000064 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 DEADBEEF
MASTERCODE:
PULSE
{
    lis r6, 0x8023
    ori r6, r6, 0xBC70
    mflr r16
    stmw r0, 0(r6)
    li r9, PartType
    li r10, ModelID
    li r11, PartBase
    lis r8, 0x8000
    ori r8, r8, 0x48E0
    mtctr r8
    bctrl
    lmw r0, 0(r6)
    mtlr r16
    blr
}
* E0000000 80008000
