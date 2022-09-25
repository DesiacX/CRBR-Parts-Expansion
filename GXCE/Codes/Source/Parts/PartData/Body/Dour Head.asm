######################################
Dour Head [Custom Robo Battle Revolution]
######################################
.alias PartType = 0x00
.alias PartBase = 0x16
.alias ModelID = 0x16
    .BA<-PartName
    .BA->$8023BCF0
    .BA<-PartDescription
    .BA->$8023BCF4
    .BA<-RoboBytes
    .BA->$8023BCF8
    .GOTO->MASTERCODE
PartName:
    String|
"Dour Head"
PartDescription:
    String|
"A Funky Big Head model. 
Excellent at dodging attacks 
while airborne. 
Highly rated defense. 
Slow in all movements. 
Can perform two continuous 
jumps. 
Collision: Rises diagonally 
upward and descends after 
impact."
RoboBytes:
* 04B0506E 5000C036
* 263F3F23 64646464
* 03060B03 050A0102
* 00260078 00C60200
* 00112142 004B0096
* 00C6000A 00140028
* 001E0032 003C006C
* 00B4015E 006400C8
* 01900072 00EE0164
* 0004000C 00180082
* 0087008C 005F00BE
* 017C000A 00140024
* 001E003C 006C0030
* 002D0037 00280000
* 91E589F1 935D0000
* 00000000 00000000
* 00000000 00000000
* 00000000 00000000
* 02000075 00B40050
* 001E0005 001E0032
* 00000078 008C0000
* 001EFFC4 003C0000
* 00008354 837D815B
* 835C838B 83678251
* 00000000 00000000
* 00000000 00000000
* 00000A00 006C00B4
* 00500000 00140014
* 00140000 0078008C
* 0000FFB0 FFB0003C
* 0000FFF6 00000000
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
