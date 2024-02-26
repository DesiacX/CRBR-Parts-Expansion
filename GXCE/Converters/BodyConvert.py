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


RBDown = (int(("0x" + data[0:4]), 16))

RBDefense = (int(("0x" + data[4:6]), 16))
RBKnockback = (int(("0x" + data[6:8]), 16))
RBHitstun = (int(("0x" + data[8:10]), 16))
RBIllegal = (int(("0x" + data[10:12]), 16))
RBDownMashless = (int(("0x" + data[12:14]), 16))
RBDownMashing = (int(("0x" + data[14:16]), 16))
RBDownGunDMG = (int(("0x" + data[16:18]), 16))
RBDownBombDMG = (int(("0x" + data[18:20]), 16))
RBDownPodDMG = (int(("0x" + data[20:22]), 16))
RBDownChargeDMG = (int(("0x" + data[22:24]), 16))
RBGunDMG = (int(("0x" + data[24:26]), 16))
RBBombDMG = (int(("0x" + data[26:28]), 16))
RBPodDMG = (int(("0x" + data[28:30]), 16))
RBGunEndlag = (int(("0x" + data[30:32]), 16))
RBReducedADS = (int(("0x" + data[32:34]), 16))
RBUnmodifiedADS = (int(("0x" + data[34:36]), 16))
RBBoostedADS = (int(("0x" + data[36:38]), 16))
RBReducedDLL = (int(("0x" + data[38:40]), 16))
RBUnmodifiedDLL = (int(("0x" + data[40:42]), 16))
RBBoostedDLL = (int(("0x" + data[42:44]), 16))
RBADType = (int(("0x" + data[44:46]), 16))
RBJumpCount = (int(("0x" + data[46:48]), 16))

RBReducedCJH = (int(("0x" + data[48:52]), 16))
RBUnmodifiedCJH = (int(("0x" + data[52:56]), 16))
RBBoostedCJH = (int(("0x" + data[56:60]), 16))

RBAirDashCount = (int(("0x" + data[60:62]), 16))
RBSVAirDashToggle = (int(("0x" + data[62:64]), 16))
RBAirDashAngle = (int(("0x" + data[64:66]), 16))

RBReducedADL = (int(("0x" + data[66:68]), 16))
RBUnmodifiedADL = (int(("0x" + data[68:70]), 16))
RBBoostedADL = (int(("0x" + data[70:72]), 16))

RBReducedBADS = (int(("0x" + data[72:76]), 16))
RBUnmodifiedBADS = (int(("0x" + data[76:80]), 16))
RBBoostedBADS = (int(("0x" + data[80:84]), 16))

RBReducedBLST = (int(("0x" + data[84:88]), 16))
RBUnmodifiedBLST = (int(("0x" + data[88:92]), 16))
RBBoostedBLST = (int(("0x" + data[92:96]), 16))

RBReducedBRS = (int(("0x" + data[96:100]), 16))
RBUnmodifiedBRS = (int(("0x" + data[100:104]), 16))
RBBoostedBRS = (int(("0x" + data[104:108]), 16))

RBReducedBGA = (int(("0x" + data[108:112]), 16))
RBUnmodifiedBGA = (int(("0x" + data[112:116]), 16))
RBBoostedBGA = (int(("0x" + data[116:120]), 16))

RBReducedBGT = (int(("0x" + data[120:124]), 16))
RBUnmodifiedBGT = (int(("0x" + data[124:128]), 16))
RBBoostedBGT = (int(("0x" + data[128:132]), 16))

RBReducedBJH = (int(("0x" + data[132:136]), 16))
RBUnmodifiedBJH = (int(("0x" + data[136:140]), 16))
RBBoostedBJH = (int(("0x" + data[140:144]), 16))

RBReducedBJS = (int(("0x" + data[144:148]), 16))
RBUnmodifiedBJS = (int(("0x" + data[148:152]), 16))
RBBoostedBJS = (int(("0x" + data[152:156]), 16))

RBReducedBLAS = (int(("0x" + data[156:160]), 16))
RBUnmodifiedBLAS = (int(("0x" + data[160:164]), 16))
RBBoostedBLAS = (int(("0x" + data[164:168]), 16))

RBReducedBAA = (int(("0x" + data[168:172]), 16))
RBUnmodifiedBAA = (int(("0x" + data[172:176]), 16))
RBBoostedBAA = (int(("0x" + data[176:180]), 16))

RBReducedBLL = (int(("0x" + data[180:184]), 16))
RBUnmodifiedBLL = (int(("0x" + data[184:188]), 16))
RBBoostedBLL = (int(("0x" + data[188:192]), 16))

RBReducedBGR = (int(("0x" + data[192:196]), 16))
RBUnmodifiedBGR = (int(("0x" + data[196:200]), 16))
RBBoostedBGR = (int(("0x" + data[200:204]), 16))

RBCollisionBoxSizeA = (int(("0x" + data[204:208]), 16))
RBCollisionBoxSizeB = (int(("0x" + data[208:212]), 16))
RBUnknownA = (int(("0x" + data[212:216]), 16))
RBHurtBoxSize = (int(("0x" + data[216:220]), 16))
RBUnknownB = (int(("0x" + data[220:224]), 16))

#ChargeA
ChargeAWord1 = ("0x" + data[224:232])
ChargeAWord2 = ("0x" + data[232:240])
ChargeAWord3 = ("0x" + data[240:248])
ChargeAWord4 = ("0x" + data[248:256])
ChargeAWord5 = ("0x" + data[256:264])
ChargeAWord6 = ("0x" + data[264:272])
ChargeAWord7 = ("0x" + data[272:280])
ChargeAWord8 = ("0x" + data[280:288])

RBChargeAInvulnerability = (int(("0x" + data[288:290]), 16))
RBChargeAInvisibility = (int(("0x" + data[290:292]), 16))

RBChargeADMG = (int(("0x" + data[292:296]), 16))
RBChargeAKnockbackVelocity = (int(("0x" + data[296:300]), 16))
RBChargeAKnockbackAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[300:304]), 16)))))[0]
RBChargeAHoming = (int(("0x" + data[304:308]), 16))
RBChargeAStartupPhaseDuration = (int(("0x" + data[308:312]), 16))
RBChargeAAttachPhaseDuration = (int(("0x" + data[312:316]), 16))
RBChargeARecoveryPhaseDuration = (int(("0x" + data[316:320]), 16))
RBChargeAStarupPhaseSpeed = (int(("0x" + data[320:324]), 16))
RBChargeAAttackPhaseSpeed = (int(("0x" + data[324:328]), 16))
RBChargeARecoveryPhaseSpeed = (int(("0x" + data[328:332]), 16))
RBChargeAStartupPhaseAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[332:336]), 16)))))[0]
RBChargeAAttackPhaseAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[336:340]), 16)))))[0]
RBChargeARecoveryPhaseAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[340:344]), 16)))))[0]
RBChargeAHitboxSizeA = (int(("0x" + data[344:348]), 16))
RBChargeAHitboxSizeB = (int(("0x" + data[348:352]), 16))
RBChargeAHitboxSizeC = (int(("0x" + data[352:356]), 16))

# ChargeB
ChargeBWord1 = ("0x" + data[356:364])
ChargeBWord2 = ("0x" + data[364:372])
ChargeBWord3 = ("0x" + data[372:380])
ChargeBWord4 = ("0x" + data[380:388])
ChargeBWord5 = ("0x" + data[388:396])
ChargeBWord6 = ("0x" + data[396:404])
ChargeBWord7 = ("0x" + data[404:412])
ChargeBWord8 = ("0x" + data[412:420])

RBChargeBInvulnerability = (int(("0x" + data[420:422]), 16))
RBChargeBInvisibility = (int(("0x" + data[422:424]), 16))

RBChargeBDMG = (int(("0x" + data[424:428]), 16))
RBChargeBKnockbackVelocity = (int(("0x" + data[428:432]), 16))
RBChargeBKnockbackAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[432:436]), 16)))))[0]
RBChargeBHoming = (int(("0x" + data[436:440]), 16))
RBChargeBStartupPhaseDuration = (int(("0x" + data[440:444]), 16))
RBChargeBAttachPhaseDuration = (int(("0x" + data[444:448]), 16))
RBChargeBRecoveryPhaseDuration = (int(("0x" + data[448:452]), 16))
RBChargeBStarupPhaseSpeed = (int(("0x" + data[452:456]), 16))
RBChargeBAttackPhaseSpeed = (int(("0x" + data[456:460]), 16))
RBChargeBRecoveryPhaseSpeed = (int(("0x" + data[460:464]), 16))
RBChargeBStartupPhaseAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[464:468]), 16)))))[0]
RBChargeBAttackPhaseAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[468:472]), 16)))))[0]
RBChargeBRecoveryPhaseAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[476:480]), 16)))))[0]
RBChargeBHitboxSizeA = (int(("0x" + data[476:480]), 16))
RBChargeBHitboxSizeB = (int(("0x" + data[480:484]), 16))
RBChargeBHitboxSizeC = (int(("0x" + data[484:488]), 16))

DataOutput = \
    "half[1] |\n" + \
    str(RBDown) + ", #Down \n" + \
    "byte[22] |\n" + \
    str(RBDefense) + ", | #Defense \n" + \
    str(RBKnockback) + ", | #Knockback \n" + \
    str(RBHitstun) + ", | #Hitstun \n" + \
    str(RBIllegal) + ", | #Illegal Toggle \n" + \
    str(RBDownMashless) + ", | #Time Spent Down without Mashing \n" + \
    str(RBDownMashing) + ", | #Time Spent Down with Mashing \n" + \
    str(RBDownGunDMG) + ", | #Damage taken from guns when downed \n" + \
    str(RBDownBombDMG) + ", | #Damage taken from bombs when downed \n" + \
    str(RBDownPodDMG) + ", | #Damage taken from pods when downed \n" + \
    str(RBDownChargeDMG) + ", | #Damage taken from charges when downed \n" + \
    str(RBGunDMG) + ", | #Gun Damage \n" + \
    str(RBBombDMG) + ", | #Bomb Damage \n" + \
    str(RBPodDMG) + ", | #Pod Damage \n" + \
    str(RBGunEndlag) + ", | #Gun Endlag \n" + \
    str(RBReducedADS) + ", " + str(RBUnmodifiedADS) + ", " + str(RBBoostedADS) + ", | #Reduced, Unmodified, and Boosted Air Dash Startup \n" + \
    str(RBReducedDLL) + ", " + str(RBUnmodifiedDLL) + ", " + str(RBBoostedDLL) + ", | #Reduced, Unmodified, and Boosted Dash Landing Lag \n" + \
    str(RBADType) + ", | #Air Dash Type(00 = Normal Air Dash, 01 = Continuous Jump, 02 = LS) \n" + \
    str(RBJumpCount) + " #Number of Continuous Jumps \n" + \
    "half[3] |\n" + \
    str(RBReducedCJH) + ", " + str(RBUnmodifiedCJH) + ", " + str(RBBoostedCJH) + " #Reduced, Unmodified, and Boosted Continuous Jump Height \n" + \
    "byte[6] |\n" + \
    str(RBAirDashCount) + ", | #Number of Air Dashes \n" + \
    str(RBSVAirDashToggle) + ", | #SV Air Dash Toggle \n" + \
    str(RBAirDashAngle) + ", | #Air Dash Angle \n" + \
    str(RBReducedADL) + ", " + str(RBUnmodifiedADL) + ", " + str(RBBoostedADL) + "#Reduced, Unmodified, and Boosted Air Dash Length \n" + \
    "half [38] |\n" + \
    str(RBReducedBADS) + ", " + str(RBUnmodifiedBADS) + ", " + str(RBBoostedBADS) + ", | #Reduced, Unmodified, and Boosted Air Dash Speed \n" + \
    str(RBReducedBLST) + ", " + str(RBUnmodifiedBLST) + ", " + str(RBBoostedBLST) + ", | #Reduced, Unmodified, and Boosted LS Dash Turning \n" + \
    str(RBReducedBRS) + ", " + str(RBUnmodifiedBRS) + ", " + str(RBBoostedBRS) + ", | #Reduced, Unmodified, and Boosted Run Speed \n" + \
    str(RBReducedBGA) + ", " + str(RBUnmodifiedBGA) + ", " + str(RBBoostedBGA) + ", | #Reduced, Unmodified, and Boosted Ground Acceleration \n" + \
    str(RBReducedBGT) + ", " + str(RBUnmodifiedBGT) + ", " + str(RBBoostedBGT) + ", | #Reduced, Unmodified, and Boosted Ground Turning \n" + \
    str(RBReducedBJH) + ", " + str(RBUnmodifiedBJH) + ", " + str(RBBoostedBJH) + ", | #Reduced, Unmodified, and Boosted Jump Height \n" + \
    str(RBReducedBJS) + ", " + str(RBUnmodifiedBJS) + ", " + str(RBBoostedBJS) + ", | #Reduced, Unmodified, and Boosted Jump Speed \n" + \
    str(RBReducedBLAS) + ", " + str(RBUnmodifiedBLAS) + ", " + str(RBBoostedBLAS) + ", | #Reduced, Unmodified, and Boosted Lateral Air Speed \n" + \
    str(RBReducedBAA) + ", " + str(RBUnmodifiedBAA) + ", " + str(RBBoostedBAA) + ", | #Reduced, Unmodified, and Boosted Air Acceleration \n" + \
    str(RBReducedBLL) + ", " + str(RBUnmodifiedBLL) + ", " + str(RBBoostedBLL) + ", | #Reduced, Unmodified, and Boosted Landing Lag \n" + \
    str(RBReducedBGR) + ", " + str(RBUnmodifiedBGR) + ", " + str(RBBoostedBGR) + ", | #Reduced, Unmodified, and Boosted Gravity \n" + \
    str(RBCollisionBoxSizeA) + ", | #Collision Box Size Related \n" + \
    str(RBCollisionBoxSizeB) + ", | #Collision Box Size Related \n" + \
    str(RBUnknownA) + ", | #???? \n" + \
    str(RBHurtBoxSize) + ", | #Hurtbox Size\n" + \
    str(RBUnknownB) + " #???? \n" + \
    "word [8] |\n" + \
    str(ChargeAWord1) + ", " + str(ChargeAWord2) + ", " + str(ChargeAWord3) + ", " + str(ChargeAWord4) + ", " + str(ChargeAWord5) + ", " + str(ChargeAWord6) + ", " + str(ChargeAWord7) + ", " + str(ChargeAWord8) + " #Charge Title\n" + \
    "byte [2] |\n" + \
    str(RBChargeAInvulnerability) + ", | #Invulnerability\n" + \
    str(RBChargeAInvisibility) + " #Invisibility\n" + \
    "half [16] |\n" + \
    str(RBChargeADMG) + ", | #Charge Damage\n" + \
    str(RBChargeAKnockbackVelocity) + ", | #Knockback Velocity\n" + \
    str(RBChargeAKnockbackAngle) + ", | #Knockback Angle\n" + \
    str(RBChargeAHoming) + ", | #Homing\n" + \
    str(RBChargeAStartupPhaseDuration) + ", | #Startup Phase Duration (+3 for # of Frames)\n" + \
    str(RBChargeAAttachPhaseDuration) + ", | #Attack Phase Duration (+1 for # of Frames)\n" + \
    str(RBChargeARecoveryPhaseDuration) + ", | #Recovery Phase Duration\n" + \
    str(RBChargeAStarupPhaseSpeed) + ", | #Startup Phase Speed\n" + \
    str(RBChargeAAttackPhaseSpeed) + ", | #Attack Phase Speed\n" + \
    str(RBChargeARecoveryPhaseSpeed) + ", | #Recovery Phase Speed\n" + \
    str(RBChargeAStartupPhaseAngle) + ", | #Startup Phase Angle\n" + \
    str(RBChargeAAttackPhaseAngle) + ", | #Attack Phase Angle\n" + \
    str(RBChargeARecoveryPhaseAngle) + ", | #Recovery Phase Angle\n" + \
    str(RBChargeAHitboxSizeA) + ", | #Hitbox Size Related\n" + \
    str(RBChargeAHitboxSizeB) + ", | #Hitbox Size Related\n" + \
    str(RBChargeAHitboxSizeC) + " #Hitbox Size Related\n" + \
    "word [8] |\n" + \
    str(ChargeBWord1) + ", " + str(ChargeBWord2) + ", " + str(ChargeBWord3) + ", " + str(ChargeBWord4) + ", " + str(ChargeBWord5) + ", " + str(ChargeBWord6) + ", " + str(ChargeBWord7) + ", " + str(ChargeBWord8) + " #Charge Title\n" + \
    "byte [2] |\n" + \
    str(RBChargeBInvulnerability) + ", | #Invulnerability\n" + \
    str(RBChargeBInvisibility) + " | #Invisibility\n" + \
    "half [16] |\n" + \
    str(RBChargeBDMG) + ", | #Charge Damage\n" + \
    str(RBChargeBKnockbackVelocity) + ", | #Knockback Velocity\n" + \
    str(RBChargeBKnockbackAngle) + ", | #Knockback Angle\n" + \
    str(RBChargeBHoming) + ", | #Homing\n" + \
    str(RBChargeBStartupPhaseDuration) + ", | #Startup Phase Duration (+3 for # of Frames)\n" + \
    str(RBChargeBAttachPhaseDuration) + ", | #Attack Phase Duration (+1 for # of Frames)\n" + \
    str(RBChargeBRecoveryPhaseDuration) + ", | #Recovery Phase Duration\n" + \
    str(RBChargeBStarupPhaseSpeed) + ", | #Startup Phase Speed\n" + \
    str(RBChargeBAttackPhaseSpeed) + ", | #Attack Phase Speed\n" + \
    str(RBChargeBRecoveryPhaseSpeed) + ", | #Recovery Phase Speed\n" + \
    str(RBChargeBStartupPhaseAngle) + ", | #Startup Phase Angle\n" + \
    str(RBChargeBAttackPhaseAngle) + ", | #Attack Phase Angle\n" + \
    str(RBChargeBRecoveryPhaseAngle) + ", | #Recovery Phase Angle\n" + \
    str(RBChargeBHitboxSizeA) + ", | #Hitbox Size Related\n" + \
    str(RBChargeBHitboxSizeB) + ", | #Hitbox Size Related\n" + \
    str(RBChargeBHitboxSizeC) + " | #Hitbox Size Related\n"
print(DataOutput)
pyperclip.copy(DataOutput)