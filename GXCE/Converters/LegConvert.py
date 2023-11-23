import pyperclip

data = pyperclip.paste()
print(data)
data = data.replace(" ", "")
data = data.replace("*", "")
data = data.replace("\r", "")
data = data.replace("\n", "")
print(data)
RBIllegal = data[0:2]
RBGroundSpeed = (int(("0x" + data[2:4]), 16))
RBGroundAccel = (int(("0x" + data[4:6]), 16))
RBGroundTurning = (int(("0x" + data[6:8]), 16))
RBJumpHeight = (int(("0x" + data[8:10]), 16))
RBJumpSpeed = (int(("0x" + data[10:12]), 16))
RBLateralAirSpeed = (int(("0x" + data[12:14]), 16))
RBAirAccel = (int(("0x" + data[14:16]), 16))
RBLandingLag = (int(("0x" + data[16:18]), 16))
RBGravity = (int(("0x" + data[18:20]), 16))
RBDashStartup = (int(("0x" + data[20:22]), 16))
RBDashLandingLag = (int(("0x" + data[22:24]), 16))
RBContinuousJumpHeight = (int(("0x" + data[24:26]), 16))
RBDashDuration = (int(("0x" + data[26:28]), 16))
RBDashSpeed = (int(("0x" + data[28:30]), 16))
DataOutput = "byte [16] |\n" + \
    RBIllegal + ", | #Illegal Toggle \n" + \
    str(RBGroundSpeed) + ", | #Ground Speed\n" + \
    str(RBGroundAccel) + ", | #Ground Accel \n" + \
    str(RBGroundTurning) + ", | #Ground Turning\n" + \
    str(RBJumpHeight) + ", | #Jump Height\n" + \
    str(RBJumpSpeed) + ", | #Jump Speed \n" + \
    str(RBLateralAirSpeed) + ", | #Lateral Air Speed \n" + \
    str(RBAirAccel) + ", | #Air Accel \n" + \
    str(RBLandingLag) + ", | #Landing Lag \n" + \
    str(RBGravity) + ", | #Gravity \n" + \
    str(RBDashStartup) + ", | #Dash Startup \n" + \
    str(RBDashLandingLag) + ", | #Dash Landing Lag \n" + \
    str(RBContinuousJumpHeight) + ", | #Continuous Jump Height \n" + \
    str(RBDashDuration) + ", | #Dash Duration \n" + \
    str(RBDashSpeed) + ", | #Dash Speed \n0xFF #Filler Data"    
print(DataOutput)
pyperclip.copy(DataOutput)