import pyperclip
import numpy as np
import struct
	 
def hex_to_float(hex_string):
    try:
        # Converting the hexadecimal string to a numpy array of unsigned integers
        hex_array = np.array([int(hex_string, 16)], dtype=np.uint32)
    
        # Converting the numpy array to a floating-point number
        float_number = hex_array.view(dtype=np.float32)[0]
    
        return float_number
    except ValueError:
        raise ValueError("Invalid hexadecimal string.")

data = pyperclip.paste()
data = data.replace(" ", "")
data = data.replace("*", "")
data = data.replace("\r", "")
data = data.replace("\n", "")
print(data)
RBIllegal = (int(("0x" + data[0:2]), 16))
RBSlideshotDuration = (int(("0x" + data[2:4]), 16))
RBHomingNonFacingRounds= (int(("0x" + data[4:6]), 16))
RBNothingA = (int(("0x" + data[6:8]), 16))
RBNothingB = (int(("0x" + data[8:10]), 16))
RBNothingC = (int(("0x" + data[10:12]), 16))
RBNothingD = (int(("0x" + data[12:14]), 16))
RBTrailVFX = (int(("0x" + data[14:16]), 16))
RBLeftPortionRBGA1 = (int(("0x" + data[16:18]), 16))
RBLeftPortionRBGA2 = (int(("0x" + data[18:20]), 16))
RBLeftPortionRBGA3 = (int(("0x" + data[20:22]), 16))
RBLeftPortionRBGA4 = (int(("0x" + data[22:24]), 16))
RBMiddlePortionRBGA1 = (int(("0x" + data[24:26]), 16))
RBMiddlePortionRBGA2 = (int(("0x" + data[26:28]), 16))
RBMiddlePortionRBGA3 = (int(("0x" + data[28:30]), 16))
RBMiddlePortionRBGA4 = (int(("0x" + data[30:32]), 16))
RBRightPortionRBGA1 = (int(("0x" + data[32:34]), 16))
RBRightPortionRBGA2 = (int(("0x" + data[34:36]), 16))
RBRightPortionRBGA3 = (int(("0x" + data[36:38]), 16))
RBRightPortionRBGA4 = (int(("0x" + data[38:40]), 16))
RBUnknownPortionRBGA1 = (int(("0x" + data[40:42]), 16))
RBUnknownPortionRBGA2 = (int(("0x" + data[42:44]), 16))
RBUnknownPortionRBGA3 = (int(("0x" + data[44:46]), 16))
RBUnknownPortionRBGA4 = (int(("0x" + data[46:48]), 16))
RBTrailDuration1 = (int(("0x" + data[48:50]), 16))
RBTrailDuration2 = (int(("0x" + data[50:52]), 16))
RBTrailDuration3 = (int(("0x" + data[52:54]), 16))
RBTrailDuration4 = (int(("0x" + data[54:56]), 16))
RBTrailUnknown1= (int(("0x" + data[56:58]), 16))
RBTrailUnknown2= (int(("0x" + data[58:60]), 16))
RBTrailUnknown3= (int(("0x" + data[60:62]), 16))
RBTrailUnknown4= (int(("0x" + data[62:64]), 16))
RBUnknown1 = (int(("0x" + data[64:66]), 16))
RBUnknown2 = (int(("0x" + data[66:68]), 16))
RBUnknown3 = (int(("0x" + data[68:70]), 16))
RBUnknown4 = (int(("0x" + data[70:72]), 16))
RBUnknown5 = (int(("0x" + data[72:74]), 16))
RBUnknown6 = (int(("0x" + data[74:76]), 16))
RBUnknown7 = (int(("0x" + data[76:78]), 16))
RBUnknown8 = (int(("0x" + data[78:80]), 16))
RBUnknown9 = (int(("0x" + data[80:82]), 16))
RBUnknown10 = (int(("0x" + data[82:84]), 16))
RBUnknown11 = (int(("0x" + data[84:86]), 16))
RBUnknown12 = (int(("0x" + data[86:88]), 16))
RBUnknown13 = (int(("0x" + data[88:90]), 16))
RBUnknown14 = (int(("0x" + data[90:92]), 16))
RBUnknown15 = (int(("0x" + data[92:94]), 16))
RBUnknown16 = (int(("0x" + data[94:96]), 16))
RBUnknown17 = (int(("0x" + data[96:98]), 16))
RBUnknown18 = (int(("0x" + data[98:100]), 16))
RBUnknown19 = (int(("0x" + data[100:102]), 16))
RBUnknown20 = (int(("0x" + data[102:104]), 16))
RBUnknown21 = (int(("0x" + data[104:106]), 16))
RBUnknown22 = (int(("0x" + data[106:108]), 16))
RBUnknown23 = (int(("0x" + data[108:110]), 16))
RBUnknown24 = (int(("0x" + data[110:112]), 16))
RBTrailWidth = hex_to_float(hex(int(data[112:120],16)))

RBGSStartup = (int(("0x" + data[120:122]), 16))
RBGSNumberofShots = (int(("0x" + data[122:124]), 16))
RBGSRoundsperShot = (int(("0x" + data[124:126]), 16))
RBGSShotSpread = (int(("0x" + data[126:128]), 16))
RBGSDelayBetweenShots = (int(("0x" + data[128:130]), 16))
RBGSEndlag = (int(("0x" + data[130:132]), 16))

RBGSShotRandomization = (int(("0x" + data[132:136]), 16))
RBGSSpreadPhase = (int(("0x" + data[136:138]), 16))
RBGSPadding = (int(("0x" + data[138:140]), 16))
RBGSInitialShotAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[140:144]), 16)))))[0]
RBGSAngleBetweenShots = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[144:148]), 16)))))[0]
RBGSUnknown25 = (int(("0x" + data[148:152]), 16))

RBGSP1PhaseDuration = (int(("0x" + data[152:156]), 16))
RBGSP1Padding = (int(("0x" + data[156:160]), 16))
RBGSP1PhaseSpeed = hex_to_float(hex(int(data[160:168],16)))
RBGSP1HorizontalHoming = hex_to_float(hex(int(data[168:176],16)))
RBGSP1VerticalHoming = hex_to_float(hex(int(data[176:184],16)))
RBGSP1ShotSize = hex_to_float(hex(int(data[184:192],16)))
RBGSP1LingeringHitboxDuration = (int(("0x" + data[192:194]), 16))
RBGSP1Padding2 = (int(("0x" + data[194:196]), 16))
RBGSP1Damage = (int(("0x" + data[196:200]), 16))
RBGSP1Down = (int(("0x" + data[200:204]), 16))
RBGSP1KBVelocity = (int(("0x" + data[204:208]), 16))
RBGSP1KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[208:212]), 16)))))[0]
RBGSP1Hitstun = (int(("0x" + data[212:216]), 16))
RBGSP1OnHitGravity = (int(("0x" + data[216:220]), 16))
RBGSP1KBVelocityDowned = (int(("0x" + data[220:224]), 16))
RBGSP1KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[224:228]), 16)))))[0]
RBGSP1OnHitGravityDowned = (int(("0x" + data[228:232]), 16))

RBGSP2PhaseDuration = (int(("0x" + data[232:236]), 16))
RBGSP2Padding = (int(("0x" + data[236:240]), 16))
RBGSP2PhaseSpeed = hex_to_float(hex(int(data[240:248],16)))
RBGSP2HorizontalHoming = hex_to_float(hex(int(data[248:256],16)))
RBGSP2VerticalHoming = hex_to_float(hex(int(data[256:264],16)))
RBGSP2ShotSize = hex_to_float(hex(int(data[264:272],16)))
RBGSP2LingeringHitboxDuration = (int(("0x" + data[272:274]), 16))
RBGSP2Padding2 = (int(("0x" + data[274:276]), 16))
RBGSP2Damage = (int(("0x" + data[276:280]), 16))
RBGSP2Down = (int(("0x" + data[280:284]), 16))
RBGSP2KBVelocity = (int(("0x" + data[284:288]), 16))
RBGSP2KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[288:292]), 16)))))[0]
RBGSP2Hitstun = (int(("0x" + data[292:296]), 16))
RBGSP2OnHitGravity = (int(("0x" + data[296:300]), 16))
RBGSP2KBVelocityDowned = (int(("0x" + data[300:304]), 16))
RBGSP2KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[304:308]), 16)))))[0]
RBGSP2OnHitGravityDowned = (int(("0x" + data[308:312]), 16))

RBGSP3PhaseDuration = (int(("0x" + data[312:316]), 16))
RBGSP3Padding = (int(("0x" + data[316:320]), 16))
RBGSP3PhaseSpeed = hex_to_float(hex(int(data[320:328],16)))
RBGSP3HorizontalHoming = hex_to_float(hex(int(data[328:336],16)))
RBGSP3VerticalHoming = hex_to_float(hex(int(data[336:344],16)))
RBGSP3ShotSize = hex_to_float(hex(int(data[344:352],16)))
RBGSP3LingeringHitboxDuration = (int(("0x" + data[352:354]), 16))
RBGSP3Padding2 = (int(("0x" + data[354:356]), 16))
RBGSP3Damage = (int(("0x" + data[356:360]), 16))
RBGSP3Down = (int(("0x" + data[360:364]), 16))
RBGSP3KBVelocity = (int(("0x" + data[364:368]), 16))
RBGSP3KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[368:372]), 16)))))[0]
RBGSP3Hitstun = (int(("0x" + data[372:376]), 16))
RBGSP3OnHitGravity = (int(("0x" + data[376:380]), 16))
RBGSP3KBVelocityDowned = (int(("0x" + data[380:384]), 16))
RBGSP3KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[384:388]), 16)))))[0]
RBGSP3OnHitGravityDowned = (int(("0x" + data[388:392]), 16))

RBGSP4PhaseDuration = (int(("0x" + data[392:396]), 16))
RBGSP4Padding = (int(("0x" + data[396:400]), 16))
RBGSP4PhaseSpeed = hex_to_float(hex(int(data[400:408],16)))
RBGSP4HorizontalHoming = hex_to_float(hex(int(data[408:416],16)))
RBGSP4VerticalHoming = hex_to_float(hex(int(data[416:424],16)))
RBGSP4ShotSize = hex_to_float(hex(int(data[424:432],16)))
RBGSP4LingeringHitboxDuration = (int(("0x" + data[432:434]), 16))
RBGSP4Padding2 = (int(("0x" + data[434:436]), 16))
RBGSP4Damage = (int(("0x" + data[436:440]), 16))
RBGSP4Down = (int(("0x" + data[440:444]), 16))
RBGSP4KBVelocity = (int(("0x" + data[444:448]), 16))
RBGSP4KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[448:452]), 16)))))[0]
RBGSP4Hitstun = (int(("0x" + data[452:456]), 16))
RBGSP4OnHitGravity = (int(("0x" + data[456:460]), 16))
RBGSP4KBVelocityDowned = (int(("0x" + data[460:464]), 16))
RBGSP4KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[464:468]), 16)))))[0]
RBGSP4OnHitGravityDowned = (int(("0x" + data[468:472]), 16))

RBGSP5PhaseDuration = (int(("0x" + data[472:476]), 16))
RBGSP5Padding = (int(("0x" + data[476:480]), 16))
RBGSP5PhaseSpeed = hex_to_float(hex(int(data[480:488],16)))
RBGSP5HorizontalHoming = hex_to_float(hex(int(data[488:496],16)))
RBGSP5VerticalHoming = hex_to_float(hex(int(data[496:504],16)))
RBGSP5ShotSize = hex_to_float(hex(int(data[504:512],16)))
RBGSP5LingeringHitboxDuration = (int(("0x" + data[512:514]), 16))
RBGSP5Padding2 = (int(("0x" + data[514:516]), 16))
RBGSP5Damage = (int(("0x" + data[516:520]), 16))
RBGSP5Down = (int(("0x" + data[520:524]), 16))
RBGSP5KBVelocity = (int(("0x" + data[524:528]), 16))
RBGSP5KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[528:532]), 16)))))[0]
RBGSP5Hitstun = (int(("0x" + data[532:536]), 16))
RBGSP5OnHitGravity = (int(("0x" + data[536:540]), 16))
RBGSP5KBVelocityDowned = (int(("0x" + data[540:544]), 16))
RBGSP5KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[544:548]), 16)))))[0]
RBGSP5OnHitGravityDowned = (int(("0x" + data[548:552]), 16))

RBASStartup = (int(("0x" + data[552:554]), 16))
RBASNumberofShots = (int(("0x" + data[554:556]), 16))
RBASRoundsperShot = (int(("0x" + data[556:558]), 16))
RBASShotSpread = (int(("0x" + data[558:560]), 16))
RBASDelayBetweenShots = (int(("0x" + data[560:562]), 16))
RBASEndlag = (int(("0x" + data[562:564]), 16))
RBASShotRandomization = (int(("0x" + data[564:568]), 16))
RBASSpreadPhase = (int(("0x" + data[568:570]), 16))
RBASPadding = (int(("0x" + data[570:572]), 16))
RBASInitialShotAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[572:576]), 16)))))[0]
RBASAngleBetweenShots = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[576:580]), 16)))))[0]
RBASUnknown25 = (int(("0x" + data[580:584]), 16))
RBASP1PhaseDuration = (int(("0x" + data[584:588]), 16))
RBASP1Padding = (int(("0x" + data[588:592]), 16))
RBASP1PhaseSpeed = hex_to_float(hex(int(data[592:600], 16)))
RBASP1HorizontalHoming = hex_to_float(hex(int(data[600:608], 16)))
RBASP1VerticalHoming = hex_to_float(hex(int(data[608:616], 16)))
RBASP1ShotSize = hex_to_float(hex(int(data[616:624], 16)))
RBASP1LingeringHitboxDuration = (int(("0x" + data[624:626]), 16))
RBASP1Padding2 = (int(("0x" + data[626:628]), 16))
RBASP1Damage = (int(("0x" + data[628:632]), 16))
RBASP1Down = (int(("0x" + data[632:636]), 16))
RBASP1KBVelocity = (int(("0x" + data[636:640]), 16))
RBASP1KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[640:644]), 16)))))[0]
RBASP1Hitstun = (int(("0x" + data[644:648]), 16))
RBASP1OnHitGravity = (int(("0x" + data[648:652]), 16))
RBASP1KBVelocityDowned = (int(("0x" + data[652:656]), 16))
RBASP1KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[656:660]), 16)))))[0]
RBASP1OnHitGravityDowned = (int(("0x" + data[660:664]), 16))
RBASP2PhaseDuration = (int(("0x" + data[664:668]), 16))
RBASP2Padding = (int(("0x" + data[668:672]), 16))
RBASP2PhaseSpeed = hex_to_float(hex(int(data[672:680], 16)))
RBASP2HorizontalHoming = hex_to_float(hex(int(data[680:688], 16)))
RBASP2VerticalHoming = hex_to_float(hex(int(data[688:696], 16)))
RBASP2ShotSize = hex_to_float(hex(int(data[696:704], 16)))
RBASP2LingeringHitboxDuration = (int(("0x" + data[704:706]), 16))
RBASP2Padding2 = (int(("0x" + data[706:708]), 16))
RBASP2Damage = (int(("0x" + data[708:712]), 16))
RBASP2Down = (int(("0x" + data[712:716]), 16))
RBASP2KBVelocity = (int(("0x" + data[716:720]), 16))
RBASP2KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[720:724]), 16)))))[0]
RBASP2Hitstun = (int(("0x" + data[724:728]), 16))
RBASP2OnHitGravity = (int(("0x" + data[728:732]), 16))
RBASP2KBVelocityDowned = (int(("0x" + data[732:736]), 16))
RBASP2KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[736:740]), 16)))))[0]
RBASP2OnHitGravityDowned = (int(("0x" + data[740:744]), 16))
RBASP3PhaseDuration = (int(("0x" + data[744:748]), 16))
RBASP3Padding = (int(("0x" + data[748:752]), 16))
RBASP3PhaseSpeed = hex_to_float(hex(int(data[752:760], 16)))
RBASP3HorizontalHoming = hex_to_float(hex(int(data[760:768], 16)))
RBASP3VerticalHoming = hex_to_float(hex(int(data[768:776], 16)))
RBASP3ShotSize = hex_to_float(hex(int(data[776:784], 16)))
RBASP3LingeringHitboxDuration = (int(("0x" + data[784:786]), 16))
RBASP3Padding2 = (int(("0x" + data[786:788]), 16))
RBASP3Damage = (int(("0x" + data[788:792]), 16))
RBASP3Down = (int(("0x" + data[792:796]), 16))
RBASP3KBVelocity = (int(("0x" + data[796:800]), 16))
RBASP3KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[800:804]), 16)))))[0]
RBASP3Hitstun = (int(("0x" + data[804:808]), 16))
RBASP3OnHitGravity = (int(("0x" + data[808:812]), 16))
RBASP3KBVelocityDowned = (int(("0x" + data[812:816]), 16))
RBASP3KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[816:820]), 16)))))[0]
RBASP3OnHitGravityDowned = (int(("0x" + data[820:824]), 16))
RBASP4PhaseDuration = (int(("0x" + data[824:828]), 16))
RBASP4Padding = (int(("0x" + data[828:832]), 16))
RBASP4PhaseSpeed = hex_to_float(hex(int(data[832:840], 16)))
RBASP4HorizontalHoming = hex_to_float(hex(int(data[840:848], 16)))
RBASP4VerticalHoming = hex_to_float(hex(int(data[848:856], 16)))
RBASP4ShotSize = hex_to_float(hex(int(data[856:864], 16)))
RBASP4LingeringHitboxDuration = (int(("0x" + data[864:866]), 16))
RBASP4Padding2 = (int(("0x" + data[866:868]), 16))
RBASP4Damage = (int(("0x" + data[868:872]), 16))
RBASP4Down = (int(("0x" + data[872:876]), 16))
RBASP4KBVelocity = (int(("0x" + data[876:880]), 16))
RBASP4KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[880:884]), 16)))))[0]
RBASP4Hitstun = (int(("0x" + data[884:888]), 16))
RBASP4OnHitGravity = (int(("0x" + data[888:892]), 16))
RBASP4KBVelocityDowned = (int(("0x" + data[892:896]), 16))
RBASP4KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[896:900]), 16)))))[0]
RBASP4OnHitGravityDowned = (int(("0x" + data[900:904]), 16))
RBASP5PhaseDuration = (int(("0x" + data[904:908]), 16))
RBASP5Padding = (int(("0x" + data[908:912]), 16))
RBASP5PhaseSpeed = hex_to_float(hex(int(data[912:920], 16)))
RBASP5HorizontalHoming = hex_to_float(hex(int(data[920:928], 16)))
RBASP5VerticalHoming = hex_to_float(hex(int(data[928:936], 16)))
RBASP5ShotSize = hex_to_float(hex(int(data[936:944], 16)))
RBASP5LingeringHitboxDuration = (int(("0x" + data[944:946]), 16))
RBASP5Padding2 = (int(("0x" + data[946:948]), 16))
RBASP5Damage = (int(("0x" + data[948:952]), 16))
RBASP5Down = (int(("0x" + data[952:956]), 16))
RBASP5KBVelocity = (int(("0x" + data[956:960]), 16))
RBASP5KBAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[960:964]), 16)))))[0]
RBASP5Hitstun = (int(("0x" + data[964:968]), 16))
RBASP5OnHitGravity = (int(("0x" + data[968:972]), 16))
RBASP5KBVelocityDowned = (int(("0x" + data[972:976]), 16))
RBASP5KBAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[976:980]), 16)))))[0]
RBASP5OnHitGravityDowned = (int(("0x" + data[980:984]), 16))
DataOutput = \
    "byte[56] |\n" + \
    str(RBIllegal) + ",| #Illegal Toggle \n" + \
    str(RBSlideshotDuration) + ", | #Slideshot Duration \n" + \
    str(RBHomingNonFacingRounds) + ", | #Related to Homing when rounds aren't facing the opponent \n" + \
    str(RBNothingA) + ", " + str(RBNothingB) + ", " + str(RBNothingC) + ", " + str(RBNothingD) + ", | #Nothing? \n" + \
    str(RBTrailVFX) + ", | #Trail (0 for Invisible, 1 for Trail VFX) \n" + \
    str(RBLeftPortionRBGA1) + ", " + str(RBLeftPortionRBGA2) + ", " + str(RBLeftPortionRBGA3) + ", " + str(RBLeftPortionRBGA4) + ", | #Left Portion RGBA \n" + \
    str(RBMiddlePortionRBGA1) + ", " + str(RBMiddlePortionRBGA2) + ", " + str(RBMiddlePortionRBGA3) + ", " + str(RBMiddlePortionRBGA4) + ", | #Middle Portion RGBA \n" + \
    str(RBRightPortionRBGA1) + ", " + str(RBRightPortionRBGA2) + ", " + str(RBRightPortionRBGA3) + ", " + str(RBRightPortionRBGA4) + ", | #Right Portion RGBA \n" + \
    str(RBUnknownPortionRBGA1) + ", " + str(RBUnknownPortionRBGA2) + ", " + str(RBUnknownPortionRBGA3) + ", " + str(RBUnknownPortionRBGA4) + ", | #Unknown RGBA \n" + \
    str(RBTrailDuration1) + ", " + str(RBTrailDuration2) + ", " + str(RBTrailDuration3) + ", " + str(RBTrailDuration4) + ", | #Trail Duration \n" + \
    str(RBTrailUnknown1) + ", " + str(RBTrailUnknown2) + ", " + str(RBTrailUnknown3) + ", " + str(RBTrailUnknown4) + ", | #???? \n" + \
    str(RBUnknown1) + ", " + str(RBUnknown2) + ", " + str(RBUnknown3) + ", " + str(RBUnknown4) + ", " + str(RBUnknown5) + ", " + str(RBUnknown6) + ", " + str(RBUnknown7) + ", " + str(RBUnknown8) + ", " + str(RBUnknown9) + ", " + str(RBUnknown10) + ", " + str(RBUnknown11) + ", " + str(RBUnknown12) + ", " + str(RBUnknown13) + ", " + str(RBUnknown14) + ", " + str(RBUnknown15) + ", " + str(RBUnknown16) + ", " + str(RBUnknown17) + ", " + str(RBUnknown18) + ", " + str(RBUnknown19) + ", " + str(RBUnknown20) + ", " + str(RBUnknown21) + ", " + str(RBUnknown22) + ", " + str(RBUnknown23) + ", " + str(RBUnknown24) + " #???? \n" + \
    "float " + str(RBTrailWidth) + " #Trail Width, Start of Ground Shot \n" + \
    "#############\n#Ground Shot#\n#############\nbyte[6] |\n" + \
    str(RBGSStartup) + ", | #Startup \n" + \
    str(RBGSNumberofShots) + ", | #Number of Shots \n" + \
    str(RBGSRoundsperShot) + ", | #Rounds per Shot \n" + \
    str(RBGSShotSpread) + ", | #Shot Spread (00 for Vertical, 01 for Horizontal) \n" + \
    str(RBGSDelayBetweenShots) + ", | #Delay Between Shots \n" + \
    str(RBGSEndlag) + " #Endlag \n" + \
    "half " + str(RBGSShotRandomization) + " #Shot Randomization \n" + \
    "byte[2] |\n" + \
    str(RBGSSpreadPhase) + ", | #Spread Phase \n" + \
    str(RBGSPadding) + " #Padding \n" + \
    "half[3] |\n" + \
    str(RBGSInitialShotAngle) + ", | #Initial Shot Angle \n" + \
    str(RBGSAngleBetweenShots) + ", | #Angle Between Simultaneous Shots \n" + \
    str(RBGSUnknown25) + " #???? \n" + \
    "#First Phase\nhalf[2] |\n" + \
    str(RBGSP1PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBGSP1Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBGSP1PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBGSP1HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBGSP1VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBGSP1ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBGSP1LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBGSP1Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBGSP1Damage) + ", | #Damage \n" + \
    str(RBGSP1Down) + ", | #Down \n" + \
    str(RBGSP1KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBGSP1KBAngle) + ", | #Knockback Angle \n" + \
    str(RBGSP1Hitstun) + ", | #Hitstun \n" + \
    str(RBGSP1OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBGSP1KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBGSP1KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBGSP1OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n"
DataOutput2 = \
    "#Second Phase\nhalf[2] |\n" + \
    str(RBGSP2PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBGSP2Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBGSP2PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBGSP2HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBGSP2VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBGSP2ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBGSP2LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBGSP2Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBGSP2Damage) + ", | #Damage \n" + \
    str(RBGSP2Down) + ", | #Down \n" + \
    str(RBGSP2KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBGSP2KBAngle) + ", | #Knockback Angle \n" + \
    str(RBGSP2Hitstun) + ", | #Hitstun \n" + \
    str(RBGSP2OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBGSP2KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBGSP2KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBGSP2OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n" + \
    "#Third Phase\nhalf[2] |\n" + \
    str(RBGSP3PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBGSP3Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBGSP3PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBGSP3HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBGSP3VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBGSP3ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBGSP3LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBGSP3Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBGSP3Damage) + ", | #Damage \n" + \
    str(RBGSP3Down) + ", | #Down \n" + \
    str(RBGSP3KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBGSP3KBAngle) + ", | #Knockback Angle \n" + \
    str(RBGSP3Hitstun) + ", | #Hitstun \n" + \
    str(RBGSP3OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBGSP3KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBGSP3KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBGSP3OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n" + \
    "#Fourth Phase\nhalf[2] |\n" + \
    str(RBGSP4PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBGSP4Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBGSP4PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBGSP4HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBGSP4VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBGSP4ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBGSP4LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBGSP4Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBGSP4Damage) + ", | #Damage \n" + \
    str(RBGSP4Down) + ", | #Down \n" + \
    str(RBGSP4KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBGSP4KBAngle) + ", | #Knockback Angle \n" + \
    str(RBGSP4Hitstun) + ", | #Hitstun \n" + \
    str(RBGSP4OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBGSP4KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBGSP4KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBGSP4OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n" + \
    "#Fifth Phase\nhalf[2] |\n" + \
    str(RBGSP5PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBGSP5Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBGSP5PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBGSP5HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBGSP5VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBGSP5ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBGSP5LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBGSP5Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBGSP5Damage) + ", | #Damage \n" + \
    str(RBGSP5Down) + ", | #Down \n" + \
    str(RBGSP5KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBGSP5KBAngle) + ", | #Knockback Angle \n" + \
    str(RBGSP5Hitstun) + ", | #Hitstun \n" + \
    str(RBGSP5OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBGSP5KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBGSP5KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBGSP5OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n"
DataOutput3 = \
    "##########\n#Air Shot#\n##########\nbyte[6] |\n" + \
    str(RBASStartup) + ", | #Startup \n" + \
    str(RBASNumberofShots) + ", | #Number of Shots \n" + \
    str(RBASRoundsperShot) + ", | #Rounds per Shot \n" + \
    str(RBASShotSpread) + ", | #Shot Spread (00 for Vertical, 01 for Horizontal) \n" + \
    str(RBASDelayBetweenShots) + ", | #Delay Between Shots \n" + \
    str(RBASEndlag) + " #Endlag \n" + \
    "half " + str(RBASShotRandomization) + " #Shot Randomization \n" + \
    "byte[2] |\n" + \
    str(RBASSpreadPhase) + ", | #Spread Phase \n" + \
    str(RBASPadding) + " #Padding \n" + \
    "half[3] |\n" + \
    str(RBASInitialShotAngle) + ", | #Initial Shot Angle \n" + \
    str(RBASAngleBetweenShots) + ", | #Angle Between Simultaneous Shots \n" + \
    str(RBASUnknown25) + " #???? \n" + \
    "#First Phase\nhalf[2] |\n" + \
    str(RBASP1PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBASP1Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBASP1PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBASP1HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBASP1VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBASP1ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBASP1LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBASP1Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBASP1Damage) + ", | #Damage \n" + \
    str(RBASP1Down) + ", | #Down \n" + \
    str(RBASP1KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBASP1KBAngle) + ", | #Knockback Angle \n" + \
    str(RBASP1Hitstun) + ", | #Hitstun \n" + \
    str(RBASP1OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBASP1KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBASP1KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBASP1OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n" + \
    "#Second Phase\nhalf[2] |\n" + \
    str(RBASP2PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBASP2Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBASP2PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBASP2HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBASP2VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBASP2ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBASP2LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBASP2Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBASP2Damage) + ", | #Damage \n" + \
    str(RBASP2Down) + ", | #Down \n" + \
    str(RBASP2KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBASP2KBAngle) + ", | #Knockback Angle \n" + \
    str(RBASP2Hitstun) + ", | #Hitstun \n" + \
    str(RBASP2OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBASP2KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBASP2KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBASP2OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n"
DataOutput4 = \
    "#Third Phase\nhalf[2] |\n" + \
    str(RBASP3PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBASP3Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBASP3PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBASP3HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBASP3VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBASP3ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBASP3LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBASP3Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBASP3Damage) + ", | #Damage \n" + \
    str(RBASP3Down) + ", | #Down \n" + \
    str(RBASP3KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBASP3KBAngle) + ", | #Knockback Angle \n" + \
    str(RBASP3Hitstun) + ", | #Hitstun \n" + \
    str(RBASP3OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBASP3KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBASP3KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBASP3OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n" + \
    "#Fourth Phase\nhalf[2] |\n" + \
    str(RBASP4PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBASP4Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBASP4PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBASP4HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBASP4VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBASP4ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBASP4LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBASP4Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBASP4Damage) + ", | #Damage \n" + \
    str(RBASP4Down) + ", | #Down \n" + \
    str(RBASP4KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBASP4KBAngle) + ", | #Knockback Angle \n" + \
    str(RBASP4Hitstun) + ", | #Hitstun \n" + \
    str(RBASP4OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBASP4KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBASP4KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBASP4OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n" + \
    "#Fifth Phase\nhalf[2] |\n" + \
    str(RBASP5PhaseDuration) + ", | #Phase Duration \n" + \
    str(RBASP5Padding) + " #Padding \n" + \
    "float[4] |\n" + \
    str(RBASP5PhaseSpeed) + ", | #Phase Speed \n" + \
    str(RBASP5HorizontalHoming) + ", | #Horizontal Homing \n" + \
    str(RBASP5VerticalHoming) + ", | #Vertical Homing \n" + \
    str(RBASP5ShotSize) + " #Shot Size \n" + \
    "byte[2] |\n" + \
    str(RBASP5LingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(RBASP5Padding2) + " #Padding \n" + \
    "half[9] |\n" + \
    str(RBASP5Damage) + ", | #Damage \n" + \
    str(RBASP5Down) + ", | #Down \n" + \
    str(RBASP5KBVelocity) + ", | #Knockback Velocity \n" + \
    str(RBASP5KBAngle) + ", | #Knockback Angle \n" + \
    str(RBASP5Hitstun) + ", | #Hitstun \n" + \
    str(RBASP5OnHitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBASP5KBVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBASP5KBAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBASP5OnHitGravityDowned) + " #On-Hit Gravity (Downed) \n"
DataOutput = DataOutput + DataOutput2 + DataOutput3 + DataOutput4
pyperclip.copy(DataOutput)
print(DataOutput)
