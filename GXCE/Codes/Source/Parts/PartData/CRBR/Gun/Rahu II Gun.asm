######################################
Rahu II Gun [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x01
.alias PartBase = 0x32
.alias ModelID = 0x32
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Rahu II Gun^` (CRBR)"
PartDescription:
    String|
"A gun that was merged with an 
unknown living being. 
An evolved version of 
Rahu I with upgraded 
firepower, round size, 
and shooting range. 
When fired, the rounds emit 
large blasts after a set 
amount of time. 
Range: medium."
RoboBytes:
* 01190100 00000000
* FFFFFFFF FFFFFFFF
* FFFFFFFF FFFFFFFF
* 0000003C 00000001
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 3F800000 0A030501
* 0A280E38 01000000
* 33330000 000A0000
* 3E6147AE 00000000
* 00000000 3E99999A
* 00000009 001E003C
* 003C0014 0028003C
* 003C0028 002D0000
* 3A83126F 00000000
* 00000000 3F666666
* 00000012 00C8003C
* 003C0014 0028003C
* 003C0028 000E0000
* 3E99999A 3D8F5C29
* 3C23D70A 3F400000
* 07000012 015E003C
* 003C0014 0028003C
* 003C0028 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 00000000 0A030501
* 0A2811C7 01000000
* 33330000 000A0000
* 3E6147AE 00000000
* 00000000 3E99999A
* 00000009 001E003C
* 003C0014 0028003C
* 003C0028 002D0000
* 3A83126F 00000000
* 00000000 3F666666
* 00000012 00C8003C
* 003C0014 0028003C
* 003C0028 000E0000
* 3EB33333 3D8F5C29
* 3C23D70A 3F400000
* 07000012 015E003C
* 003C0014 0028003C
* 003C0028 00000000
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
ExtraBytes:
byte [5] 5, 5, 5, 5, 5   #Stat Line
word [3] 0x20284352, 0x42522900, 0x00000000
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
