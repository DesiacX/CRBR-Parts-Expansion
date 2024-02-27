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
RBIllegal = data[0:2]
RBBombsFired = (int(("0x" + data[2:4]), 16))
RBGExplosionRadius = (int(("0x" + data[4:8]), 16))
RBGReticleStart = (int(("0x" + data[8:10]), 16))
RBGReload = (int(("0x" + data[10:12]), 16))
RBGBurrowTime = (int(("0x" + data[12:16]), 16))
RBGProjectileSpeed = (int(("0x" + data[16:20]), 16))
EmptyDataA = "0x" + data[20:24]
RBGExplosionCount = (int(("0x" + data[24:26]), 16))
RBGExplosionDelay = (int(("0x" + data[26:28]), 16))
RBGExplosionExpansionDuration = (int(("0x" + data[28:32]), 16))
RBGLingeringHitboxDuration = (int(("0x" + data[32:36]), 16 ))
EmptyDataB = "0x" + data[36:40]
RBGExplosionSizeAfterInitExpan = hex_to_float(hex(int(data[40:48],16)))
RBGFinalExplosionSize = hex_to_float(hex(int(data[48:56],16)))
RBGExplosionHeight = hex_to_float(hex(int(data[56:64],16)))
RBGDamage = (int(("0x" + data[64:68]), 16))
RBGDown = (int(("0x" + data[68:72]), 16))
RBGKnockbackVelocity = (int(("0x" + data[72:76]), 16))
RBGKnockbackAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[76:80]), 16)))))[0]
RBGHitstun = (int(("0x" + data[80:84]), 16))
RBGOnHitGravity = (int(("0x" + data[84:88]), 16))
RBGKnockbackVelocityDowned = (int(("0x" + data[88:92]), 16))
RBGKnockbackAngleDowned = (int(("0x" + data[92:96]), 16))
RBGOnHitGravityDowned = (int(("0x" + data[96:100]), 16))
EmptyDataC = "0x" + data[100:104]

RBG1LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[104:108]), 16)))))[0]
RBG1FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[108:112]), 16)))))[0]
RBG1VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[112:116]), 16)))))[0]
RBG1HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[116:120]), 16)))))[0]

RBG2LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[120:124]), 16)))))[0]
RBG2FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[124:128]), 16)))))[0]
RBG2VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[128:132]), 16)))))[0]
RBG2HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[132:136]), 16)))))[0]

RBG3LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[136:140]), 16)))))[0]
RBG3FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[140:144]), 16)))))[0]
RBG3VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[144:148]), 16)))))[0]
RBG3HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[148:152]), 16)))))[0]

RBG4LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[152:156]), 16)))))[0]
RBG4FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[156:160]), 16)))))[0]
RBG4VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[160:164]), 16)))))[0]
RBG4HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[164:168]), 16)))))[0]

RBAReticleStart = (int(("0x" + data[168:170]), 16))
RBAReload = (int(("0x" + data[170:172]), 16))
RBABurrowTime = (int(("0x" + data[172:176]), 16))
RBAProjectileSpeed = (int(("0x" + data[176:180]), 16))
EmptyDataD = "0x" + data[180:184]
RBAExplosionCount = (int(("0x" + data[184:186]), 16))
RBAExplosionDelay = (int(("0x" + data[186:188]), 16))
RBAExplosionExpansionDuration = (int(("0x" + data[188:192]), 16))
RBALingeringHitboxDuration = (int(("0x" + data[192:196]), 16 ))
EmptyDataE = "0x" + data[196:200]
RBAExplosionSizeAfterInitExpan = hex_to_float(hex(int(data[200:208],16)))
RBAFinalExplosionSize = hex_to_float(hex(int(data[208:216],16)))
RBAExplosionHeight = hex_to_float(hex(int(data[216:224],16)))
RBADamage = (int(("0x" + data[224:228]), 16))
RBADown = (int(("0x" + data[228:232]), 16))
RBAKnockbackVelocity = (int(("0x" + data[232:236]), 16))
RBAKnockbackAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[236:240]), 16)))))[0]
RBAHitstun = (int(("0x" + data[240:244]), 16))
RBAOnHitGravity = (int(("0x" + data[244:248]), 16))
RBAKnockbackVelocityDowned = (int(("0x" + data[248:252]), 16))
RBAKnockbackAngleDowned = (int(("0x" + data[252:256]), 16))
RBAOnHitGravityDowned = (int(("0x" + data[256:260]), 16))
EmptyDataF = "0x" + data[260:264]

RBA1LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[264:268]), 16)))))[0]
RBA1FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[268:272]), 16)))))[0]
RBA1VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[272:276]), 16)))))[0]
RBA1HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[276:280]), 16)))))[0]

RBA2LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[280:284]), 16)))))[0]
RBA2FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[284:288]), 16)))))[0]
RBA2VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[288:292]), 16)))))[0]
RBA2HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[292:296]), 16)))))[0]

RBA3LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[296:300]), 16)))))[0]
RBA3FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[300:304]), 16)))))[0]
RBA3VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[304:308]), 16)))))[0]
RBA3HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[308:312]), 16)))))[0]

RBA4LRDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[312:316]), 16)))))[0]
RBA4FBDisplacement = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[316:320]), 16)))))[0]
RBA4VerticalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[320:324]), 16)))))[0]
RBA4HorizantalArcAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[324:328]), 16)))))[0]

Filler1 = (("0x" + data[328:336]))
Filler2 = ((", 0x" + data[336:344]))
Filler3 = ((", 0x" + data[344:352]))
Filler4 = ((", 0x" + data[352:360]))
Filler5 = ((", 0x" + data[360:368]))
Filler6 = ((", 0x" + data[368:376]))
Filler7 = ((", 0x" + data[376:384]))
Filler8 = ((", 0x" + data[384:392]))
Filler9 = ((", 0x" + data[392:400]))
Filler10 = ((", 0x" + data[400:408]))
Filler11 = ((", 0x" + data[408:416]))
Filler12 = ((", 0x" + data[416:424]))
Filler13 = ((", 0x" + data[424:432]))
Filler14 = ((", 0x" + data[432:440]))

DataOutput = \
    "byte [2] |\n" + \
    RBIllegal + ", | #Illegal Toggle \n" + \
    str(RBBombsFired) + " #Number of Bombs Fired\n" + \
    "half [1] " + str(RBGExplosionRadius) + " #Explosion Trigger Radius\n" + \
    "#################\n## Ground Shot ##\n#################\n" + \
    "byte [2] |\n" + \
    str(RBGReticleStart) + ", | #Starting location of reticle (% of distance to opponent) \n" + \
    str(RBGReload) + ", #Reload \n" + \
    "half [3] |\n" + \
    str(RBGBurrowTime) + ", | #Burrow Time \n" + \
    str(RBGProjectileSpeed) + ", | #Projectile Speed \n" + \
    str(EmptyDataA) + " #Empty Data? \n" + \
    "byte [2] |\n" + \
    str(RBGExplosionCount) + ", | #Number of Explosions \n" + \
    str(RBGExplosionDelay) + " #Delay between Explosions \n" + \
    "half [3] |\n" + \
    str(RBGExplosionExpansionDuration) + ", | #Explosion Expansion Radius \n" + \
    str(RBGLingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(EmptyDataB) + " #Empty Data? \n" + \
    "float [3] |\n" + \
    str(RBGExplosionSizeAfterInitExpan) + ", | #Explosion Size after Initial Expansion \n" + \
    str(RBGFinalExplosionSize) + ", | #Final Explosion Size \n" + \
    str(RBGExplosionHeight) + " #Explosion Height \n" + \
    "half [10] |\n" + \
    str(RBGDamage) + ", | #Damage \n" + \
    str(RBGDown) + ", | #Down \n" + \
    str(RBGKnockbackVelocity) + ", | #Knockback Velocity \n" + \
    str(RBGKnockbackAngle) + ", | #Knockback Angle \n" + \
    str(RBGHitstun) + ", | #Histun \n" + \
    str(RBGOnHitGravity) + ", | #On Hit Gravity \n" + \
    str(RBGKnockbackVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBGKnockbackAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBGOnHitGravityDowned) + ", | #On Hit Gravity (Downed)\n" + \
    str(EmptyDataC) + " #Empty Data? \n" + \
    "\n##### First Ground Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBG1LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBG1FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBG1VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBG1HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "\n##### Second Ground Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBG2LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBG2FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBG2VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBG2HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "\n##### Third Ground Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBG3LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBG3FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBG3VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBG3HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "\n##### Fourth Ground Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBG4LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBG4FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBG4VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBG4HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "#################\n## Air Shot ##\n#################\n" + \
    "byte [2] |\n" + \
    str(RBAReticleStart) + ", | #Starting location of reticle (% of distance to opponent) \n" + \
    str(RBAReload) + " #Reload \n" + \
    "half [3] |\n" + \
    str(RBABurrowTime) + ", | #Burrow Time \n" + \
    str(RBAProjectileSpeed) + ", | #Projectile Speed \n" + \
    str(EmptyDataD) + " #Empty Data? \n" + \
    "byte [2] |\n" + \
    str(RBAExplosionCount) + ", | #Number of Explosions \n" + \
    str(RBAExplosionDelay) + " #Delay between Explosions \n" + \
    "half [3] |\n" + \
    str(RBAExplosionExpansionDuration) + ", | #Explosion Expansion Radius \n" + \
    str(RBALingeringHitboxDuration) + ", | #Lingering Hitbox Duration \n" + \
    str(EmptyDataE) + " #Empty Data? \n" + \
    "float [3] |\n" + \
    str(RBAExplosionSizeAfterInitExpan) + ", | #Explosion Size after Initial Expansion \n" + \
    str(RBAFinalExplosionSize) + ", | #Final Explosion Size \n" + \
    str(RBAExplosionHeight) + " #Explosion Height \n" + \
    "half [10] |\n" + \
    str(RBADamage) + ", | #Damage \n" + \
    str(RBADown) + ", | #Down \n" + \
    str(RBAKnockbackVelocity) + ", | #Knockback Velocity \n" + \
    str(RBAKnockbackAngle) + ", | #Knockback Angle \n" + \
    str(RBAHitstun) + ", | #Histun \n" + \
    str(RBAOnHitGravity) + ", | #On Hit Gravity \n" + \
    str(RBAKnockbackVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBAKnockbackAngleDowned) + ", | #Knockback Angle (Downed) \n" + \
    str(RBAOnHitGravityDowned) + ", | #On Hit Gravity (Downed)\n" + \
    str(EmptyDataF) + " #Empty Data? \n" + \
    "\n##### First Air Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBA1LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBA1FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBA1VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBA1HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "\n##### Second Air Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBA2LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBA2FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBA2VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBA2HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "\n##### Third Air Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBA3LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBA3FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBA3VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBA3HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "\n##### Fourth Air Bomb #####\n" + \
    "half [4] |\n" + \
    str(RBA4LRDisplacement) + ", | #Left / Right Landing Displacment \n" + \
    str(RBA4FBDisplacement) + ", | #Front / Back Landing Displacment \n" + \
    str(RBA4VerticalArcAngle) + ", | #Vertical Arc Angle \n" + \
    str(RBA4HorizantalArcAngle) + " #Horizontal Arc Angle \n" + \
    "word [14] " + \
    str(Filler1) + str(Filler2) + str(Filler3) + str(Filler4) + str(Filler5) + \
    str(Filler6) + str(Filler7) + str(Filler8) + str(Filler9) + str(Filler10) + \
    str(Filler11) + str(Filler12) + str(Filler13) + str(Filler14) + \
    " #Unknown Data"
print(DataOutput)
pyperclip.copy(DataOutput)