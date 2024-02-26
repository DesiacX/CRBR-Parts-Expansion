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
RBPodMax = (int(("0x" + data[2:4]), 16))
RBPodsFired = (int(("0x" + data[4:6]), 16))
EmptyDataA = "0x" + data[6:8]

RBPodAngle = (int(("0x" + data[8:12]), 16))
RBHorizontalExplodeRadius = (int(("0x" + data[12:16]), 16))
RBVerticalExplodeRadius = (int(("0x" + data[16:20]), 16))
RBFuseTime = (int(("0x" + data[20:24]), 16))
RBGroundPodLaunchAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[24:28]), 16)))))[0]
EmptyDataB = "0x" + data[28:32]
RBAirPodLaunchAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[32:36]), 16)))))[0]
EmptyDataC = "0x" + data[36:40]

RBHomingToggle = (int(("0x" + data[40:42]), 16))
RBRoamingPhaseHoming = (int(("0x" + data[42:44]), 16))
RBLockedPhaseHoming = (int(("0x" + data[44:46]), 16))
EmptyDataD = "0x" + data[46:48]

RBRoamingPhaseSpeed = (int(("0x" + data[48:52]), 16))
RBLockedPhaseSpeed = (int(("0x" + data[52:56]), 16))
RBRoamingPhaseHeight = (int(("0x" + data[56:60]), 16))
RBLockedPhaseHeight = (int(("0x" + data[60:64]), 16))
RBVisionCone = (int(("0x" + data[64:68]), 16))
RBLockOnRange = (int(("0x" + data[68:72]), 16))

RBModeSwitchTime = (int(("0x" + data[72:76]), 16))
RBGroundLaunchAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[76:80]), 16)))))[0]
RBAirLaunchAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[80:84]), 16)))))[0]
RBGroundLaunchSpeed = (int(("0x" + data[84:88]), 16))
RBAirLaunchSpeed = (int(("0x" + data[88:92]), 16))
RBInitialGroundLaunchDuration = (int(("0x" + data[92:96]), 16))
RBInitialAirLaunch = (int(("0x" + data[96:100]), 16))

RBWallBounceAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[100:102]), 16)))))[0]
RBPodSize = (int(("0x" + data[102:104]), 16))
RBExplosionCount = (int(("0x" + data[104:106]), 16))
RBExplosionDelay = (int(("0x" + data[106:108]), 16))

RBExplosionExpansionDuration = (int(("0x" + data[108:112]), 16))
RBExplosionLingeringHitboxDuration = (int(("0x" + data[112:116]), 16))
EmptyDataE = "0x" + data[116:120]

RBExplosionSizeAfterInitExpan = hex_to_float(hex(int(data[120:128],16)))
RBFinalExplosionSize = hex_to_float(hex(int(data[128:136],16)))
RBExplosionHeight = hex_to_float(hex(int(data[136:144],16)))

RBDamage = (int(("0x" + data[144:148]), 16))
RBDown = (int(("0x" + data[148:152]), 16))
RBKnockbackVelocity = (int(("0x" + data[152:156]), 16))
RBKnockbackAngle = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[156:160]), 16)))))[0]
RBHitstun = (int(("0x" + data[160:164]), 16))
RBOnhitGravity = (int(("0x" + data[164:168]), 16))
RBKnockbackVelocityDowned = (int(("0x" + data[168:172]), 16))
RBKnockbackAngleDowned = struct.unpack('>h', (struct.pack('>H', (int(("0x" + data[172:176]), 16)))))[0]
RBOnhitGravityDowned = (int(("0x" + data[176:180]), 16))
EmptyDataF = "0x" + data[180:184]

Filler1 = (("0x" + data[184:192] + ", "))
Filler2 = (("0x" + data[192:200] + ", "))
Filler3 = (("0x" + data[200:208] + ", "))
Filler4 = (("0x" + data[208:216] + ", "))
Filler5 = (("0x" + data[216:224] + ", "))
Filler6 = (("0x" + data[224:232] + ", "))
Filler7 = (("0x" + data[232:240] + ", | \n"))
Filler8 = (("0x" + data[240:248] + ", "))
Filler9 = (("0x" + data[248:256] + ", "))
Filler10 = (("0x" + data[256:264] + ", "))
Filler11 = (("0x" + data[264:272] + ", "))
Filler12 = (("0x" + data[272:280] + ", "))
Filler13 = (("0x" + data[280:288] + ", "))
Filler14 = (("0x" + data[288:296]))

DataOutput = \
    "byte[4] |\n" + \
    str(RBIllegal) + ", | #Illegal Toggle \n" + \
    str(RBPodMax) + ", | #Pod Count (Max 3) \n" + \
    str(RBPodsFired) + ", | #Number of Pods fired at once(Max 3) \n" + \
    str(EmptyDataA) + " #Empty Data? \n" + \
    "half [8] |\n" + \
    str(RBPodAngle) + ", | #Angle between simultaneous pods (Automatically Centered) \n" + \
    str(RBHorizontalExplodeRadius) + ", | #Horizontal Explosion Trigger Radius \n" + \
    str(RBVerticalExplodeRadius) + ", | #Vertical Explosion Trigger Radius \n" + \
    str(RBFuseTime) + ", | #Fuse Time \n" + \
    str(RBGroundPodLaunchAngle) + ", | #Angle Pod faces at ground launch \n" + \
    str(EmptyDataB) + ", | #Empty Data? \n" + \
    str(RBAirPodLaunchAngle) + ", | #Angle Pod faces at air launch \n" + \
    str(EmptyDataC) + " #Empty Data? \n" + \
    "byte[4] |\n" + \
    str(RBHomingToggle) + ", | #Homing Toggle\n" + \
    str(RBRoamingPhaseHoming) + ", | #Roaming Phase Homing \n" + \
    str(RBLockedPhaseHoming) + ", | #Locked On Phase Homing \n" + \
    str(EmptyDataD) + " #Empty Data? \n" + \
    "half [13] |\n" + \
    str(RBRoamingPhaseSpeed) + ", | #Roaming Phase Speed \n" + \
    str(RBLockedPhaseSpeed) + ", | #Locked On Phase Speed \n" + \
    str(RBRoamingPhaseHeight) + ", | #Roaming Phase Height \n" + \
    str(RBLockedPhaseHeight) + ", | #Locked On Phase Height \n" + \
    str(RBVisionCone) + ", | #Angle for conen of vision for activating lock on phase \n" + \
    str(RBLockOnRange) + ", | #Lock On Range \n" + \
    str(RBModeSwitchTime) + ", | #Duration of pause for switching between roaming and locked on. \n" + \
    str(RBGroundLaunchAngle) + ", | #Initial Ground Launch Angle \n" + \
    str(RBAirLaunchAngle) + ", | #Initial Air Launch Angle \n" + \
    str(RBGroundLaunchSpeed) + ", | #Initial Ground Launch Speed \n" + \
    str(RBAirLaunchSpeed) + ", | #Initial Air Launch Speed \n" + \
    str(RBInitialGroundLaunchDuration) + ", | #Initial Ground Launch Duration \n" + \
    str(RBInitialAirLaunch) + " #Initial Air Launch Duration \n" + \
    "byte[4] |\n" + \
    str(RBWallBounceAngle) + ", | #Bounce Off Wall Toggle (0 = Slide along wall, 1 = Bounce off wall)\n" + \
    str(RBPodSize) + ", | #Pod Size\n" + \
    str(RBExplosionCount) + ", | #Number of Explosions \n" + \
    str(RBExplosionDelay) + " #Delay between Explosions \n" + \
    "half [3] |\n" + \
    str(RBExplosionExpansionDuration) + ", | #Explosion Expansion Duration \n" + \
    str(RBExplosionLingeringHitboxDuration) + ", | #Explosion Lingering Hitbox Duration \n" + \
    str(EmptyDataE) + " #Empty Data? \n" + \
    "float [3] |\n" + \
    str(RBExplosionSizeAfterInitExpan) + ", | #eExplosion Size after Initial Expansion \n" + \
    str(RBFinalExplosionSize) + ", | #Final Explosion Size \n" + \
    str(RBExplosionHeight) + " #Explosion Height \n" + \
    "half [10] |\n" + \
    str(RBDamage) + ", | #Damage \n" + \
    str(RBDown) + ", | #Down \n" + \
    str(RBKnockbackVelocity) + ", | #Knockback Velocity \n" + \
    str(RBKnockbackAngle) + ", | #Knockback Angle \n" + \
    str(RBHitstun) + ", | #Hitstun \n" + \
    str(RBOnhitGravity) + ", | #On-Hit Gravity \n" + \
    str(RBKnockbackVelocityDowned) + ", | #Knockback Velocity (Downed) \n" + \
    str(RBKnockbackAngleDowned) + ", | #Knockback Anlge (Downed) \n" + \
    str(RBOnhitGravityDowned) + ", | #On-Hit Gravity (Downed) \n" + \
    str(EmptyDataF) + " #Empty Data \n" + \
    "word [14] " + \
    str(Filler1) + str(Filler2) + str(Filler3) + str(Filler4) + str(Filler5) + \
    str(Filler6) + str(Filler7) + str(Filler8) + str(Filler9) + str(Filler10) + \
    str(Filler11) + str(Filler12) + str(Filler13) + str(Filler14) + \
    " #Unknown Data"
print(DataOutput)
pyperclip.copy(DataOutput)
