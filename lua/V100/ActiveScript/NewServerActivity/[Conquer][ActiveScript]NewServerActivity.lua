------------------------------------------------------------------------------------
--Name:		160816[英文征服][活动脚本]新服专享活动制作
--Purpose:		新服专享活动	
--Creator:		陈磊
--Created:		2016/08/16
------------------------------------------------------------------------------------

-- 前缀
-- NewServerActivity_
local tNewServerActivity_Global = {}
	tNewServerActivity_Global[1] = 75
	
--奖励模板
local tNewServerActivity_Reward = {}
--3000气力值礼包
	tNewServerActivity_Reward[3300239] = {}
	tNewServerActivity_Reward[3300239][1] = {}
	tNewServerActivity_Reward[3300239][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300239][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300239][1]["DeleteItem"][1]["Id"] = 3300239
	tNewServerActivity_Reward[3300239][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300239][1]["RewardStrengthValue"]["Value"] = 3000
	tNewServerActivity_Reward[3300239][1]["Talk"] = tNewServerActivity_Text[3300239][1]
	tNewServerActivity_Reward[3300239][1]["Log"] = "0,0,0,0,12000502,2,12,3000"
--20W金币
	tNewServerActivity_Reward[3300241] = {}
	tNewServerActivity_Reward[3300241][1] = {}
	tNewServerActivity_Reward[3300241][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300241][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300241][1]["DeleteItem"][1]["Id"] = 3300241
	tNewServerActivity_Reward[3300241][1]["RewardMoney"] = {}
	tNewServerActivity_Reward[3300241][1]["RewardMoney"]["Value"] = 200000
	tNewServerActivity_Reward[3300241][1]["Talk"] = tNewServerActivity_Text[3300241][1]
	tNewServerActivity_Reward[3300241][1]["Log"] = "0,0,0,0,12000502,2,1,200000"
	
	tNewServerActivity_Reward[3300241][2] = {}
	tNewServerActivity_Reward[3300241][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300241][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300241][2]["DeleteItem"][1]["Id"] = 3300241
	tNewServerActivity_Reward[3300241][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300241][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300241][2]["RewardItem"][1]["Id"] = 730003
	tNewServerActivity_Reward[3300241][2]["RewardItem"][1]["Attr"] = "0 1 3" 
	-- tNewServerActivity_Reward[3300241][1]["Talk"] = tNewServerActivity_Text[3300241][1]
	tNewServerActivity_Reward[3300241][2]["LogId"] = 12000502
	
--1000修行值
	tNewServerActivity_Reward[3300242] = {}
	tNewServerActivity_Reward[3300242][1] = {}
	tNewServerActivity_Reward[3300242][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300242][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300242][1]["DeleteItem"][1]["Id"] = 3300242
	tNewServerActivity_Reward[3300242][1]["RewardCultivation"] = {}
	tNewServerActivity_Reward[3300242][1]["RewardCultivation"]["Value"] = 1000
	tNewServerActivity_Reward[3300242][1]["Talk"] = tNewServerActivity_Text[3300242][1]
	tNewServerActivity_Reward[3300242][1]["Log"] = "0,0,0,0,12000502,2,6,1000"
--明亮星陨石x5礼包
	tNewServerActivity_Reward[3300243] = {}
	tNewServerActivity_Reward[3300243][1] = {}
	tNewServerActivity_Reward[3300243][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300243][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300243][1]["DeleteItem"][1]["Id"] = 3300243
	tNewServerActivity_Reward[3300243][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300243][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300243][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300243][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" 
	tNewServerActivity_Reward[3300243][1]["Talk"] = tNewServerActivity_Text[3300243][1]
	tNewServerActivity_Reward[3300243][1]["Log"] = "0,0,0,0,12000502,2,3009001,5"
	
--晶莹星陨石x10礼包
	tNewServerActivity_Reward[3300244] = {}
	tNewServerActivity_Reward[3300244][1] = {}
	tNewServerActivity_Reward[3300244][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300244][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300244][1]["DeleteItem"][1]["Id"] = 3300244
	tNewServerActivity_Reward[3300244][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300244][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300244][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300244][1]["RewardItem"][1]["Attr"] = "0 10 0 2880 1"
	tNewServerActivity_Reward[3300244][1]["Talk"] = tNewServerActivity_Text[3300244][1]
	tNewServerActivity_Reward[3300244][1]["Log"] = "0,0,0,0,12000502,2,3009002,10"
	
--晶莹星陨石x20礼包
	tNewServerActivity_Reward[3300245] = {}
	tNewServerActivity_Reward[3300245][1] = {}
	tNewServerActivity_Reward[3300245][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300245][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300245][1]["DeleteItem"][1]["Id"] = 3300245
	tNewServerActivity_Reward[3300245][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300245][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300245][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300245][1]["RewardItem"][1]["Attr"] = "0 20 0 2880 1" 
	tNewServerActivity_Reward[3300245][1]["Talk"] = tNewServerActivity_Text[3300245][1]
	tNewServerActivity_Reward[3300245][1]["Log"] = "0,0,0,0,12000502,2,3009002,20"
--晶莹星陨石x5礼包
	tNewServerActivity_Reward[3300246] = {}
	tNewServerActivity_Reward[3300246][1] = {}
	tNewServerActivity_Reward[3300246][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300246][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300246][1]["DeleteItem"][1]["Id"] = 3300246
	tNewServerActivity_Reward[3300246][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300246][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300246][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300246][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" 
	tNewServerActivity_Reward[3300246][1]["Talk"] = tNewServerActivity_Text[3300246][1]
	tNewServerActivity_Reward[3300246][1]["Log"] = "0,0,0,0,12000502,2,3009002,5"
	
--明亮星陨石x10礼包
	tNewServerActivity_Reward[3300247] = {}
	tNewServerActivity_Reward[3300247][1] = {}
	tNewServerActivity_Reward[3300247][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300247][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300247][1]["DeleteItem"][1]["Id"] = 3300247
	tNewServerActivity_Reward[3300247][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300247][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300247][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300247][1]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" 
	tNewServerActivity_Reward[3300247][1]["Talk"] = tNewServerActivity_Text[3300247][1]
	tNewServerActivity_Reward[3300247][1]["Log"] = "0,0,0,0,12000502,2,3009001,10"

--明亮星陨石x6礼包
	tNewServerActivity_Reward[3300248] = {}
	tNewServerActivity_Reward[3300248][1] = {}
	tNewServerActivity_Reward[3300248][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300248][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300248][1]["DeleteItem"][1]["Id"] = 3300248
	tNewServerActivity_Reward[3300248][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300248][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300248][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300248][1]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" 
	tNewServerActivity_Reward[3300248][1]["Talk"] = tNewServerActivity_Text[3300248][1]
	tNewServerActivity_Reward[3300248][1]["Log"] = "0,0,0,0,12000502,2,3009001,6"
	
--明亮星陨石x7礼包
	tNewServerActivity_Reward[3300249] = {}
	tNewServerActivity_Reward[3300249][1] = {}
	tNewServerActivity_Reward[3300249][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300249][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300249][1]["DeleteItem"][1]["Id"] = 3300249
	tNewServerActivity_Reward[3300249][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300249][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300249][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300249][1]["RewardItem"][1]["Attr"] = "0 7 0 2880 1" 
	tNewServerActivity_Reward[3300249][1]["Talk"] = tNewServerActivity_Text[3300249][1]
	tNewServerActivity_Reward[3300249][1]["Log"] = "0,0,0,0,12000502,2,3009001,7"
	
--明亮星陨石x8礼包
	tNewServerActivity_Reward[3300251] = {}
	tNewServerActivity_Reward[3300251][1] = {}
	tNewServerActivity_Reward[3300251][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300251][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300251][1]["DeleteItem"][1]["Id"] = 3300251
	tNewServerActivity_Reward[3300251][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300251][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300251][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300251][1]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" 
	tNewServerActivity_Reward[3300251][1]["Talk"] = tNewServerActivity_Text[3300251][1]
	tNewServerActivity_Reward[3300251][1]["Log"] = "0,0,0,0,12000502,2,3009001,8"
	
--明亮星陨石x12礼包
	tNewServerActivity_Reward[3300252] = {}
	tNewServerActivity_Reward[3300252][1] = {}
	tNewServerActivity_Reward[3300252][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300252][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300252][1]["DeleteItem"][1]["Id"] = 3300252
	tNewServerActivity_Reward[3300252][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300252][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300252][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300252][1]["RewardItem"][1]["Attr"] = "0 12 0 2880 1" 
	tNewServerActivity_Reward[3300252][1]["Talk"] = tNewServerActivity_Text[3300252][1]
	tNewServerActivity_Reward[3300252][1]["Log"] = "0,0,0,0,12000502,2,3009001,12"
	
--明亮星陨石x15礼包
	tNewServerActivity_Reward[3300253] = {}
	tNewServerActivity_Reward[3300253][1] = {}
	tNewServerActivity_Reward[3300253][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300253][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300253][1]["DeleteItem"][1]["Id"] = 3300253
	tNewServerActivity_Reward[3300253][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300253][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300253][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300253][1]["RewardItem"][1]["Attr"] = "0 15 0 2880 1" 
	tNewServerActivity_Reward[3300253][1]["Talk"] = tNewServerActivity_Text[3300253][1]
	tNewServerActivity_Reward[3300253][1]["Log"] = "0,0,0,0,12000502,2,3009001,15"
	
--300气力值礼包
	tNewServerActivity_Reward[3300254] = {}
	tNewServerActivity_Reward[3300254][1] = {}
	tNewServerActivity_Reward[3300254][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300254][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300254][1]["DeleteItem"][1]["Id"] = 3300254
	tNewServerActivity_Reward[3300254][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300254][1]["RewardStrengthValue"]["Value"] = 300
	tNewServerActivity_Reward[3300254][1]["Talk"] = tNewServerActivity_Text[3300254][1]
	tNewServerActivity_Reward[3300254][1]["Log"] = "0,0,0,0,12000502,2,12,300"
	
--500气力值礼包
	tNewServerActivity_Reward[3300255] = {}
	tNewServerActivity_Reward[3300255][1] = {}
	tNewServerActivity_Reward[3300255][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300255][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300255][1]["DeleteItem"][1]["Id"] = 3300255
	tNewServerActivity_Reward[3300255][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300255][1]["RewardStrengthValue"]["Value"] = 500
	tNewServerActivity_Reward[3300255][1]["Talk"] = tNewServerActivity_Text[3300255][1]
	tNewServerActivity_Reward[3300255][1]["Log"] = "0,0,0,0,12000502,2,12,500"
	
--1000气力值礼包
	tNewServerActivity_Reward[3300256] = {}
	tNewServerActivity_Reward[3300256][1] = {}
	tNewServerActivity_Reward[3300256][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300256][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300256][1]["DeleteItem"][1]["Id"] = 3300256
	tNewServerActivity_Reward[3300256][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300256][1]["RewardStrengthValue"]["Value"] = 1000
	tNewServerActivity_Reward[3300256][1]["Talk"] = tNewServerActivity_Text[3300256][1]
	tNewServerActivity_Reward[3300256][1]["Log"] = "0,0,0,0,12000502,2,12,1000"
	
--2200气力值礼包
	tNewServerActivity_Reward[3300257] = {}
	tNewServerActivity_Reward[3300257][1] = {}
	tNewServerActivity_Reward[3300257][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300257][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300257][1]["DeleteItem"][1]["Id"] = 3300257
	tNewServerActivity_Reward[3300257][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300257][1]["RewardStrengthValue"]["Value"] = 2200
	tNewServerActivity_Reward[3300257][1]["Talk"] = tNewServerActivity_Text[3300257][1]
	tNewServerActivity_Reward[3300257][1]["Log"] = "0,0,0,0,12000502,2,12,2200"
	
--4500气力值礼包
	tNewServerActivity_Reward[3300258] = {}
	tNewServerActivity_Reward[3300258][1] = {}
	tNewServerActivity_Reward[3300258][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300258][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300258][1]["DeleteItem"][1]["Id"] = 3300258
	tNewServerActivity_Reward[3300258][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300258][1]["RewardStrengthValue"]["Value"] = 4500
	tNewServerActivity_Reward[3300258][1]["Talk"] = tNewServerActivity_Text[3300258][1]
	tNewServerActivity_Reward[3300258][1]["Log"] = "0,0,0,0,12000502,2,12,4500"
	
--6000气力值礼包
	tNewServerActivity_Reward[3300259] = {}
	tNewServerActivity_Reward[3300259][1] = {}
	tNewServerActivity_Reward[3300259][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300259][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300259][1]["DeleteItem"][1]["Id"] = 3300259
	tNewServerActivity_Reward[3300259][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300259][1]["RewardStrengthValue"]["Value"] = 6000
	tNewServerActivity_Reward[3300259][1]["Talk"] = tNewServerActivity_Text[3300259][1]
	tNewServerActivity_Reward[3300259][1]["Log"] = "0,0,0,0,12000502,2,12,6000"
	
--10000气力值礼包
	tNewServerActivity_Reward[3300261] = {}
	tNewServerActivity_Reward[3300261][1] = {}
	tNewServerActivity_Reward[3300261][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300261][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300261][1]["DeleteItem"][1]["Id"] = 3300261
	tNewServerActivity_Reward[3300261][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300261][1]["RewardStrengthValue"]["Value"] = 10000
	tNewServerActivity_Reward[3300261][1]["Talk"] = tNewServerActivity_Text[3300261][1]
	tNewServerActivity_Reward[3300261][1]["Log"] = "0,0,0,0,12000502,2,12,10000"
	
--15000气力值礼包
	tNewServerActivity_Reward[3300262] = {}
	tNewServerActivity_Reward[3300262][1] = {}
	tNewServerActivity_Reward[3300262][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300262][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300262][1]["DeleteItem"][1]["Id"] = 3300262
	tNewServerActivity_Reward[3300262][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300262][1]["RewardStrengthValue"]["Value"] = 15000
	tNewServerActivity_Reward[3300262][1]["Talk"] = tNewServerActivity_Text[3300262][1]
	tNewServerActivity_Reward[3300262][1]["Log"] = "0,0,0,0,12000502,2,12,15000"
	
--25000气力值礼包
	tNewServerActivity_Reward[3300263] = {}
	tNewServerActivity_Reward[3300263][1] = {}
	tNewServerActivity_Reward[3300263][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300263][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300263][1]["DeleteItem"][1]["Id"] = 3300263
	tNewServerActivity_Reward[3300263][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300263][1]["RewardStrengthValue"]["Value"] = 25000
	tNewServerActivity_Reward[3300263][1]["Talk"] = tNewServerActivity_Text[3300263][1]
	tNewServerActivity_Reward[3300263][1]["Log"] = "0,0,0,0,12000502,2,12,25000"

--2000气力值礼包
	tNewServerActivity_Reward[3300264] = {}
	tNewServerActivity_Reward[3300264][1] = {}
	tNewServerActivity_Reward[3300264][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300264][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300264][1]["DeleteItem"][1]["Id"] = 3300264
	tNewServerActivity_Reward[3300264][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300264][1]["RewardStrengthValue"]["Value"] = 2000
	tNewServerActivity_Reward[3300264][1]["Talk"] = tNewServerActivity_Text[3300264][1]
	tNewServerActivity_Reward[3300264][1]["Log"] = "0,0,0,0,12000502,2,12,2000"

--5000气力值礼包
	tNewServerActivity_Reward[3300265] = {}
	tNewServerActivity_Reward[3300265][1] = {}
	tNewServerActivity_Reward[3300265][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300265][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300265][1]["DeleteItem"][1]["Id"] = 3300265
	tNewServerActivity_Reward[3300265][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300265][1]["RewardStrengthValue"]["Value"] = 5000
	tNewServerActivity_Reward[3300265][1]["Talk"] = tNewServerActivity_Text[3300265][1]
	tNewServerActivity_Reward[3300265][1]["Log"] = "0,0,0,0,12000502,2,12,5000"
	
--8000气力值礼包
	tNewServerActivity_Reward[3300266] = {}
	tNewServerActivity_Reward[3300266][1] = {}
	tNewServerActivity_Reward[3300266][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300266][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300266][1]["DeleteItem"][1]["Id"] = 3300266
	tNewServerActivity_Reward[3300266][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300266][1]["RewardStrengthValue"]["Value"] = 8000
	tNewServerActivity_Reward[3300266][1]["Talk"] = tNewServerActivity_Text[3300266][1]
	tNewServerActivity_Reward[3300266][1]["Log"] = "0,0,0,0,12000502,2,12,8000"
	
--20000气力值礼包
	tNewServerActivity_Reward[3300267] = {}
	tNewServerActivity_Reward[3300267][1] = {}
	tNewServerActivity_Reward[3300267][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300267][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300267][1]["DeleteItem"][1]["Id"] = 3300267
	tNewServerActivity_Reward[3300267][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300267][1]["RewardStrengthValue"]["Value"] = 20000
	tNewServerActivity_Reward[3300267][1]["Talk"] = tNewServerActivity_Text[3300267][1]
	tNewServerActivity_Reward[3300267][1]["Log"] = "0,0,0,0,12000502,2,12,20000"
--30000气力值礼包
	tNewServerActivity_Reward[3300268] = {}
	tNewServerActivity_Reward[3300268][1] = {}
	tNewServerActivity_Reward[3300268][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300268][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300268][1]["DeleteItem"][1]["Id"] = 3300268
	tNewServerActivity_Reward[3300268][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300268][1]["RewardStrengthValue"]["Value"] = 30000
	tNewServerActivity_Reward[3300268][1]["Talk"] = tNewServerActivity_Text[3300268][1]
	tNewServerActivity_Reward[3300268][1]["Log"] = "0,0,0,0,12000502,2,12,30000"
	
--2星人物外套可选包
	tNewServerActivity_Reward[3300269] = {}
	tNewServerActivity_Reward[3300269][1] = {}
	tNewServerActivity_Reward[3300269][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300269][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300269][1]["DeleteItem"][1]["Id"] = 3300269
	tNewServerActivity_Reward[3300269][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300269][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300269][1]["RewardItem"][1]["Id"] = 181355 
	tNewServerActivity_Reward[3300269][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tNewServerActivity_Reward[3300269][1]["Talk"] = tNewServerActivity_Text[3300269][1]
	tNewServerActivity_Reward[3300269][1]["Log"] = "0,0,0,0,12000502,2,181355,1"
	tNewServerActivity_Reward[3300269][2] = {}
	tNewServerActivity_Reward[3300269][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300269][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300269][2]["DeleteItem"][1]["Id"] = 3300269
	tNewServerActivity_Reward[3300269][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300269][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300269][2]["RewardItem"][1]["Id"] = 184335
	tNewServerActivity_Reward[3300269][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tNewServerActivity_Reward[3300269][2]["Talk"] = tNewServerActivity_Text[3300269][2]
	tNewServerActivity_Reward[3300269][2]["Log"] = "0,0,0,0,12000502,2,184335,1"
	tNewServerActivity_Reward[3300269][3] = {}
	tNewServerActivity_Reward[3300269][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300269][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300269][3]["DeleteItem"][1]["Id"] = 3300269
	tNewServerActivity_Reward[3300269][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300269][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300269][3]["RewardItem"][1]["Id"] = 193075
	tNewServerActivity_Reward[3300269][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tNewServerActivity_Reward[3300269][3]["Talk"] = tNewServerActivity_Text[3300269][3]
	tNewServerActivity_Reward[3300269][3]["Log"] = "0,0,0,0,12000502,2,193075,1"
	
--2星坐骑外套可选包
	tNewServerActivity_Reward[3300271] = {}
	tNewServerActivity_Reward[3300271][1] = {}
	tNewServerActivity_Reward[3300271][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300271][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300271][1]["DeleteItem"][1]["Id"] = 3300271
	tNewServerActivity_Reward[3300271][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300271][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300271][1]["RewardItem"][1]["Id"] = 200005
	tNewServerActivity_Reward[3300271][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tNewServerActivity_Reward[3300271][1]["Talk"] = tNewServerActivity_Text[3300271][1]
	tNewServerActivity_Reward[3300271][1]["Log"] = "0,0,0,0,12000502,2,200005,1"
	tNewServerActivity_Reward[3300271][2] = {}
	tNewServerActivity_Reward[3300271][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300271][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300271][2]["DeleteItem"][1]["Id"] = 3300271
	tNewServerActivity_Reward[3300271][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300271][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300271][2]["RewardItem"][1]["Id"] = 200100
	tNewServerActivity_Reward[3300271][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tNewServerActivity_Reward[3300271][2]["Talk"] = tNewServerActivity_Text[3300271][2]
	tNewServerActivity_Reward[3300271][2]["Log"] = "0,0,0,0,12000502,2,200100,1"
	tNewServerActivity_Reward[3300271][3] = {}
	tNewServerActivity_Reward[3300271][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300271][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300271][3]["DeleteItem"][1]["Id"] = 3300271
	tNewServerActivity_Reward[3300271][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300271][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300271][3]["RewardItem"][1]["Id"] = 200012
	tNewServerActivity_Reward[3300271][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tNewServerActivity_Reward[3300271][3]["Talk"] = tNewServerActivity_Text[3300271][3]
	tNewServerActivity_Reward[3300271][3]["Log"] = "0,0,0,0,12000502,2,200012,1"
	
--3星人物外套可选包
	tNewServerActivity_Reward[3300272] = {}
	tNewServerActivity_Reward[3300272][1] = {}
	tNewServerActivity_Reward[3300272][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300272][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300272][1]["DeleteItem"][1]["Id"] = 3300272
	tNewServerActivity_Reward[3300272][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300272][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300272][1]["RewardItem"][1]["Id"] = 188925
	tNewServerActivity_Reward[3300272][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300272][1]["Talk"] = tNewServerActivity_Text[3300272][1]
	tNewServerActivity_Reward[3300272][1]["Log"] = "0,0,0,0,12000502,2,188925,1"
	tNewServerActivity_Reward[3300272][2] = {}
	tNewServerActivity_Reward[3300272][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300272][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300272][2]["DeleteItem"][1]["Id"] = 3300272
	tNewServerActivity_Reward[3300272][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300272][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300272][2]["RewardItem"][1]["Id"] = 189105
	tNewServerActivity_Reward[3300272][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300272][2]["Talk"] = tNewServerActivity_Text[3300272][2]
	tNewServerActivity_Reward[3300272][2]["Log"] = "0,0,0,0,12000502,2,189105,1"
	tNewServerActivity_Reward[3300272][3] = {}
	tNewServerActivity_Reward[3300272][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300272][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300272][3]["DeleteItem"][1]["Id"] = 3300272
	tNewServerActivity_Reward[3300272][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300272][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300272][3]["RewardItem"][1]["Id"] = 183485
	tNewServerActivity_Reward[3300272][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300272][3]["Talk"] = tNewServerActivity_Text[3300272][3]
	tNewServerActivity_Reward[3300272][3]["Log"] = "0,0,0,0,12000502,2,183485,1"
	
--3星坐骑外套可选包
	tNewServerActivity_Reward[3300273] = {}
	tNewServerActivity_Reward[3300273][1] = {}
	tNewServerActivity_Reward[3300273][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300273][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300273][1]["DeleteItem"][1]["Id"] = 3300273
	tNewServerActivity_Reward[3300273][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300273][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300273][1]["RewardItem"][1]["Id"] = 200411
	tNewServerActivity_Reward[3300273][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300273][1]["Talk"] = tNewServerActivity_Text[3300273][1]
	tNewServerActivity_Reward[3300273][1]["Log"] = "0,0,0,0,12000502,2,200411,1"
	tNewServerActivity_Reward[3300273][2] = {}
	tNewServerActivity_Reward[3300273][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300273][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300273][2]["DeleteItem"][1]["Id"] = 3300273
	tNewServerActivity_Reward[3300273][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300273][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300273][2]["RewardItem"][1]["Id"] = 200414
	tNewServerActivity_Reward[3300273][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300273][2]["Talk"] = tNewServerActivity_Text[3300273][2]
	tNewServerActivity_Reward[3300273][2]["Log"] = "0,0,0,0,12000502,2,200414,1"
	tNewServerActivity_Reward[3300273][3] = {}
	tNewServerActivity_Reward[3300273][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300273][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300273][3]["DeleteItem"][1]["Id"] = 3300273
	tNewServerActivity_Reward[3300273][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300273][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300273][3]["RewardItem"][1]["Id"] = 200421
	tNewServerActivity_Reward[3300273][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300273][3]["Talk"] = tNewServerActivity_Text[3300273][3]
	tNewServerActivity_Reward[3300273][3]["Log"] = "0,0,0,0,12000502,2,200421,1"
	
--4星人物外套可选包
	tNewServerActivity_Reward[3300306] = {}
	tNewServerActivity_Reward[3300306][1] = {}
	tNewServerActivity_Reward[3300306][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300306][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300306][1]["DeleteItem"][1]["Id"] = 3300306
	tNewServerActivity_Reward[3300306][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300306][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300306][1]["RewardItem"][1]["Id"] = 192615
	tNewServerActivity_Reward[3300306][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300306][1]["Talk"] = tNewServerActivity_Text[3300306][1]
	tNewServerActivity_Reward[3300306][1]["Log"] = "0,0,0,0,12000502,2,192615,1"
	tNewServerActivity_Reward[3300306][2] = {}
	tNewServerActivity_Reward[3300306][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300306][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300306][2]["DeleteItem"][1]["Id"] = 3300306
	tNewServerActivity_Reward[3300306][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300306][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300306][2]["RewardItem"][1]["Id"] = 192635
	tNewServerActivity_Reward[3300306][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300306][2]["Talk"] = tNewServerActivity_Text[3300306][2]
	tNewServerActivity_Reward[3300306][2]["Log"] = "0,0,0,0,12000502,2,192635,1"
	tNewServerActivity_Reward[3300306][3] = {}
	tNewServerActivity_Reward[3300306][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300306][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300306][3]["DeleteItem"][1]["Id"] = 3300306
	tNewServerActivity_Reward[3300306][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300306][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300306][3]["RewardItem"][1]["Id"] = 189085
	tNewServerActivity_Reward[3300306][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300306][3]["Talk"] = tNewServerActivity_Text[3300306][3]
	tNewServerActivity_Reward[3300306][3]["Log"] = "0,0,0,0,12000502,2,189085,1"
	
	--3星坐骑外套可选包
	tNewServerActivity_Reward[3300307] = {}
	tNewServerActivity_Reward[3300307][1] = {}
	tNewServerActivity_Reward[3300307][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300307][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300307][1]["DeleteItem"][1]["Id"] = 3300307
	tNewServerActivity_Reward[3300307][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300307][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300307][1]["RewardItem"][1]["Id"] = 200413
	tNewServerActivity_Reward[3300307][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300307][1]["Talk"] = tNewServerActivity_Text[3300307][1]
	tNewServerActivity_Reward[3300307][1]["Log"] = "0,0,0,0,12000502,2,200413,1"
	tNewServerActivity_Reward[3300307][2] = {}
	tNewServerActivity_Reward[3300307][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300307][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300307][2]["DeleteItem"][1]["Id"] = 3300307
	tNewServerActivity_Reward[3300307][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300307][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300307][2]["RewardItem"][1]["Id"] = 200403
	tNewServerActivity_Reward[3300307][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300307][2]["Talk"] = tNewServerActivity_Text[3300307][2]
	tNewServerActivity_Reward[3300307][2]["Log"] = "0,0,0,0,12000502,2,200403,1"
	tNewServerActivity_Reward[3300307][3] = {}
	tNewServerActivity_Reward[3300307][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300307][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300307][3]["DeleteItem"][1]["Id"] = 3300307
	tNewServerActivity_Reward[3300307][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300307][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300307][3]["RewardItem"][1]["Id"] = 200107
	tNewServerActivity_Reward[3300307][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300307][3]["Talk"] = tNewServerActivity_Text[3300307][3]
	tNewServerActivity_Reward[3300307][3]["Log"] = "0,0,0,0,12000502,2,200107,1"
	
--稀有坐骑外套可选包
	tNewServerActivity_Reward[3300308] = {}
	tNewServerActivity_Reward[3300308][1] = {}
	tNewServerActivity_Reward[3300308][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300308][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300308][1]["DeleteItem"][1]["Id"] = 3300308
	tNewServerActivity_Reward[3300308][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300308][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300308][1]["RewardItem"][1]["Id"] = 193295
	tNewServerActivity_Reward[3300308][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300308][1]["Talk"] = tNewServerActivity_Text[3300308][1]
	tNewServerActivity_Reward[3300308][1]["Log"] = "0,0,0,0,12000502,2,193295,1"
	tNewServerActivity_Reward[3300308][2] = {}
	tNewServerActivity_Reward[3300308][2]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300308][2]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300308][2]["DeleteItem"][1]["Id"] = 3300308
	tNewServerActivity_Reward[3300308][2]["RewardItem"] = {}
	tNewServerActivity_Reward[3300308][2]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300308][2]["RewardItem"][1]["Id"] = 188755
	tNewServerActivity_Reward[3300308][2]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300308][2]["Talk"] = tNewServerActivity_Text[3300308][2]
	tNewServerActivity_Reward[3300308][2]["Log"] = "0,0,0,0,12000502,2,188755,1"
	tNewServerActivity_Reward[3300308][3] = {}
	tNewServerActivity_Reward[3300308][3]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300308][3]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300308][3]["DeleteItem"][1]["Id"] = 3300308
	tNewServerActivity_Reward[3300308][3]["RewardItem"] = {}
	tNewServerActivity_Reward[3300308][3]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300308][3]["RewardItem"][1]["Id"] = 193325
	tNewServerActivity_Reward[3300308][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tNewServerActivity_Reward[3300308][3]["Talk"] = tNewServerActivity_Text[3300308][3]
	tNewServerActivity_Reward[3300308][3]["Log"] = "0,0,0,0,12000502,2,193325,1"
	
--10天石礼包
	tNewServerActivity_Reward[3300309] = {}
	tNewServerActivity_Reward[3300309][1] = {}
	tNewServerActivity_Reward[3300309][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300309][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300309][1]["DeleteItem"][1]["Id"] = 3300309
	tNewServerActivity_Reward[3300309][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300309][1]["RewardEMoneyMono"]["Value"] = 10
	tNewServerActivity_Reward[3300309][1]["Talk"] = tNewServerActivity_Text[3300309][1]
	tNewServerActivity_Reward[3300309][1]["Log"] = "0,0,0,0,12000502,2,3,10"

--40天石礼包
	tNewServerActivity_Reward[3300311] = {}
	tNewServerActivity_Reward[3300311][1] = {}
	tNewServerActivity_Reward[3300311][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300311][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300311][1]["DeleteItem"][1]["Id"] = 3300311
	tNewServerActivity_Reward[3300311][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300311][1]["RewardEMoneyMono"]["Value"] = 40
	tNewServerActivity_Reward[3300311][1]["EmoneyLog"] = "350	22234	0	0	-40	"
	tNewServerActivity_Reward[3300311][1]["Talk"] = tNewServerActivity_Text[3300311][1]
	tNewServerActivity_Reward[3300311][1]["Log"] = "0,0,0,0,12000502,2,3,40"

	
--55天石礼包
	tNewServerActivity_Reward[3300312] = {}
	tNewServerActivity_Reward[3300312][1] = {}
	tNewServerActivity_Reward[3300312][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300312][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300312][1]["DeleteItem"][1]["Id"] = 3300312
	tNewServerActivity_Reward[3300312][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300312][1]["RewardEMoneyMono"]["Value"] = 55
	tNewServerActivity_Reward[3300312][1]["Talk"] = tNewServerActivity_Text[3300312][1]
	tNewServerActivity_Reward[3300312][1]["Log"] = "0,0,0,0,12000502,2,3,55"
	
--110天石礼包
	tNewServerActivity_Reward[3300313] = {}
	tNewServerActivity_Reward[3300313][1] = {}
	tNewServerActivity_Reward[3300313][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300313][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300313][1]["DeleteItem"][1]["Id"] = 3300313
	tNewServerActivity_Reward[3300313][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300313][1]["RewardEMoneyMono"]["Value"] = 110
	tNewServerActivity_Reward[3300313][1]["Talk"] = tNewServerActivity_Text[3300313][1]
	tNewServerActivity_Reward[3300313][1]["Log"] = "0,0,0,0,12000502,2,3,110"
	
--350天石礼包
	tNewServerActivity_Reward[3300314] = {}
	tNewServerActivity_Reward[3300314][1] = {}
	tNewServerActivity_Reward[3300314][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300314][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300314][1]["DeleteItem"][1]["Id"] = 3300314
	tNewServerActivity_Reward[3300314][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300314][1]["RewardEMoneyMono"]["Value"] = 350
	tNewServerActivity_Reward[3300314][1]["Talk"] = tNewServerActivity_Text[3300314][1]
	tNewServerActivity_Reward[3300314][1]["Log"] = "0,0,0,0,12000502,2,3,350"
	
--600天石礼包
	tNewServerActivity_Reward[3300315] = {}
	tNewServerActivity_Reward[3300315][1] = {}
	tNewServerActivity_Reward[3300315][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300315][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300315][1]["DeleteItem"][1]["Id"] = 3300315
	tNewServerActivity_Reward[3300315][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300315][1]["RewardEMoneyMono"]["Value"] = 600
	tNewServerActivity_Reward[3300315][1]["Talk"] = tNewServerActivity_Text[3300315][1]
	tNewServerActivity_Reward[3300315][1]["Log"] = "0,0,0,0,12000502,2,3,600"
	
--2600天石礼包
	tNewServerActivity_Reward[3300316] = {}
	tNewServerActivity_Reward[3300316][1] = {}
	tNewServerActivity_Reward[3300316][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300316][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300316][1]["DeleteItem"][1]["Id"] = 3300316
	tNewServerActivity_Reward[3300316][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300316][1]["RewardEMoneyMono"]["Value"] = 2600
	tNewServerActivity_Reward[3300316][1]["Talk"] = tNewServerActivity_Text[3300316][1]
	tNewServerActivity_Reward[3300316][1]["Log"] = "0,0,0,0,12000502,2,3,2600"
	
--4000天石礼包
	tNewServerActivity_Reward[3300317] = {}
	tNewServerActivity_Reward[3300317][1] = {}
	tNewServerActivity_Reward[3300317][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300317][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300317][1]["DeleteItem"][1]["Id"] = 3300317
	tNewServerActivity_Reward[3300317][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300317][1]["RewardEMoneyMono"]["Value"] = 4000
	tNewServerActivity_Reward[3300317][1]["Talk"] = tNewServerActivity_Text[3300317][1]
	tNewServerActivity_Reward[3300317][1]["Log"] = "0,0,0,0,12000502,2,3,4000"
	
--5500天石礼包
	tNewServerActivity_Reward[3300318] = {}
	tNewServerActivity_Reward[3300318][1] = {}
	tNewServerActivity_Reward[3300318][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300318][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300318][1]["DeleteItem"][1]["Id"] = 3300318
	tNewServerActivity_Reward[3300318][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300318][1]["RewardEMoneyMono"]["Value"] = 5500
	tNewServerActivity_Reward[3300318][1]["Talk"] = tNewServerActivity_Text[3300318][1]
	tNewServerActivity_Reward[3300318][1]["Log"] = "0,0,0,0,12000502,2,3,5500"
	
--7000天石礼包
	tNewServerActivity_Reward[3300319] = {}
	tNewServerActivity_Reward[3300319][1] = {}
	tNewServerActivity_Reward[3300319][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300319][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300319][1]["DeleteItem"][1]["Id"] = 3300319
	tNewServerActivity_Reward[3300319][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300319][1]["RewardEMoneyMono"]["Value"] = 7000
	tNewServerActivity_Reward[3300319][1]["Talk"] = tNewServerActivity_Text[3300319][1]
	tNewServerActivity_Reward[3300319][1]["Log"] = "0,0,0,0,12000502,2,3,7000"
	
--7500天石礼包
	tNewServerActivity_Reward[3300321] = {}
	tNewServerActivity_Reward[3300321][1] = {}
	tNewServerActivity_Reward[3300321][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300321][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300321][1]["DeleteItem"][1]["Id"] = 3300321
	tNewServerActivity_Reward[3300321][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300321][1]["RewardEMoneyMono"]["Value"] = 7500
	tNewServerActivity_Reward[3300321][1]["Talk"] = tNewServerActivity_Text[3300321][1]
	tNewServerActivity_Reward[3300321][1]["Log"] = "0,0,0,0,12000502,2,3,7500"
	
--微光星陨石x3礼包
	tNewServerActivity_Reward[3300322] = {}
	tNewServerActivity_Reward[3300322][1] = {}
	tNewServerActivity_Reward[3300322][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300322][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300322][1]["DeleteItem"][1]["Id"] = 3300322
	tNewServerActivity_Reward[3300322][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300322][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300322][1]["RewardItem"][1]["Id"] = 3009000
	tNewServerActivity_Reward[3300322][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" 
	tNewServerActivity_Reward[3300322][1]["Talk"] = tNewServerActivity_Text[3300322][1]
	tNewServerActivity_Reward[3300322][1]["Log"] = "0,0,0,0,12000502,2,3009000,3"
	
--消费2级礼包
	tNewServerActivity_Reward[3300323] = {}
	tNewServerActivity_Reward[3300323][1] = {}
	tNewServerActivity_Reward[3300323][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300323][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300323][1]["DeleteItem"][1]["Id"] = 3300323
	tNewServerActivity_Reward[3300323][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300323][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300323][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300323][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tNewServerActivity_Reward[3300323][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300323][1]["RewardItem"][2]["Id"] = 3002559
	tNewServerActivity_Reward[3300323][1]["RewardItem"][2]["Attr"] = "0 2 3" 
	tNewServerActivity_Reward[3300323][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300323][1]["RewardItem"][3]["Id"] = 728777
	tNewServerActivity_Reward[3300323][1]["RewardItem"][3]["Attr"] = "0 1 0" 
	tNewServerActivity_Reward[3300323][1]["Talk"] = tNewServerActivity_Text[3300323][1]
	tNewServerActivity_Reward[3300323][1]["Log"] = "0,0,0,0,12000502,2,3009001[3002559][728777],2[2][1]"
	
--消费3级礼包
	tNewServerActivity_Reward[3300324] = {}
	tNewServerActivity_Reward[3300324][1] = {}
	tNewServerActivity_Reward[3300324][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300324][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300324][1]["DeleteItem"][1]["Id"] = 3300324
	tNewServerActivity_Reward[3300324][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300324][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300324][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300324][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tNewServerActivity_Reward[3300324][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300324][1]["RewardItem"][2]["Id"] = 730002
	tNewServerActivity_Reward[3300324][1]["RewardItem"][2]["Attr"] = "0 3 0"  
	tNewServerActivity_Reward[3300324][1]["Talk"] = tNewServerActivity_Text[3300324][1]
	tNewServerActivity_Reward[3300324][1]["Log"] = "0,0,0,0,12000502,2,3009001[730002],2[3]"
	
--消费5级礼包
	tNewServerActivity_Reward[3300325] = {}
	tNewServerActivity_Reward[3300325][1] = {}
	tNewServerActivity_Reward[3300325][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300325][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300325][1]["DeleteItem"][1]["Id"] = 3300325
	tNewServerActivity_Reward[3300325][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300325][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300325][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300325][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tNewServerActivity_Reward[3300325][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300325][1]["RewardItem"][2]["Id"] = 3009001
	tNewServerActivity_Reward[3300325][1]["RewardItem"][2]["Attr"] = "0 5 0 2880 1"  
	tNewServerActivity_Reward[3300325][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300325][1]["RewardItem"][3]["Id"] = 711504
	tNewServerActivity_Reward[3300325][1]["RewardItem"][3]["Attr"] = "0 3 0"  
	tNewServerActivity_Reward[3300325][1]["Talk"] = tNewServerActivity_Text[3300325][1]
	tNewServerActivity_Reward[3300325][1]["Log"] = "0,0,0,0,12000502,2,3009002[3009001][711504],1[5][3]"
	
--消费6级礼包
	tNewServerActivity_Reward[3300326] = {}
	tNewServerActivity_Reward[3300326][1] = {}
	tNewServerActivity_Reward[3300326][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300326][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300326][1]["DeleteItem"][1]["Id"] = 3300326
	tNewServerActivity_Reward[3300326][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300326][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300326][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300326][1]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
	tNewServerActivity_Reward[3300326][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300326][1]["RewardItem"][2]["Id"] = 3005360
	tNewServerActivity_Reward[3300326][1]["RewardItem"][2]["Attr"] = "0 2 0"
	tNewServerActivity_Reward[3300326][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300326][1]["RewardItem"][3]["Id"] = 3001407
	tNewServerActivity_Reward[3300326][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300326][1]["Talk"] = tNewServerActivity_Text[3300326][1]
	tNewServerActivity_Reward[3300326][1]["Log"] = "0,0,0,0,12000502,2,3009002[3005360][3001407],4[2][1]"
	
--消费7级礼包
	tNewServerActivity_Reward[3300327] = {}
	tNewServerActivity_Reward[3300327][1] = {}
	tNewServerActivity_Reward[3300327][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300327][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300327][1]["DeleteItem"][1]["Id"] = 3300327
	tNewServerActivity_Reward[3300327][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300327][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300327][1]["RewardItem"][1]["Id"] = 3300244
	tNewServerActivity_Reward[3300327][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300327][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300327][1]["RewardItem"][2]["Id"] = 1088000
	tNewServerActivity_Reward[3300327][1]["RewardItem"][2]["Attr"] = "0 3 3"
	tNewServerActivity_Reward[3300327][1]["Talk"] = tNewServerActivity_Text[3300327][1]
	tNewServerActivity_Reward[3300327][1]["Log"] = "0,0,0,0,12000502,2,3300244[1088000],1[3]"
	
--消费8级礼包
	tNewServerActivity_Reward[3300328] = {}
	tNewServerActivity_Reward[3300328][1] = {}
	tNewServerActivity_Reward[3300328][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300328][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300328][1]["DeleteItem"][1]["Id"] = 3300328
	tNewServerActivity_Reward[3300328][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300328][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300328][1]["RewardItem"][1]["Id"] = 3300244
	tNewServerActivity_Reward[3300328][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300328][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300328][1]["RewardItem"][2]["Id"] = 700073
	tNewServerActivity_Reward[3300328][1]["RewardItem"][2]["Attr"] = "0 3 3"
	tNewServerActivity_Reward[3300328][1]["Talk"] = tNewServerActivity_Text[3300328][1]
	tNewServerActivity_Reward[3300328][1]["Log"] = "0,0,0,0,12000502,2,3300244[700073],1[3]"
	
--消费9级礼包
	tNewServerActivity_Reward[3300329] = {}
	tNewServerActivity_Reward[3300329][1] = {}
	tNewServerActivity_Reward[3300329][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300329][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300329][1]["DeleteItem"][1]["Id"] = 3300329
	tNewServerActivity_Reward[3300329][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300329][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300329][1]["RewardItem"][1]["Id"] = 3300244
	tNewServerActivity_Reward[3300329][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300329][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300329][1]["RewardItem"][2]["Id"] = 1200006
	tNewServerActivity_Reward[3300329][1]["RewardItem"][2]["Attr"] = "0 3 0"
	tNewServerActivity_Reward[3300329][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300329][1]["RewardItem"][3]["Id"] = 723694
	tNewServerActivity_Reward[3300329][1]["RewardItem"][3]["Attr"] = "0 2 0"
	tNewServerActivity_Reward[3300329][1]["Talk"] = tNewServerActivity_Text[3300329][1]
	tNewServerActivity_Reward[3300329][1]["Log"] = "0,0,0,0,12000502,2,3300244[1200006][723694],1[3][2]"
	
--自创2级礼包礼包
	tNewServerActivity_Reward[3300331] = {}
	tNewServerActivity_Reward[3300331][1] = {}
	tNewServerActivity_Reward[3300331][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300331][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300331][1]["DeleteItem"][1]["Id"] = 3300331
	tNewServerActivity_Reward[3300331][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300331][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300331][1]["RewardItem"][1]["Id"] = 3003125
	tNewServerActivity_Reward[3300331][1]["RewardItem"][1]["Attr"] = "0 3 3"
	tNewServerActivity_Reward[3300331][1]["Talk"] = tNewServerActivity_Text[3300331][1]
	tNewServerActivity_Reward[3300331][1]["Log"] = "0,0,0,0,12000502,2,3003125,3"
	
--自创3级礼包礼包
	tNewServerActivity_Reward[3300332] = {}
	tNewServerActivity_Reward[3300332][1] = {}
	tNewServerActivity_Reward[3300332][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300332][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300332][1]["DeleteItem"][1]["Id"] = 3300332
	tNewServerActivity_Reward[3300332][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300332][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300332][1]["RewardItem"][1]["Id"] = 3003125
	tNewServerActivity_Reward[3300332][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewServerActivity_Reward[3300332][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300332][1]["RewardItem"][2]["Id"] = 3003124
	tNewServerActivity_Reward[3300332][1]["RewardItem"][2]["Attr"] = "0 4 3"
	tNewServerActivity_Reward[3300332][1]["Talk"] = tNewServerActivity_Text[3300332][1]
	tNewServerActivity_Reward[3300332][1]["Log"] = "0,0,0,0,12000502,2,3003125[3003124],2[4]"
	
--自创4级礼包礼包
	tNewServerActivity_Reward[3300333] = {}
	tNewServerActivity_Reward[3300333][1] = {}
	tNewServerActivity_Reward[3300333][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300333][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300333][1]["DeleteItem"][1]["Id"] = 3300333
	tNewServerActivity_Reward[3300333][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300333][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300333][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300333][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tNewServerActivity_Reward[3300333][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300333][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300333][1]["RewardItem"][2]["Attr"] = "0 10 3"
	tNewServerActivity_Reward[3300333][1]["Talk"] = tNewServerActivity_Text[3300333][1]
	tNewServerActivity_Reward[3300333][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126],10[10]"
	
--自创5级礼包礼包
	tNewServerActivity_Reward[3300334] = {}
	tNewServerActivity_Reward[3300334][1] = {}
	tNewServerActivity_Reward[3300334][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300334][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300334][1]["DeleteItem"][1]["Id"] = 3300334
	tNewServerActivity_Reward[3300334][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300334][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300334][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300334][1]["RewardItem"][1]["Attr"] = "0 15 3"
	tNewServerActivity_Reward[3300334][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300334][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300334][1]["RewardItem"][2]["Attr"] = "0 15 3"
	tNewServerActivity_Reward[3300334][1]["Talk"] = tNewServerActivity_Text[3300334][1]
	tNewServerActivity_Reward[3300334][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126],15[15]"
	
--自创6级礼包礼包
	tNewServerActivity_Reward[3300335] = {}
	tNewServerActivity_Reward[3300335][1] = {}
	tNewServerActivity_Reward[3300335][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300335][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300335][1]["DeleteItem"][1]["Id"] = 3300335
	tNewServerActivity_Reward[3300335][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300335][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300335][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300335][1]["RewardItem"][1]["Attr"] = "0 30 3"
	tNewServerActivity_Reward[3300335][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300335][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300335][1]["RewardItem"][2]["Attr"] = "0 30 3"
	tNewServerActivity_Reward[3300335][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300335][1]["RewardItem"][3]["Id"] = 3002030
	tNewServerActivity_Reward[3300335][1]["RewardItem"][3]["Attr"] = "0 30 3"
	tNewServerActivity_Reward[3300335][1]["Talk"] = tNewServerActivity_Text[3300335][1]
	tNewServerActivity_Reward[3300335][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126][3002030],30[30][30]"

--自创7级礼包
	tNewServerActivity_Reward[3300336] = {}
	tNewServerActivity_Reward[3300336][1] = {}
	tNewServerActivity_Reward[3300336][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300336][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300336][1]["DeleteItem"][1]["Id"] = 3300336
	tNewServerActivity_Reward[3300336][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300336][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300336][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300336][1]["RewardItem"][1]["Attr"] = "0 50 3"
	tNewServerActivity_Reward[3300336][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300336][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300336][1]["RewardItem"][2]["Attr"] = "0 50 3"
	tNewServerActivity_Reward[3300336][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300336][1]["RewardItem"][3]["Id"] = 3002030
	tNewServerActivity_Reward[3300336][1]["RewardItem"][3]["Attr"] = "0 50 3"
	tNewServerActivity_Reward[3300336][1]["Talk"] = tNewServerActivity_Text[3300336][1]
	tNewServerActivity_Reward[3300336][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126][3002030],50[50][50]"

--自创8级礼包礼包
	tNewServerActivity_Reward[3300337] = {}
	tNewServerActivity_Reward[3300337][1] = {}
	tNewServerActivity_Reward[3300337][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300337][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300337][1]["DeleteItem"][1]["Id"] = 3300337
	tNewServerActivity_Reward[3300337][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300337][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300337][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300337][1]["RewardItem"][1]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300337][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300337][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300337][1]["RewardItem"][2]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300337][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300337][1]["RewardItem"][3]["Id"] = 3300246
	tNewServerActivity_Reward[3300337][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300337][1]["Talk"] = tNewServerActivity_Text[3300337][1]
	tNewServerActivity_Reward[3300337][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126][3300246],100[100][1]"
	
	--自创8级礼包礼包
	tNewServerActivity_Reward[3300338] = {}
	tNewServerActivity_Reward[3300338][1] = {}
	tNewServerActivity_Reward[3300338][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300338][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300338][1]["DeleteItem"][1]["Id"] = 3300338
	tNewServerActivity_Reward[3300338][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300338][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300338][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300338][1]["RewardItem"][1]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300338][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300338][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300338][1]["RewardItem"][2]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300338][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300338][1]["RewardItem"][3]["Id"] = 3300244
	tNewServerActivity_Reward[3300338][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300338][1]["Talk"] = tNewServerActivity_Text[3300338][1]
	tNewServerActivity_Reward[3300338][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126][3300244],100[100][1]"
	
--外套4级礼包
	tNewServerActivity_Reward[3300339] = {}
	tNewServerActivity_Reward[3300339][1] = {}
	tNewServerActivity_Reward[3300339][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300339][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300339][1]["DeleteItem"][1]["Id"] = 3300339
	tNewServerActivity_Reward[3300339][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300339][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300339][1]["RewardItem"][1]["Id"] = 3008226
	tNewServerActivity_Reward[3300339][1]["RewardItem"][1]["Attr"] = "0 50 0"
	tNewServerActivity_Reward[3300339][1]["Talk"] = tNewServerActivity_Text[3300339][1]
	tNewServerActivity_Reward[3300339][1]["Log"] = "0,0,0,0,12000502,2,3008226,50"
--实力1级礼包
	tNewServerActivity_Reward[3300341] = {}
	tNewServerActivity_Reward[3300341][1] = {}
	tNewServerActivity_Reward[3300341][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300341][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300341][1]["DeleteItem"][1]["Id"] = 3300341
	tNewServerActivity_Reward[3300341][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300341][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300341][1]["RewardItem"][1]["Id"] = 3300362
	tNewServerActivity_Reward[3300341][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300341][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300341][1]["RewardItem"][2]["Id"] = 3005892
	tNewServerActivity_Reward[3300341][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300341][1]["Talk"] = tNewServerActivity_Text[3300341][1]
	tNewServerActivity_Reward[3300341][1]["Log"] = "0,0,0,0,12000502,2,3300362[3005892],1[1]"
--实力2级礼包3006236
	tNewServerActivity_Reward[3300342] = {}
	tNewServerActivity_Reward[3300342][1] = {}
	tNewServerActivity_Reward[3300342][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300342][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300342][1]["DeleteItem"][1]["Id"] = 3300342
	tNewServerActivity_Reward[3300342][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300342][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300342][1]["RewardItem"][1]["Id"] = 3300363
	tNewServerActivity_Reward[3300342][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300342][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300342][1]["RewardItem"][2]["Id"] = 3300000
	tNewServerActivity_Reward[3300342][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300342][1]["Talk"] = tNewServerActivity_Text[3300342][1]
	tNewServerActivity_Reward[3300342][1]["Log"] = "0,0,0,0,12000502,2,3300363[3300000],1[1]"
--实力3级礼包
	tNewServerActivity_Reward[3300343] = {}
	tNewServerActivity_Reward[3300343][1] = {}
	tNewServerActivity_Reward[3300343][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300343][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300343][1]["DeleteItem"][1]["Id"] = 3300343
	tNewServerActivity_Reward[3300343][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300343][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300343][1]["RewardItem"][1]["Id"] = 3300364
	tNewServerActivity_Reward[3300343][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300343][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300343][1]["RewardItem"][2]["Id"] = 3006236
	tNewServerActivity_Reward[3300343][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300343][1]["Talk"] = tNewServerActivity_Text[3300343][1]
	tNewServerActivity_Reward[3300343][1]["Log"] = "0,0,0,0,12000502,2,3300364[3006236],1[1]"
	
	--实力4级礼包
	tNewServerActivity_Reward[3300344] = {}
	tNewServerActivity_Reward[3300344][1] = {}
	tNewServerActivity_Reward[3300344][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300344][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300344][1]["DeleteItem"][1]["Id"] = 3300344
	tNewServerActivity_Reward[3300344][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300344][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300344][1]["RewardItem"][1]["Id"] = 3300365
	tNewServerActivity_Reward[3300344][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300344][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300344][1]["RewardItem"][2]["Id"] = 3100022
	tNewServerActivity_Reward[3300344][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300344][1]["Talk"] = tNewServerActivity_Text[3300344][1]
	tNewServerActivity_Reward[3300344][1]["Log"] = "0,0,0,0,12000502,2,3300365[3100022],1[1]"

--30级修炼礼包
	tNewServerActivity_Reward[3300345] = {}
	tNewServerActivity_Reward[3300345][1] = {}
	tNewServerActivity_Reward[3300345][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300345][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300345][1]["DeleteItem"][1]["Id"] = 3300345
	tNewServerActivity_Reward[3300345][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300345][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300345][1]["RewardItem"][1]["Id"] = 1200000
	tNewServerActivity_Reward[3300345][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tNewServerActivity_Reward[3300345][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300345][1]["RewardItem"][2]["Id"] = 728777
	tNewServerActivity_Reward[3300345][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300345][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300345][1]["RewardItem"][3]["Id"] = 720027
	tNewServerActivity_Reward[3300345][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300345][1]["Talk"] = tNewServerActivity_Text[3300345][1]
	tNewServerActivity_Reward[3300345][1]["Log"] = "0,0,0,0,12000502,2,1200000[728777][720027],2[1][1]"
	
--70级修炼礼包
	tNewServerActivity_Reward[3300346] = {}
	tNewServerActivity_Reward[3300346][1] = {}
	tNewServerActivity_Reward[3300346][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300346][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300346][1]["DeleteItem"][1]["Id"] = 3300346
	tNewServerActivity_Reward[3300346][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300346][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300346][1]["RewardItem"][1]["Id"] = 722146
	tNewServerActivity_Reward[3300346][1]["RewardItem"][1]["Attr"] = "0 5 3"
	tNewServerActivity_Reward[3300346][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300346][1]["RewardItem"][2]["Id"] = 720027
	tNewServerActivity_Reward[3300346][1]["RewardItem"][2]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300346][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300346][1]["RewardItem"][3]["Id"] = 723342
	tNewServerActivity_Reward[3300346][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300346][1]["Talk"] = tNewServerActivity_Text[3300346][1]
	tNewServerActivity_Reward[3300346][1]["Log"] = "0,0,0,0,12000502,2,722146[720027][723342],5[1][1]"
	
--100级修炼礼包
	tNewServerActivity_Reward[3300347] = {}
	tNewServerActivity_Reward[3300347][1] = {}
	tNewServerActivity_Reward[3300347][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300347][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300347][1]["DeleteItem"][1]["Id"] = 3300347
	tNewServerActivity_Reward[3300347][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300347][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300347][1]["RewardItem"][1]["Id"] = 720828
	tNewServerActivity_Reward[3300347][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300347][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300347][1]["RewardItem"][2]["Id"] = 3300243
	tNewServerActivity_Reward[3300347][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300347][1]["Talk"] = tNewServerActivity_Text[3300347][1]
	tNewServerActivity_Reward[3300347][1]["Log"] = "0,0,0,0,12000502,2,720828[3300243],1[1]"
	
--110级修炼礼包
	tNewServerActivity_Reward[3300348] = {}
	tNewServerActivity_Reward[3300348][1] = {}
	tNewServerActivity_Reward[3300348][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300348][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300348][1]["DeleteItem"][1]["Id"] = 3300348
	tNewServerActivity_Reward[3300348][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300348][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300348][1]["RewardItem"][1]["Id"] = 181425
	tNewServerActivity_Reward[3300348][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tNewServerActivity_Reward[3300348][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300348][1]["RewardItem"][2]["Id"] = 3300249
	tNewServerActivity_Reward[3300348][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300348][1]["Talk"] = tNewServerActivity_Text[3300348][1]
	tNewServerActivity_Reward[3300348][1]["Log"] = "0,0,0,0,12000502,2,181425[3300249],1[1]"
	
--1转修炼礼包
	tNewServerActivity_Reward[3300349] = {}
	tNewServerActivity_Reward[3300349][1] = {}
	tNewServerActivity_Reward[3300349][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300349][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300349][1]["DeleteItem"][1]["Id"] = 3300349
	tNewServerActivity_Reward[3300349][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300349][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300349][1]["RewardItem"][1]["Id"] = 1200001
	tNewServerActivity_Reward[3300349][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300349][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300349][1]["RewardItem"][2]["Id"] = 3300247
	tNewServerActivity_Reward[3300349][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300349][1]["Talk"] = tNewServerActivity_Text[3300349][1]
	tNewServerActivity_Reward[3300349][1]["Log"] = "0,0,0,0,12000502,2,1200001[3300247],1[1]"

--2转修炼礼包
	tNewServerActivity_Reward[3300351] = {}
	tNewServerActivity_Reward[3300351][1] = {}
	tNewServerActivity_Reward[3300351][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300351][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300351][1]["DeleteItem"][1]["Id"] = 3300351
	tNewServerActivity_Reward[3300351][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300351][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300351][1]["RewardItem"][1]["Id"] = 3300373
	tNewServerActivity_Reward[3300351][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300351][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300351][1]["RewardItem"][2]["Id"] = 3300366
	tNewServerActivity_Reward[3300351][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300351][1]["Talk"] = tNewServerActivity_Text[3300351][1]
	tNewServerActivity_Reward[3300351][1]["Log"] = "0,0,0,0,12000502,2,3300373[3300366],1[1]"
	
--成就1阶礼包
	tNewServerActivity_Reward[3300352] = {}
	tNewServerActivity_Reward[3300352][1] = {}
	tNewServerActivity_Reward[3300352][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300352][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300352][1]["DeleteItem"][1]["Id"] = 3300352
	tNewServerActivity_Reward[3300352][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300352][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300352][1]["RewardItem"][1]["Id"] = 3300269
	tNewServerActivity_Reward[3300352][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300352][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300352][1]["RewardItem"][2]["Id"] = 3300264
	tNewServerActivity_Reward[3300352][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300352][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300352][1]["RewardItem"][3]["Id"] = 3300243
	tNewServerActivity_Reward[3300352][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300352][1]["Talk"] = tNewServerActivity_Text[3300352][1]
	tNewServerActivity_Reward[3300352][1]["Log"] = "0,0,0,0,12000502,2,3300269[3300264][3300243],1[1][1]"
	
--成就2阶礼包
	tNewServerActivity_Reward[3300353] = {}
	tNewServerActivity_Reward[3300353][1] = {}
	tNewServerActivity_Reward[3300353][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300353][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300353][1]["DeleteItem"][1]["Id"] = 3300353
	tNewServerActivity_Reward[3300353][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300353][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300353][1]["RewardItem"][1]["Id"] = 3300271
	tNewServerActivity_Reward[3300353][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300353][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300353][1]["RewardItem"][2]["Id"] = 3300239
	tNewServerActivity_Reward[3300353][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300353][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300353][1]["RewardItem"][3]["Id"] = 3300248
	tNewServerActivity_Reward[3300353][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300353][1]["Talk"] = tNewServerActivity_Text[3300353][1]
	tNewServerActivity_Reward[3300353][1]["Log"] = "0,0,0,0,12000502,2,3300271[3300239][3300248],1[1][1]"

--成就3阶礼包
	tNewServerActivity_Reward[3300354] = {}
	tNewServerActivity_Reward[3300354][1] = {}
	tNewServerActivity_Reward[3300354][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300354][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300354][1]["DeleteItem"][1]["Id"] = 3300354
	tNewServerActivity_Reward[3300354][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300354][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300354][1]["RewardItem"][1]["Id"] = 3300272
	tNewServerActivity_Reward[3300354][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300354][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300354][1]["RewardItem"][2]["Id"] = 3300265
	tNewServerActivity_Reward[3300354][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300354][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300354][1]["RewardItem"][3]["Id"] = 3300251
	tNewServerActivity_Reward[3300354][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300354][1]["Talk"] = tNewServerActivity_Text[3300354][1]
	tNewServerActivity_Reward[3300354][1]["Log"] = "0,0,0,0,12000502,2,3300272[3300265][3300251],1[1][1]"
	
--成就4阶礼包
	tNewServerActivity_Reward[3300355] = {}
	tNewServerActivity_Reward[3300355][1] = {}
	tNewServerActivity_Reward[3300355][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300355][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300355][1]["DeleteItem"][1]["Id"] = 3300355
	tNewServerActivity_Reward[3300355][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300355][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300355][1]["RewardItem"][1]["Id"] = 3300273
	tNewServerActivity_Reward[3300355][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300355][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300355][1]["RewardItem"][2]["Id"] = 3300266
	tNewServerActivity_Reward[3300355][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300355][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300355][1]["RewardItem"][3]["Id"] = 3300247
	tNewServerActivity_Reward[3300355][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300355][1]["Talk"] = tNewServerActivity_Text[3300355][1]
	tNewServerActivity_Reward[3300355][1]["Log"] = "0,0,0,0,12000502,2,3300273[3300266][3300247],1[1][1]"
	
--成就5阶礼包
	tNewServerActivity_Reward[3300356] = {}
	tNewServerActivity_Reward[3300356][1] = {}
	tNewServerActivity_Reward[3300356][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300356][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300356][1]["DeleteItem"][1]["Id"] = 3300356
	tNewServerActivity_Reward[3300356][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300356][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300356][1]["RewardItem"][1]["Id"] = 3300306
	tNewServerActivity_Reward[3300356][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300356][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300356][1]["RewardItem"][2]["Id"] = 3300261
	tNewServerActivity_Reward[3300356][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300356][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300356][1]["RewardItem"][3]["Id"] = 3300252
	tNewServerActivity_Reward[3300356][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300356][1]["Talk"] = tNewServerActivity_Text[3300356][1]
	tNewServerActivity_Reward[3300356][1]["Log"] = "0,0,0,0,12000502,2,3300306[3300261][3300252],1[1][1]"
	
--成就6阶礼包
	tNewServerActivity_Reward[3300357] = {}
	tNewServerActivity_Reward[3300357][1] = {}
	tNewServerActivity_Reward[3300357][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300357][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300357][1]["DeleteItem"][1]["Id"] = 3300357
	tNewServerActivity_Reward[3300357][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300357][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300357][1]["RewardItem"][1]["Id"] = 3300307
	tNewServerActivity_Reward[3300357][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300357][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300357][1]["RewardItem"][2]["Id"] = 3300267
	tNewServerActivity_Reward[3300357][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300357][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300357][1]["RewardItem"][3]["Id"] = 3300253
	tNewServerActivity_Reward[3300357][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300357][1]["Talk"] = tNewServerActivity_Text[3300357][1]
	tNewServerActivity_Reward[3300357][1]["Log"] = "0,0,0,0,12000502,2,3300307[3300307][3300253],1[1][1]"
	
--成就7阶礼包
	tNewServerActivity_Reward[3300358] = {}
	tNewServerActivity_Reward[3300358][1] = {}
	tNewServerActivity_Reward[3300358][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300358][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300358][1]["DeleteItem"][1]["Id"] = 3300358
	tNewServerActivity_Reward[3300358][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300358][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300358][1]["RewardItem"][1]["Id"] = 3300308
	tNewServerActivity_Reward[3300358][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300358][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300358][1]["RewardItem"][2]["Id"] = 3300268
	tNewServerActivity_Reward[3300358][1]["RewardItem"][2]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300358][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300358][1]["RewardItem"][3]["Id"] = 3300244
	tNewServerActivity_Reward[3300358][1]["RewardItem"][3]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300358][1]["Talk"] = tNewServerActivity_Text[3300358][1]
	tNewServerActivity_Reward[3300358][1]["Log"] = "0,0,0,0,12000502,2,3300308[3300268][3300244],1[1][1]"
	
--500赠品天石礼包
	tNewServerActivity_Reward[3300362] = {}
	tNewServerActivity_Reward[3300362][1] = {}
	tNewServerActivity_Reward[3300362][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300362][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300362][1]["DeleteItem"][1]["Id"] = 3300362
	tNewServerActivity_Reward[3300362][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300362][1]["RewardEMoneyMono"]["Value"] = 500
	tNewServerActivity_Reward[3300362][1]["Talk"] = tNewServerActivity_Text[3300362][1]
	tNewServerActivity_Reward[3300362][1]["Log"] = "0,0,0,0,12000502,2,3,500"
	
--1500赠品天石礼包
	tNewServerActivity_Reward[3300363] = {}
	tNewServerActivity_Reward[3300363][1] = {}
	tNewServerActivity_Reward[3300363][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300363][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300363][1]["DeleteItem"][1]["Id"] = 3300363
	tNewServerActivity_Reward[3300363][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300363][1]["RewardEMoneyMono"]["Value"] = 1500
	tNewServerActivity_Reward[3300363][1]["Talk"] = tNewServerActivity_Text[3300363][1]
	tNewServerActivity_Reward[3300363][1]["Log"] = "0,0,0,0,12000502,2,3,1500"
	
--3000赠品天石礼包
	tNewServerActivity_Reward[3300364] = {}
	tNewServerActivity_Reward[3300364][1] = {}
	tNewServerActivity_Reward[3300364][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300364][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300364][1]["DeleteItem"][1]["Id"] = 3300364
	tNewServerActivity_Reward[3300364][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300364][1]["RewardEMoneyMono"]["Value"] = 3000
	tNewServerActivity_Reward[3300364][1]["Talk"] = tNewServerActivity_Text[3300364][1]
	tNewServerActivity_Reward[3300364][1]["Log"] = "0,0,0,0,12000502,2,3,3000"
	
--5000赠品天石礼包
	tNewServerActivity_Reward[3300365] = {}
	tNewServerActivity_Reward[3300365][1] = {}
	tNewServerActivity_Reward[3300365][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300365][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300365][1]["DeleteItem"][1]["Id"] = 3300365
	tNewServerActivity_Reward[3300365][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300365][1]["RewardEMoneyMono"]["Value"] = 5000
	tNewServerActivity_Reward[3300365][1]["Talk"] = tNewServerActivity_Text[3300365][1]
	tNewServerActivity_Reward[3300365][1]["Log"] = "0,0,0,0,12000502,2,3,5000"
	
--1000赠品天石礼包
	tNewServerActivity_Reward[3300366] = {}
	tNewServerActivity_Reward[3300366][1] = {}
	tNewServerActivity_Reward[3300366][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300366][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300366][1]["DeleteItem"][1]["Id"] = 3300366
	tNewServerActivity_Reward[3300366][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300366][1]["RewardEMoneyMono"]["Value"] = 1000
	tNewServerActivity_Reward[3300366][1]["Talk"] = tNewServerActivity_Text[3300366][1]
	tNewServerActivity_Reward[3300366][1]["Log"] = "0,0,0,0,12000502,2,3,1000"
	
--明亮星陨石x3礼包
	tNewServerActivity_Reward[3300404] = {}
	tNewServerActivity_Reward[3300404][1] = {}
	tNewServerActivity_Reward[3300404][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300404][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300404][1]["DeleteItem"][1]["Id"] = 3300404
	tNewServerActivity_Reward[3300404][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300404][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300404][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300404][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" 
	tNewServerActivity_Reward[3300404][1]["Talk"] = tNewServerActivity_Text[3300404][1]
	tNewServerActivity_Reward[3300404][1]["Log"] = "0,0,0,0,12000502,2,3009001,3"
	
--经验球*10礼包
	tNewServerActivity_Reward[3300403] = {}
	tNewServerActivity_Reward[3300403][1] = {}
	tNewServerActivity_Reward[3300403][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300403][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300403][1]["DeleteItem"][1]["Id"] = 3300403
	tNewServerActivity_Reward[3300403][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300403][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300403][1]["RewardItem"][1]["Id"] = 722146
	tNewServerActivity_Reward[3300403][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tNewServerActivity_Reward[3300403][1]["Talk"] = tNewServerActivity_Text[3300403][1]
	tNewServerActivity_Reward[3300403][1]["Log"] = "0,0,0,0,12000502,2,722146,10"
	
--自创4级礼包礼包
	tNewServerActivity_Reward[3300402] = {}
	tNewServerActivity_Reward[3300402][1] = {}
	tNewServerActivity_Reward[3300402][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300402][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300402][1]["DeleteItem"][1]["Id"] = 3300402
	tNewServerActivity_Reward[3300402][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300402][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300402][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300402][1]["RewardItem"][1]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300402][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300402][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300402][1]["RewardItem"][2]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300402][1]["Talk"] = tNewServerActivity_Text[3300402][1]
	tNewServerActivity_Reward[3300402][1]["Log"] = "0,0,0,0,12000502,2,3003124[3003126],100[100]"
	
	tNewServerActivity_Reward[3300713] = {}
	tNewServerActivity_Reward[3300713][1] = {}
	tNewServerActivity_Reward[3300713][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300713][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300713][1]["DeleteItem"][1]["Id"] = 3300713
	tNewServerActivity_Reward[3300713][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300713][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300713][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300713][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tNewServerActivity_Reward[3300713][1]["Talk"] = tNewServerActivity_Text[3300713][1]
	tNewServerActivity_Reward[3300713][1]["Log"] = "0,0,0,0,12000502,2,3009002,1"
	
--10月新服

--10天石礼包
	tNewServerActivity_Reward[3300757] = {}
	tNewServerActivity_Reward[3300757][1] = {}
	tNewServerActivity_Reward[3300757][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300757][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300757][1]["DeleteItem"][1]["Id"] = 3300757
	tNewServerActivity_Reward[3300757][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300757][1]["RewardEMoneyMono"]["Value"] = 10
	tNewServerActivity_Reward[3300757][1]["Talk"] = tNewServerActivity_Text[3300757][1]
	tNewServerActivity_Reward[3300757][1]["Log"] = "0,0,0,0,12000527,2,3,10"

--20天石礼包
	tNewServerActivity_Reward[3300758] = {}
	tNewServerActivity_Reward[3300758][1] = {}
	tNewServerActivity_Reward[3300758][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300758][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300758][1]["DeleteItem"][1]["Id"] = 3300758
	tNewServerActivity_Reward[3300758][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300758][1]["RewardEMoneyMono"]["Value"] = 20
	tNewServerActivity_Reward[3300758][1]["Talk"] = tNewServerActivity_Text[3300758][1]
	tNewServerActivity_Reward[3300758][1]["Log"] = "0,0,0,0,12000527,2,3,20"

	
--30天石礼包
	tNewServerActivity_Reward[3300759] = {}
	tNewServerActivity_Reward[3300759][1] = {}
	tNewServerActivity_Reward[3300759][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300759][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300759][1]["DeleteItem"][1]["Id"] = 3300759
	tNewServerActivity_Reward[3300759][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300759][1]["RewardEMoneyMono"]["Value"] = 30
	tNewServerActivity_Reward[3300759][1]["Talk"] = tNewServerActivity_Text[3300759][1]
	tNewServerActivity_Reward[3300759][1]["Log"] = "0,0,0,0,12000527,2,3,30"
	
--60天石礼包
	tNewServerActivity_Reward[3300760] = {}
	tNewServerActivity_Reward[3300760][1] = {}
	tNewServerActivity_Reward[3300760][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300760][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300760][1]["DeleteItem"][1]["Id"] = 3300760
	tNewServerActivity_Reward[3300760][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300760][1]["RewardEMoneyMono"]["Value"] = 60
	tNewServerActivity_Reward[3300760][1]["Talk"] = tNewServerActivity_Text[3300760][1]
	tNewServerActivity_Reward[3300760][1]["Log"] = "0,0,0,0,12000527,2,3,60"
	
--150天石礼包
	tNewServerActivity_Reward[3300761] = {}
	tNewServerActivity_Reward[3300761][1] = {}
	tNewServerActivity_Reward[3300761][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300761][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300761][1]["DeleteItem"][1]["Id"] = 3300761
	tNewServerActivity_Reward[3300761][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300761][1]["RewardEMoneyMono"]["Value"] = 150
	tNewServerActivity_Reward[3300761][1]["Talk"] = tNewServerActivity_Text[3300761][1]
	tNewServerActivity_Reward[3300761][1]["Log"] = "0,0,0,0,12000527,2,3,150"
	
--500天石礼包
	tNewServerActivity_Reward[3300762] = {}
	tNewServerActivity_Reward[3300762][1] = {}
	tNewServerActivity_Reward[3300762][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300762][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300762][1]["DeleteItem"][1]["Id"] = 3300762
	tNewServerActivity_Reward[3300762][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300762][1]["RewardEMoneyMono"]["Value"] = 500
	tNewServerActivity_Reward[3300762][1]["Talk"] = tNewServerActivity_Text[3300762][1]
	tNewServerActivity_Reward[3300762][1]["Log"] = "0,0,0,0,12000527,2,3,600"
	
--1500天石礼包
	tNewServerActivity_Reward[3300763] = {}
	tNewServerActivity_Reward[3300763][1] = {}
	tNewServerActivity_Reward[3300763][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300763][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300763][1]["DeleteItem"][1]["Id"] = 3300763
	tNewServerActivity_Reward[3300763][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300763][1]["RewardEMoneyMono"]["Value"] = 1500
	tNewServerActivity_Reward[3300763][1]["Talk"] = tNewServerActivity_Text[3300763][1]
	tNewServerActivity_Reward[3300763][1]["Log"] = "0,0,0,0,12000527,2,3,1500"
	
--2000天石礼包
	tNewServerActivity_Reward[3300764] = {}
	tNewServerActivity_Reward[3300764][1] = {}
	tNewServerActivity_Reward[3300764][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300764][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300764][1]["DeleteItem"][1]["Id"] = 3300764
	tNewServerActivity_Reward[3300764][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300764][1]["RewardEMoneyMono"]["Value"] = 2000
	tNewServerActivity_Reward[3300764][1]["EmoneyLog"] = "350	22236	0	0	-2000	"
	tNewServerActivity_Reward[3300764][1]["Talk"] = tNewServerActivity_Text[3300764][1]
	tNewServerActivity_Reward[3300764][1]["Log"] = "0,0,0,0,12000527,2,3,2000"
	
--2500天石礼包
	tNewServerActivity_Reward[3300765] = {}
	tNewServerActivity_Reward[3300765][1] = {}
	tNewServerActivity_Reward[3300765][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300765][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300765][1]["DeleteItem"][1]["Id"] = 3300765
	tNewServerActivity_Reward[3300765][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300765][1]["RewardEMoneyMono"]["Value"] = 2500
	tNewServerActivity_Reward[3300765][1]["Talk"] = tNewServerActivity_Text[3300765][1]
	tNewServerActivity_Reward[3300765][1]["Log"] = "0,0,0,0,12000527,2,3,2500"
	
--3500天石礼包
	tNewServerActivity_Reward[3300766] = {}
	tNewServerActivity_Reward[3300766][1] = {}
	tNewServerActivity_Reward[3300766][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300766][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300766][1]["DeleteItem"][1]["Id"] = 3300766
	tNewServerActivity_Reward[3300766][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300766][1]["RewardEMoneyMono"]["Value"] = 3500
	tNewServerActivity_Reward[3300766][1]["Talk"] = tNewServerActivity_Text[3300766][1]
	tNewServerActivity_Reward[3300766][1]["Log"] = "0,0,0,0,12000527,2,3,3500"
	
--5000天石礼包
	tNewServerActivity_Reward[3300767] = {}
	tNewServerActivity_Reward[3300767][1] = {}
	tNewServerActivity_Reward[3300767][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300767][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300767][1]["DeleteItem"][1]["Id"] = 3300767
	tNewServerActivity_Reward[3300767][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300767][1]["RewardEMoneyMono"]["Value"] = 5000
	tNewServerActivity_Reward[3300767][1]["Talk"] = tNewServerActivity_Text[3300767][1]
	tNewServerActivity_Reward[3300767][1]["Log"] = "0,0,0,0,12000527,2,3,5000"
		
--消费1阶
	tNewServerActivity_Reward[3300768] = {}
	tNewServerActivity_Reward[3300768][1] = {}
	tNewServerActivity_Reward[3300768][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300768][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300768][1]["DeleteItem"][1]["Id"] = 3300768
	tNewServerActivity_Reward[3300768][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300768][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300768][1]["RewardItem"][1]["Id"] = 3009000
	tNewServerActivity_Reward[3300768][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" 
	tNewServerActivity_Reward[3300768][1]["Talk"] = tNewServerActivity_Text[3300768][1]
	tNewServerActivity_Reward[3300768][1]["Log"] = "0,0,0,0,12000527,2,3009000,5"

--消费2阶
	tNewServerActivity_Reward[3300769] = {}
	tNewServerActivity_Reward[3300769][1] = {}
	tNewServerActivity_Reward[3300769][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300769][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300769][1]["DeleteItem"][1]["Id"] = 3300769
	tNewServerActivity_Reward[3300769][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300769][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300769][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300769][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tNewServerActivity_Reward[3300769][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300769][1]["RewardItem"][2]["Id"] = 3002559
	tNewServerActivity_Reward[3300769][1]["RewardItem"][2]["Attr"] = "0 2 3" 
	tNewServerActivity_Reward[3300769][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300769][1]["RewardItem"][3]["Id"] = 728777
	tNewServerActivity_Reward[3300769][1]["RewardItem"][3]["Attr"] = "0 1 0" 
	tNewServerActivity_Reward[3300769][1]["Talk"] = tNewServerActivity_Text[3300323][1]
	tNewServerActivity_Reward[3300769][1]["Log"] = "0,0,0,0,12000527,2,3009001[3002559][728777],1[2][1]"	

	--消费3级 
	tNewServerActivity_Reward[3300770] = {}
	tNewServerActivity_Reward[3300770][1] = {}
	tNewServerActivity_Reward[3300770][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300770][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300770][1]["DeleteItem"][1]["Id"] = 3300770
	tNewServerActivity_Reward[3300770][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300770][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300770][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300770][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" 
	tNewServerActivity_Reward[3300770][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300770][1]["RewardItem"][2]["Id"] = 730002
	tNewServerActivity_Reward[3300770][1]["RewardItem"][2]["Attr"] = "0 2 0"  
	tNewServerActivity_Reward[3300770][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300770][1]["RewardItem"][3]["Id"] = 722146
	tNewServerActivity_Reward[3300770][1]["RewardItem"][3]["Attr"] = "0 5 0"  
	tNewServerActivity_Reward[3300770][1]["Talk"] = tNewServerActivity_Text[3300770][1]
	tNewServerActivity_Reward[3300770][1]["Log"] = "0,0,0,0,12000527,2,3009001[730002][722146],1[2][5]"

	--消费4级 
	tNewServerActivity_Reward[3300771] = {}
	tNewServerActivity_Reward[3300771][1] = {}
	tNewServerActivity_Reward[3300771][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300771][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300771][1]["DeleteItem"][1]["Id"] = 3300771
	tNewServerActivity_Reward[3300771][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300771][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300771][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300771][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tNewServerActivity_Reward[3300771][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300771][1]["RewardItem"][2]["Id"] = 720027
	tNewServerActivity_Reward[3300771][1]["RewardItem"][2]["Attr"] = "0 2 0"  
	tNewServerActivity_Reward[3300771][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300771][1]["RewardItem"][3]["Id"] = 724002
	tNewServerActivity_Reward[3300771][1]["RewardItem"][3]["Attr"] = "0 1 0"  
	tNewServerActivity_Reward[3300771][1]["Talk"] = tNewServerActivity_Text[3300771][1]
	tNewServerActivity_Reward[3300771][1]["Log"] = "0,0,0,0,12000527,2,3009001[720027][724002],2[2][1]"
	
	--消费5级  
	tNewServerActivity_Reward[3300772] = {}
	tNewServerActivity_Reward[3300772][1] = {}
	tNewServerActivity_Reward[3300772][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300772][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300772][1]["DeleteItem"][1]["Id"] = 3300772
	tNewServerActivity_Reward[3300772][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300772][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300772][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300772][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" 
	tNewServerActivity_Reward[3300772][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300772][1]["RewardItem"][2]["Id"] = 3003124
	tNewServerActivity_Reward[3300772][1]["RewardItem"][2]["Attr"] = "0 5 3"  
	tNewServerActivity_Reward[3300772][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300772][1]["RewardItem"][3]["Id"] = 3003125
	tNewServerActivity_Reward[3300772][1]["RewardItem"][3]["Attr"] = "0 5 3"  
	tNewServerActivity_Reward[3300772][1]["RewardItem"][4] = {}
	tNewServerActivity_Reward[3300772][1]["RewardItem"][4]["Id"] = 3002030
	tNewServerActivity_Reward[3300772][1]["RewardItem"][4]["Attr"] = "0 5 3"  
	tNewServerActivity_Reward[3300772][1]["Talk"] = tNewServerActivity_Text[3300772][1]
	tNewServerActivity_Reward[3300772][1]["Log"] = "0,0,0,0,12000527,2,3009001[3003124][3003125][3002030],2[5][5][5]"
	
--消费6级  
	tNewServerActivity_Reward[3300773] = {}
	tNewServerActivity_Reward[3300773][1] = {}
	tNewServerActivity_Reward[3300773][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300773][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300773][1]["DeleteItem"][1]["Id"] = 3300773
	tNewServerActivity_Reward[3300773][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300773][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300773][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300773][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" 
	tNewServerActivity_Reward[3300773][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300773][1]["RewardItem"][2]["Id"] = 3003124
	tNewServerActivity_Reward[3300773][1]["RewardItem"][2]["Attr"] = "0 5 3"  
	tNewServerActivity_Reward[3300773][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300773][1]["RewardItem"][3]["Id"] = 3003126
	tNewServerActivity_Reward[3300773][1]["RewardItem"][3]["Attr"] = "0 5 3"  
	tNewServerActivity_Reward[3300773][1]["RewardItem"][4] = {}
	tNewServerActivity_Reward[3300773][1]["RewardItem"][4]["Id"] = 3002030
	tNewServerActivity_Reward[3300773][1]["RewardItem"][4]["Attr"] = "0 10 3"  
	tNewServerActivity_Reward[3300773][1]["Talk"] = tNewServerActivity_Text[3300773][1]
	tNewServerActivity_Reward[3300773][1]["Log"] = "0,0,0,0,12000527,2,3009001[3003124][3003126][3002030],3[5][5][10]"
	
--消费7级  
	tNewServerActivity_Reward[3300774] = {}
	tNewServerActivity_Reward[3300774][1] = {}
	tNewServerActivity_Reward[3300774][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300774][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300774][1]["DeleteItem"][1]["Id"] = 3300774
	tNewServerActivity_Reward[3300774][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300774][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300774][1]["RewardItem"][1]["Id"] = 3009001
	tNewServerActivity_Reward[3300774][1]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" 
	tNewServerActivity_Reward[3300774][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300774][1]["RewardItem"][2]["Id"] = 729242
	tNewServerActivity_Reward[3300774][1]["RewardItem"][2]["Attr"] = "0 3 3"  
	tNewServerActivity_Reward[3300774][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300774][1]["RewardItem"][3]["Id"] = 3003126
	tNewServerActivity_Reward[3300774][1]["RewardItem"][3]["Attr"] = "0 5 3"  
	tNewServerActivity_Reward[3300774][1]["RewardItem"][4] = {}
	tNewServerActivity_Reward[3300774][1]["RewardItem"][4]["Id"] = 3002030
	tNewServerActivity_Reward[3300774][1]["RewardItem"][4]["Attr"] = "0 15 3"  
	tNewServerActivity_Reward[3300774][1]["Talk"] = tNewServerActivity_Text[3300774][1]
	tNewServerActivity_Reward[3300774][1]["Log"] = "0,0,0,0,12000527,2,3009001[729242][3003126][3002030],3[3][5][15]"

--消费8级礼包
	tNewServerActivity_Reward[3300775] = {}
	tNewServerActivity_Reward[3300775][1] = {}
	tNewServerActivity_Reward[3300775][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300775][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300775][1]["DeleteItem"][1]["Id"] = 3300775
	tNewServerActivity_Reward[3300775][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300775][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300775][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300775][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tNewServerActivity_Reward[3300775][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300775][1]["RewardItem"][2]["Id"] = 729242
	tNewServerActivity_Reward[3300775][1]["RewardItem"][2]["Attr"] = "0 5 3"
	tNewServerActivity_Reward[3300775][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300775][1]["RewardItem"][3]["Id"] = 3005360
	tNewServerActivity_Reward[3300775][1]["RewardItem"][3]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300775][1]["Talk"] = tNewServerActivity_Text[3300775][1]
	tNewServerActivity_Reward[3300775][1]["Log"] = "0,0,0,0,12000527,2,3009002[729242][3005360],1[5][1]"	
	
--消费9级礼包
	tNewServerActivity_Reward[3300776] = {}
	tNewServerActivity_Reward[3300776][1] = {}
	tNewServerActivity_Reward[3300776][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300776][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300776][1]["DeleteItem"][1]["Id"] = 3300776
	tNewServerActivity_Reward[3300776][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300776][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300776][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300776][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tNewServerActivity_Reward[3300776][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300776][1]["RewardItem"][2]["Id"] = 723694
	tNewServerActivity_Reward[3300776][1]["RewardItem"][2]["Attr"] = "0 1"
	tNewServerActivity_Reward[3300776][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300776][1]["RewardItem"][3]["Id"] = 727317
	tNewServerActivity_Reward[3300776][1]["RewardItem"][3]["Attr"] = "0 1"
	tNewServerActivity_Reward[3300776][1]["Talk"] = tNewServerActivity_Text[3300776][1]
	tNewServerActivity_Reward[3300776][1]["Log"] = "0,0,0,0,12000527,2,3009002[723694][727317],2[1][1]"	
	
--消费10级礼包
	tNewServerActivity_Reward[3300777] = {}
	tNewServerActivity_Reward[3300777][1] = {}
	tNewServerActivity_Reward[3300777][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300777][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300777][1]["DeleteItem"][1]["Id"] = 3300777
	tNewServerActivity_Reward[3300777][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300777][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300777][1]["RewardItem"][1]["Id"] = 3009002
	tNewServerActivity_Reward[3300777][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tNewServerActivity_Reward[3300777][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300777][1]["RewardItem"][2]["Id"] = 1200006
	tNewServerActivity_Reward[3300777][1]["RewardItem"][2]["Attr"] = "0 1"
	tNewServerActivity_Reward[3300777][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300777][1]["RewardItem"][3]["Id"] = 1088000
	tNewServerActivity_Reward[3300777][1]["RewardItem"][3]["Attr"] = "0 1"
	tNewServerActivity_Reward[3300777][1]["Talk"] = tNewServerActivity_Text[3300777][1]
	tNewServerActivity_Reward[3300777][1]["Log"] = "0,0,0,0,12000527,2,3009002[1200006][1088000],2[1][1]"	

--300气力值礼包
	tNewServerActivity_Reward[3300778] = {}
	tNewServerActivity_Reward[3300778][1] = {}
	tNewServerActivity_Reward[3300778][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300778][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300778][1]["DeleteItem"][1]["Id"] = 3300778
	tNewServerActivity_Reward[3300778][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300778][1]["RewardStrengthValue"]["Value"] = 300
	tNewServerActivity_Reward[3300778][1]["Talk"] = tNewServerActivity_Text[3300778][1]
	tNewServerActivity_Reward[3300778][1]["Log"] = "0,0,0,0,12000527,2,12,300"
	
--600气力值礼包
	tNewServerActivity_Reward[3300779] = {}
	tNewServerActivity_Reward[3300779][1] = {}
	tNewServerActivity_Reward[3300779][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300779][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300779][1]["DeleteItem"][1]["Id"] = 3300779
	tNewServerActivity_Reward[3300779][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300779][1]["RewardStrengthValue"]["Value"] = 600
	tNewServerActivity_Reward[3300779][1]["Talk"] = tNewServerActivity_Text[3300779][1]
	tNewServerActivity_Reward[3300779][1]["Log"] = "0,0,0,0,12000527,2,12,600"
	
--1100气力值礼包
	tNewServerActivity_Reward[3300780] = {}
	tNewServerActivity_Reward[3300780][1] = {}
	tNewServerActivity_Reward[3300780][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300780][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300780][1]["DeleteItem"][1]["Id"] = 3300780
	tNewServerActivity_Reward[3300780][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300780][1]["RewardStrengthValue"]["Value"] = 1100
	tNewServerActivity_Reward[3300780][1]["Talk"] = tNewServerActivity_Text[3300780][1]
	tNewServerActivity_Reward[3300780][1]["Log"] = "0,0,0,0,12000527,2,12,1100"
	
--2400气力值礼包
	tNewServerActivity_Reward[3300781] = {}
	tNewServerActivity_Reward[3300781][1] = {}
	tNewServerActivity_Reward[3300781][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300781][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300781][1]["DeleteItem"][1]["Id"] = 3300781
	tNewServerActivity_Reward[3300781][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300781][1]["RewardStrengthValue"]["Value"] = 2400
	tNewServerActivity_Reward[3300781][1]["Talk"] = tNewServerActivity_Text[3300781][1]
	tNewServerActivity_Reward[3300781][1]["Log"] = "0,0,0,0,12000527,2,12,2400"
	
--5200气力值礼包
	tNewServerActivity_Reward[3300782] = {}
	tNewServerActivity_Reward[3300782][1] = {}
	tNewServerActivity_Reward[3300782][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300782][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300782][1]["DeleteItem"][1]["Id"] = 3300782
	tNewServerActivity_Reward[3300782][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300782][1]["RewardStrengthValue"]["Value"] = 5200
	tNewServerActivity_Reward[3300782][1]["Talk"] = tNewServerActivity_Text[3300782][1]
	tNewServerActivity_Reward[3300782][1]["Log"] = "0,0,0,0,12000527,2,12,5200"
	
--8400气力值礼包
	tNewServerActivity_Reward[3300783] = {}
	tNewServerActivity_Reward[3300783][1] = {}
	tNewServerActivity_Reward[3300783][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300783][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300783][1]["DeleteItem"][1]["Id"] = 3300783
	tNewServerActivity_Reward[3300783][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300783][1]["RewardStrengthValue"]["Value"] = 8400
	tNewServerActivity_Reward[3300783][1]["Talk"] = tNewServerActivity_Text[3300783][1]
	tNewServerActivity_Reward[3300783][1]["Log"] = "0,0,0,0,12000527,2,12,8400"
	
--9000气力值礼包
	tNewServerActivity_Reward[3300784] = {}
	tNewServerActivity_Reward[3300784][1] = {}
	tNewServerActivity_Reward[3300784][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300784][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300784][1]["DeleteItem"][1]["Id"] = 3300784
	tNewServerActivity_Reward[3300784][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300784][1]["RewardStrengthValue"]["Value"] = 9000
	tNewServerActivity_Reward[3300784][1]["Talk"] = tNewServerActivity_Text[3300784][1]
	tNewServerActivity_Reward[3300784][1]["Log"] = "0,0,0,0,12000527,2,12,9000"
	
--15000气力值礼包
	tNewServerActivity_Reward[3300785] = {}
	tNewServerActivity_Reward[3300785][1] = {}
	tNewServerActivity_Reward[3300785][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300785][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300785][1]["DeleteItem"][1]["Id"] = 3300785
	tNewServerActivity_Reward[3300785][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300785][1]["RewardStrengthValue"]["Value"] = 15000
	tNewServerActivity_Reward[3300785][1]["Talk"] = tNewServerActivity_Text[3300785][1]
	tNewServerActivity_Reward[3300785][1]["Log"] = "0,0,0,0,12000527,2,12,15000"
	
--20000气力值礼包
	tNewServerActivity_Reward[3300786] = {}
	tNewServerActivity_Reward[3300786][1] = {}
	tNewServerActivity_Reward[3300786][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300786][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300786][1]["DeleteItem"][1]["Id"] = 3300786
	tNewServerActivity_Reward[3300786][1]["RewardStrengthValue"] = {}
	tNewServerActivity_Reward[3300786][1]["RewardStrengthValue"]["Value"] = 20000
	tNewServerActivity_Reward[3300786][1]["Talk"] = tNewServerActivity_Text[3300786][1]
	tNewServerActivity_Reward[3300786][1]["Log"] = "0,0,0,0,12000527,2,12,20000"
	
--自创8  
	tNewServerActivity_Reward[3300787] = {}
	tNewServerActivity_Reward[3300787][1] = {}
	tNewServerActivity_Reward[3300787][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300787][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300787][1]["DeleteItem"][1]["Id"] = 3300787
	tNewServerActivity_Reward[3300787][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300787][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300787][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300787][1]["RewardItem"][1]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300787][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300787][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300787][1]["RewardItem"][2]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300787][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300787][1]["RewardItem"][3]["Id"] = 3300764
	tNewServerActivity_Reward[3300787][1]["RewardItem"][3]["Attr"] = "0 1"
	tNewServerActivity_Reward[3300787][1]["Talk"] = tNewServerActivity_Text[3300787][1]
	tNewServerActivity_Reward[3300787][1]["Log"] = "0,0,0,0,12000527,2,3003124[3003126][3300764],100[100][1]"
	
--自创9
	tNewServerActivity_Reward[3300788] = {}
	tNewServerActivity_Reward[3300788][1] = {}
	tNewServerActivity_Reward[3300788][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300788][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300788][1]["DeleteItem"][1]["Id"] = 3300788
	tNewServerActivity_Reward[3300788][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300788][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300788][1]["RewardItem"][1]["Id"] = 3003124
	tNewServerActivity_Reward[3300788][1]["RewardItem"][1]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300788][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300788][1]["RewardItem"][2]["Id"] = 3003126
	tNewServerActivity_Reward[3300788][1]["RewardItem"][2]["Attr"] = "0 100 3"
	tNewServerActivity_Reward[3300788][1]["RewardItem"][3] = {}
	tNewServerActivity_Reward[3300788][1]["RewardItem"][3]["Id"] = 3300364
	tNewServerActivity_Reward[3300788][1]["RewardItem"][3]["Attr"] = "0 1"
	tNewServerActivity_Reward[3300788][1]["Talk"] = tNewServerActivity_Text[3300788][1]
	tNewServerActivity_Reward[3300788][1]["Log"] = "0,0,0,0,12000527,2,3003124[3003126][3300364],100[100][1]"

--外套3
	tNewServerActivity_Reward[3300789] = {}
	tNewServerActivity_Reward[3300789][1] = {}
	tNewServerActivity_Reward[3300789][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300789][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300789][1]["DeleteItem"][1]["Id"] = 3300789
	tNewServerActivity_Reward[3300789][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300789][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300789][1]["RewardItem"][1]["Id"] = 3008221
	tNewServerActivity_Reward[3300789][1]["RewardItem"][1]["Attr"] = "0 2"
	tNewServerActivity_Reward[3300789][1]["Talk"] = tNewServerActivity_Text[3300789][1]
	tNewServerActivity_Reward[3300789][1]["Log"] = "0,0,0,0,12000527,2,3008221,2"

	--外套6
	tNewServerActivity_Reward[3300790] = {}
	tNewServerActivity_Reward[3300790][1] = {}
	tNewServerActivity_Reward[3300790][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300790][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300790][1]["DeleteItem"][1]["Id"] = 3300790
	tNewServerActivity_Reward[3300790][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300790][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300790][1]["RewardItem"][1]["Id"] = 3008223
	tNewServerActivity_Reward[3300790][1]["RewardItem"][1]["Attr"] = "0 2"
	tNewServerActivity_Reward[3300790][1]["Talk"] = tNewServerActivity_Text[3300790][1]
	tNewServerActivity_Reward[3300790][1]["Log"] = "0,0,0,0,12000527,2,3008223,2"

--110级礼包
	tNewServerActivity_Reward[3300791] = {}
	tNewServerActivity_Reward[3300791][1] = {}
	tNewServerActivity_Reward[3300791][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300791][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300791][1]["DeleteItem"][1]["Id"] = 3300791
	tNewServerActivity_Reward[3300791][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300791][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300791][1]["RewardItem"][1]["Id"] = 181425
	tNewServerActivity_Reward[3300791][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1"
	tNewServerActivity_Reward[3300791][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300791][1]["RewardItem"][2]["Id"] = 3009002
	tNewServerActivity_Reward[3300791][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tNewServerActivity_Reward[3300791][1]["Talk"] = tNewServerActivity_Text[3300791][1]
	tNewServerActivity_Reward[3300791][1]["Log"] = "0,0,0,0,12000527,2,181425[3009002],1[1]"
	
--1转修炼礼包
	tNewServerActivity_Reward[3300792] = {}
	tNewServerActivity_Reward[3300792][1] = {}
	tNewServerActivity_Reward[3300792][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300792][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300792][1]["DeleteItem"][1]["Id"] = 3300792
	tNewServerActivity_Reward[3300792][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300792][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300792][1]["RewardItem"][1]["Id"] = 1200001
	tNewServerActivity_Reward[3300792][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewServerActivity_Reward[3300792][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300792][1]["RewardItem"][2]["Id"] = 3009002
	tNewServerActivity_Reward[3300792][1]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tNewServerActivity_Reward[3300792][1]["Talk"] = tNewServerActivity_Text[3300792][1]
	tNewServerActivity_Reward[3300792][1]["Log"] = "0,0,0,0,12000527,2,1200001[3009002],1[1]"

--2转修炼礼包
	tNewServerActivity_Reward[3300793] = {}
	tNewServerActivity_Reward[3300793][1] = {}
	tNewServerActivity_Reward[3300793][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300793][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300793][1]["DeleteItem"][1]["Id"] = 3300793
	tNewServerActivity_Reward[3300793][1]["RewardItem"] = {}
	tNewServerActivity_Reward[3300793][1]["RewardItem"][1] = {}
	tNewServerActivity_Reward[3300793][1]["RewardItem"][1]["Id"] = 3300373
	tNewServerActivity_Reward[3300793][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tNewServerActivity_Reward[3300793][1]["RewardItem"][2] = {}
	tNewServerActivity_Reward[3300793][1]["RewardItem"][2]["Id"] = 3300794
	tNewServerActivity_Reward[3300793][1]["RewardItem"][2]["Attr"] = "0 1 "
	tNewServerActivity_Reward[3300793][1]["Talk"] = tNewServerActivity_Text[3300793][1]
	tNewServerActivity_Reward[3300793][1]["Log"] = "0,0,0,0,12000502,2,3300373[3300794],1[1]"
	
--300赠点礼包
	tNewServerActivity_Reward[3300794] = {}
	tNewServerActivity_Reward[3300794][1] = {}
	tNewServerActivity_Reward[3300794][1]["DeleteItem"] = {}
	tNewServerActivity_Reward[3300794][1]["DeleteItem"][1] = {}
	tNewServerActivity_Reward[3300794][1]["DeleteItem"][1]["Id"] = 3300794
	tNewServerActivity_Reward[3300794][1]["RewardEMoneyMono"] = {}
	tNewServerActivity_Reward[3300794][1]["RewardEMoneyMono"]["Value"] = 300
	tNewServerActivity_Reward[3300794][1]["Talk"] = tNewServerActivity_Text[3300794][1]
	tNewServerActivity_Reward[3300794][1]["Log"] = "0,0,0,0,12000502,2,3,300"


	------------------------------逻辑部分---------------------------
--确认是否领奖 
function NewServerActivity_Confirm(nItemId, nIndex,sOptionText)
	local sOptionText = tNewServerActivity_Text[nItemId][sOptionText]
	--重设对白文字
	tItem[nItemId]["Text211"] = string.format(tNewServerActivity_Text[nItemId]["Text211"],sOptionText)
	--重设选项函数
	tItem[nItemId]["OptionFunc211"] = "NewServerActivity_Package</N>"..nItemId.."</N>"..nIndex
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end	
	--打开物品
function NewServerActivity_Package(nItemId,nIndex)
	if nItemId == 3300241 then
		local nData = Get_SysDynaGlobalData0(tNewServerActivity_Global[1])
		if nData == 1 then
			nIndex = 2
		end
	end
	RewardTemplate_UseItem(tNewServerActivity_Reward[nItemId][nIndex])
end

-- 外套
function NewServerActivity_InCoatStorage(nUserId,nFlag)
	if nFlag == 1 then
		User_AddOperatingActValue(9,1,nUserId)
	elseif nFlag == 2 then
		User_AddOperatingActValue(8,1,nUserId)
	end
end

function NewServerActivity_OutCoatStorage(nUserId,nFlag)
	if nFlag == 1 then
		User_AddOperatingActValue(9,-1,nUserId)
	elseif nFlag == 2 then
		User_AddOperatingActValue(8,-1,nUserId)
	end
end

function NewServerActivity_AchivementCount(nAchivementNum,nUserId)
	User_SetOperatingActValue(10,nAchivementNum,nUserId)
end



------------------------------物品模板---------------------------

tItem[3300713] = tItem[3300713] or {}
tItem[3300713]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300239] = tItem[3300239] or {}
tItem[3300239]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300241] = tItem[3300241] or {}
tItem[3300241]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300242] = tItem[3300242] or {}
tItem[3300242]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300243] = tItem[3300243] or {}
tItem[3300243]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300244] = tItem[3300244] or {}
tItem[3300244]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300245] = tItem[3300245] or {}
tItem[3300245]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300246] = tItem[3300246] or {}
tItem[3300246]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300247] = tItem[3300247] or {}
tItem[3300247]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300248] = tItem[3300248] or {}
tItem[3300248]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300249] = tItem[3300249] or {}
tItem[3300249]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300251] = tItem[3300251] or {}
tItem[3300251]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300252] = tItem[3300252] or {}
tItem[3300252]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300253] = tItem[3300253] or {}
tItem[3300253]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300254] = tItem[3300254] or {}
tItem[3300254]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300255] = tItem[3300255] or {}
tItem[3300255]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300256] = tItem[3300256] or {}
tItem[3300256]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300257] = tItem[3300257] or {}
tItem[3300257]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300258] = tItem[3300258] or {}
tItem[3300258]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300259] = tItem[3300259] or {}
tItem[3300259]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300261] = tItem[3300261] or {}
tItem[3300261]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300262] = tItem[3300262] or {}
tItem[3300262]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300263] = tItem[3300263] or {}
tItem[3300263]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300264] = tItem[3300264] or {}
tItem[3300264]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300265] = tItem[3300265] or {}
tItem[3300265]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300266] = tItem[3300266] or {}
tItem[3300266]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300267] = tItem[3300267] or {}
tItem[3300267]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end
tItem[3300268] = tItem[3300268] or {}
tItem[3300268]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300269] = tItem[3300269] or {}
tItem[3300269]["DialogueText"] =tNewServerActivity_Text[3300269]
tItem[3300269]["Text1-1"] = {111}
tItem[3300269]["tOption1-1"] = {1,2,3,4}
tItem[3300269]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300269</N>1</S>Option1"
tItem[3300269]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300269</N>2</S>Option2"
tItem[3300269]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300269</N>3</S>Option3"
tItem[3300269]["Text2-1"] = {211}
tItem[3300269]["Text211"] = tNewServerActivity_Text[3300269]["Text211"]
tItem[3300269]["tOption2-1"] = {211,212}

tItem[3300271] = tItem[3300271] or {}
tItem[3300271]["DialogueText"] =tNewServerActivity_Text[3300271]
tItem[3300271]["Text1-1"] = {111}
tItem[3300271]["tOption1-1"] = {1,2,3,4}
tItem[3300271]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300271</N>1</S>Option1"
tItem[3300271]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300271</N>2</S>Option2"
tItem[3300271]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300271</N>3</S>Option3"
tItem[3300271]["Text2-1"] = {211}
tItem[3300271]["Text211"] = tNewServerActivity_Text[3300271]["Text211"]
tItem[3300271]["tOption2-1"] = {211,212}

tItem[3300272] = tItem[3300272] or {}
tItem[3300272]["DialogueText"] =tNewServerActivity_Text[3300272]
tItem[3300272]["Text1-1"] = {111}
tItem[3300272]["tOption1-1"] = {1,2,3,4}
tItem[3300272]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300272</N>1</S>Option1"
tItem[3300272]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300272</N>2</S>Option2"
tItem[3300272]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300272</N>3</S>Option3"
tItem[3300272]["Text2-1"] = {211}
tItem[3300272]["Text211"] = tNewServerActivity_Text[3300272]["Text211"]
tItem[3300272]["tOption2-1"] = {211,212}

tItem[3300273] = tItem[3300273] or {}
tItem[3300273]["DialogueText"] =tNewServerActivity_Text[3300273]
tItem[3300273]["Text1-1"] = {111}
tItem[3300273]["tOption1-1"] = {1,2,3,4}
tItem[3300273]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300273</N>1</S>Option1"
tItem[3300273]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300273</N>2</S>Option2"
tItem[3300273]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300273</N>3</S>Option3"
tItem[3300273]["Text2-1"] = {211}
tItem[3300273]["Text211"] = tNewServerActivity_Text[3300273]["Text211"]
tItem[3300273]["tOption2-1"] = {211,212}

tItem[3300306] = tItem[3300306] or {}
tItem[3300306]["DialogueText"] =tNewServerActivity_Text[3300306]
tItem[3300306]["Text1-1"] = {111}
tItem[3300306]["tOption1-1"] = {1,2,3,4}
tItem[3300306]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300306</N>1</S>Option1"
tItem[3300306]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300306</N>2</S>Option2"
tItem[3300306]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300306</N>3</S>Option3"
tItem[3300306]["Text2-1"] = {211}
tItem[3300306]["Text211"] = tNewServerActivity_Text[3300306]["Text211"]
tItem[3300306]["tOption2-1"] = {211,212}

tItem[3300307] = tItem[3300307] or {}
tItem[3300307]["DialogueText"] =tNewServerActivity_Text[3300307]
tItem[3300307]["Text1-1"] = {111}
tItem[3300307]["tOption1-1"] = {1,2,3,4}
tItem[3300307]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300307</N>1</S>Option1"
tItem[3300307]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300307</N>2</S>Option2"
tItem[3300307]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300307</N>3</S>Option3"
tItem[3300307]["Text2-1"] = {211}
tItem[3300307]["Text211"] = tNewServerActivity_Text[3300307]["Text211"]
tItem[3300307]["tOption2-1"] = {211,212}

tItem[3300308] = tItem[3300308] or {}
tItem[3300308]["DialogueText"] =tNewServerActivity_Text[3300308]
tItem[3300308]["Text1-1"] = {111}
tItem[3300308]["tOption1-1"] = {1,2,3,4}
tItem[3300308]["OptionFunc1"] = "NewServerActivity_Confirm</N>3300308</N>1</S>Option1"
tItem[3300308]["OptionFunc2"] = "NewServerActivity_Confirm</N>3300308</N>2</S>Option2"
tItem[3300308]["OptionFunc3"] = "NewServerActivity_Confirm</N>3300308</N>3</S>Option3"
tItem[3300308]["Text2-1"] = {211}
tItem[3300308]["Text211"] = tNewServerActivity_Text[3300308]["Text211"]
tItem[3300308]["tOption2-1"] = {211,212}

tItem[3300309] = tItem[3300309] or {}
tItem[3300309]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300311] = tItem[3300311] or {}
tItem[3300311]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300312] = tItem[3300312] or {}
tItem[3300312]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300313] = tItem[3300313] or {}
tItem[3300313]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300314] = tItem[3300314] or {}
tItem[3300314]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300315] = tItem[3300315] or {}
tItem[3300315]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300316] = tItem[3300316] or {}
tItem[3300316]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300317] = tItem[3300317] or {}
tItem[3300317]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300318] = tItem[3300318] or {}
tItem[3300318]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300319] = tItem[3300319] or {}
tItem[3300319]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300321] = tItem[3300321] or {}
tItem[3300321]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300322] = tItem[3300322] or {}
tItem[3300322]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300323] = tItem[3300323] or {}
tItem[3300323]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300324] = tItem[3300324] or {}
tItem[3300324]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300325] = tItem[3300325] or {}
tItem[3300325]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300326] = tItem[3300326] or {}
tItem[3300326]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300327] = tItem[3300327] or {}
tItem[3300327]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300328] = tItem[3300328] or {}
tItem[3300328]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300329] = tItem[3300329] or {}
tItem[3300329]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300331] = tItem[3300331] or {}
tItem[3300331]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300332] = tItem[3300332] or {}
tItem[3300332]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300333] = tItem[3300333] or {}
tItem[3300333]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300334] = tItem[3300334] or {}
tItem[3300334]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300335] = tItem[3300335] or {}
tItem[3300335]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300336] = tItem[3300336] or {}
tItem[3300336]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300337] = tItem[3300337] or {}
tItem[3300337]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300338] = tItem[3300338] or {}
tItem[3300338]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300339] = tItem[3300339] or {}
tItem[3300339]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300341] = tItem[3300341] or {}
tItem[3300341]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300342] = tItem[3300342] or {}
tItem[3300342]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300343] = tItem[3300343] or {}
tItem[3300343]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300344] = tItem[3300344] or {}
tItem[3300344]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300345] = tItem[3300345] or {}
tItem[3300345]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300346] = tItem[3300346] or {}
tItem[3300346]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300347] = tItem[3300347] or {}
tItem[3300347]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300348] = tItem[3300348] or {}
tItem[3300348]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300349] = tItem[3300349] or {}
tItem[3300349]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300351] = tItem[3300351] or {}
tItem[3300351]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300352] = tItem[3300352] or {}
tItem[3300352]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300353] = tItem[3300353] or {}
tItem[3300353]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300354] = tItem[3300354] or {}
tItem[3300354]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300355] = tItem[3300355] or {}
tItem[3300355]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300356] = tItem[3300356] or {}
tItem[3300356]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300357] = tItem[3300357] or {}
tItem[3300357]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300358] = tItem[3300358] or {}
tItem[3300358]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300362] = tItem[3300362] or {}
tItem[3300362]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300363] = tItem[3300363] or {}
tItem[3300363]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300364] = tItem[3300364] or {}
tItem[3300364]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300365] = tItem[3300365] or {}
tItem[3300365]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300366] = tItem[3300366] or {}
tItem[3300366]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300402] = tItem[3300402] or {}
tItem[3300402]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300403] = tItem[3300403] or {}
tItem[3300403]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300404] = tItem[3300404] or {}
tItem[3300404]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

--10月新服

tItem[3300757] = tItem[3300757] or {}
tItem[3300757]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300758] = tItem[3300758] or {}
tItem[3300758]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300759] = tItem[3300759] or {}
tItem[3300759]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300760] = tItem[3300760] or {}
tItem[3300760]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300761] = tItem[3300761] or {}
tItem[3300761]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300762] = tItem[3300762] or {}
tItem[3300762]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300763] = tItem[3300763] or {}
tItem[3300763]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300764] = tItem[3300764] or {}
tItem[3300764]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300765] = tItem[3300765] or {}
tItem[3300765]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300766] = tItem[3300766] or {}
tItem[3300766]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300767] = tItem[3300767] or {}
tItem[3300767]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300768] = tItem[3300768] or {}
tItem[3300768]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300769] = tItem[3300769] or {}
tItem[3300769]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300770] = tItem[3300770] or {}
tItem[3300770]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300771] = tItem[3300771] or {}
tItem[3300771]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300772] = tItem[3300772] or {}
tItem[3300772]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300773] = tItem[3300773] or {}
tItem[3300773]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300774] = tItem[3300774] or {}
tItem[3300774]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300775] = tItem[3300775] or {}
tItem[3300775]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300776] = tItem[3300776] or {}
tItem[3300776]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300777] = tItem[3300777] or {}
tItem[3300777]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300778] = tItem[3300778] or {}
tItem[3300778]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300779] = tItem[3300779] or {}
tItem[3300779]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300780] = tItem[3300780] or {}
tItem[3300780]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300781] = tItem[3300781] or {}
tItem[3300781]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300782] = tItem[3300782] or {}
tItem[3300782]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300783] = tItem[3300783] or {}
tItem[3300783]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300784] = tItem[3300784] or {}
tItem[3300784]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300785] = tItem[3300785] or {}
tItem[3300785]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300786] = tItem[3300786] or {}
tItem[3300786]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300787] = tItem[3300787] or {}
tItem[3300787]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300788] = tItem[3300788] or {}
tItem[3300788]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300789] = tItem[3300789] or {}
tItem[3300789]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300790] = tItem[3300790] or {}
tItem[3300790]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300791] = tItem[3300791] or {}
tItem[3300791]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300792] = tItem[3300792] or {}
tItem[3300792]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300793] = tItem[3300793] or {}
tItem[3300793]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end

tItem[3300794] = tItem[3300794] or {}
tItem[3300794]["Function"] = function(nItemId,sItemName)
	NewServerActivity_Package(nItemId,1)
end



tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],NewServerActivity_InCoatStorage)

tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],NewServerActivity_OutCoatStorage)

tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],NewServerActivity_OutCoatStorage)

tAchivementCount["tFunction"] = tAchivementCount["tFunction"] or {}
table.insert(tAchivementCount["tFunction"],NewServerActivity_AchivementCount)

