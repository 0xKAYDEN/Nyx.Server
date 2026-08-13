------------------------------------------------------------------------------------
--Name：            170428[简体征服][功能脚本]正气令转Lua
--Creator:      刘益辉
--Created:     2017/04/28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------
	local tChiToken_Use={}
	--正气令本身奖励
	tChiToken_Use["EventType"] = 108
	tChiToken_Use["DataType"] = 00
	tChiToken_Use["RewardData"] = 1
	tChiToken_Use["RewardDelay"] = 1
	tChiToken_Use["RewardTimeType"] = 4
	
	tChiToken_Use["DeleteItem"] = {}
	tChiToken_Use["DeleteItem"][1]={}
	tChiToken_Use["DeleteItem"][1]["Id"] = 729304
	tChiToken_Use["DeleteItem"][1]["Monopoly"] = 1
	tChiToken_Use["DeleteItem"][1]["Sash"] = 0
	tChiToken_Use["DeleteItem"][1]["ItemNum"]= 7
	tChiToken_Use["DeleteItem"][1]["NoItem"] = tChiToken_Use_Text["PieceNoNum"]
	
	tChiToken_Use["RewardExpTime"] = {}
	tChiToken_Use["RewardExpTime"]["Value"] = 180
	
	tChiToken_Use["RewardStrengthValue"] = {}
	tChiToken_Use["RewardStrengthValue"]["Value"] = 200
	
	tChiToken_Use["HaveReceive"]=tChiToken_Use_Text["Rewarded"]
	
	--常量
	local tChiToken_Use_Constant = {}
	tChiToken_Use_Constant["RewardData"] = 2

	tChiToken_Use_Constant["GlobalId"] = 51131

	tChiToken_Use_Constant["GoldGolbal"] = G_Gold_DynaGlobal
	
	--tChiToken_Use_Constant["Level"] = 135
	tChiToken_Use_Constant["ExpTime"] = 900
	tChiToken_Use_Constant["Strength"] = 1000
	
	
	-- tChiToken_Use_Constant["135ExpTime"] = 600
	-- tChiToken_Use_Constant["135NewExpTime"] = 1500
	
	tChiToken_Use_Constant["Stc"]={}
	tChiToken_Use_Constant["Stc"]["EventType"] = 113
	tChiToken_Use_Constant["Stc"]["DataType"] = 93
	tChiToken_Use_Constant["Stc"]["RewardData"] = 1
	tChiToken_Use_Constant["Stc"]["RewardDelay"] = 1
	tChiToken_Use_Constant["Stc"]["RewardTimeType"] = 4
--------------------------------------------------------------------------------------
	--正气令通过奖励模板额外获得
	local tChiToken_Use_OtherAward={}
	--黄金联赛积分
	tChiToken_Use_OtherAward[1]={}
	tChiToken_Use_OtherAward[1]["Reward"]={}
	tChiToken_Use_OtherAward[1]["Reward"]["RewardGoldenLeague"] = {}
	tChiToken_Use_OtherAward[1]["Reward"]["RewardGoldenLeague"]["Value"] = 100
	
	--岫山玉获得
	tChiToken_Use_OtherAward[3008221] = {}

	tChiToken_Use_OtherAward[3008221]["Reward"]={}  --老服奖励
	tChiToken_Use_OtherAward[3008221]["Reward"]["ActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	tChiToken_Use_OtherAward[3008221]["Reward"]["NeedLevel"] = 1
	tChiToken_Use_OtherAward[3008221]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3008221]["Reward"]["RewardItem"]={}
	tChiToken_Use_OtherAward[3008221]["Reward"]["RewardItem"][1]={}
	tChiToken_Use_OtherAward[3008221]["Reward"]["RewardItem"][1]["Id"] = 3008221
	tChiToken_Use_OtherAward[3008221]["Reward"]["RewardItem"][1]["Attr"]= "0 1"
	tChiToken_Use_OtherAward[3008221]["Reward"]["LogId"] = 12000286

	tChiToken_Use_OtherAward[3008221]["NewReward"]={} --新服奖励
	tChiToken_Use_OtherAward[3008221]["NewReward"]["ActivityTime"] = tActivityTime["CoatWarehouse_Sale"]["ActivityTime"]
	tChiToken_Use_OtherAward[3008221]["NewReward"]["RewardItem"]={}
	tChiToken_Use_OtherAward[3008221]["NewReward"]["RewardItem"][1]={}
	tChiToken_Use_OtherAward[3008221]["NewReward"]["RewardItem"][1]["Id"] = 3008221
	tChiToken_Use_OtherAward[3008221]["NewReward"]["RewardItem"][1]["Attr"]= "0 3"
	tChiToken_Use_OtherAward[3008221]["NewReward"]["LogId"] = 12000286
	
	-- --暑期拼图活动
	-- tChiToken_Use_OtherAward[3303628] = {}
	-- tChiToken_Use_OtherAward[3303628]["ActivityTime"] = "2017-07-13 00:00 2017-08-01 23:59"
	-- tChiToken_Use_OtherAward[3303628]["IsRandom"] = true
	-- tChiToken_Use_OtherAward[3303628]["ItemChanceSum"] = 10000
	
	-- tChiToken_Use_OtherAward[3303628][1] = {}
	-- tChiToken_Use_OtherAward[3303628][1]["RandomItemChanceType"] = 2
	-- tChiToken_Use_OtherAward[3303628][1]["ItemChance"] = 3000
	-- tChiToken_Use_OtherAward[3303628][1]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3303628][1]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3303628][1]["RewardItem"][1]["Id"] = 3303628
	-- tChiToken_Use_OtherAward[3303628][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tChiToken_Use_OtherAward[3303628][1]["Log"] = "0,0,0,0,12000759,2,3303628,1"
	-- tChiToken_Use_OtherAward[3303628][1]["RewardEffect"] = {}
	-- tChiToken_Use_OtherAward[3303628][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- tChiToken_Use_OtherAward[3303628][2] = {}
	-- tChiToken_Use_OtherAward[3303628][2]["RandomItemChanceType"] = 2
	-- tChiToken_Use_OtherAward[3303628][2]["ItemChance"] = 3500
	-- tChiToken_Use_OtherAward[3303628][2]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3303628][2]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3303628][2]["RewardItem"][1]["Id"] = 3303632
	-- tChiToken_Use_OtherAward[3303628][2]["RewardItem"][1]["Attr"] = "0 1"
	-- tChiToken_Use_OtherAward[3303628][2]["Log"] = "0,0,0,0,12000759,2,3303632,1"
	-- tChiToken_Use_OtherAward[3303628][2]["RewardEffect"] = {}
	-- tChiToken_Use_OtherAward[3303628][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- tChiToken_Use_OtherAward[3303628][3] = {}
	-- tChiToken_Use_OtherAward[3303628][3]["RandomItemChanceType"] = 2
	-- tChiToken_Use_OtherAward[3303628][3]["ItemChance"] = 3500
	-- tChiToken_Use_OtherAward[3303628][3]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3303628][3]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3303628][3]["RewardItem"][1]["Id"] = 3303633
	-- tChiToken_Use_OtherAward[3303628][3]["RewardItem"][1]["Attr"] = "0 1"
	-- tChiToken_Use_OtherAward[3303628][3]["Log"] = "0,0,0,0,12000759,2,3303633,1"
	-- tChiToken_Use_OtherAward[3303628][3]["RewardEffect"] = {}
	-- tChiToken_Use_OtherAward[3303628][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 跨服组队PK赛
	tChiToken_Use_OtherAward[3303237] = {}
	tChiToken_Use_OtherAward[3303237]["ActivityTime"] = tActivityTime["ServerTeamPk"]["Ticket"]
	tChiToken_Use_OtherAward[3303237]["IsRandom"] = true

	tChiToken_Use_OtherAward[3303237][1] = {}
	tChiToken_Use_OtherAward[3303237][1]["RandomItemChanceType"] = 3
	tChiToken_Use_OtherAward[3303237][1]["ItemChance"] = 100
	tChiToken_Use_OtherAward[3303237][1]["ItemSelfChanceSum"] = 10000
	tChiToken_Use_OtherAward[3303237][1]["LogId"] = 12000747
	tChiToken_Use_OtherAward[3303237][1]["GlobalId"] = 51598
	tChiToken_Use_OtherAward[3303237][1]["Pos"] = 0
	tChiToken_Use_OtherAward[3303237][1]["MaxData"] = 2
	tChiToken_Use_OtherAward[3303237][1]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3303237][1]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3303237][1]["RewardItem"][1]["Id"] = 3303237
	tChiToken_Use_OtherAward[3303237][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 夏日大作战
	tChiToken_Use_OtherAward[3303695] = {}
	tChiToken_Use_OtherAward[3303695]["ActivityTime"] = tActivityTime["Summer"]["BigBattle"]
	tChiToken_Use_OtherAward[3303695]["IsRandom"] = true
	tChiToken_Use_OtherAward[3303695]["LogId"] = 12000760
	tChiToken_Use_OtherAward[3303695]["ItemChanceSum"] = 10000

	tChiToken_Use_OtherAward[3303695][1] = {}
	tChiToken_Use_OtherAward[3303695][1]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3303695][1]["ItemChance"] = 9900
	tChiToken_Use_OtherAward[3303695][1]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3303695][1]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3303695][1]["RewardItem"][1]["Id"] = 3303695
	tChiToken_Use_OtherAward[3303695][1]["RewardItem"][1]["Attr"] = "0 150"
	
	tChiToken_Use_OtherAward[3303695][2] = {}
	tChiToken_Use_OtherAward[3303695][2]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3303695][2]["ItemChance"] = 100
	tChiToken_Use_OtherAward[3303695][2]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3303695][2]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3303695][2]["RewardItem"][1]["Id"] = 3303237
	tChiToken_Use_OtherAward[3303695][2]["RewardItem"][1]["Attr"] = "0 1"
	
	--英文征服9月VS活动制作(8.31)
	tChiToken_Use_OtherAward[3304651] = {}
	tChiToken_Use_OtherAward[3304651]["Reward"] = {}
	tChiToken_Use_OtherAward[3304651]["Reward"]["ActivityTime"] = tActivityTime["SeptemberMakerActivity"]["SubmitTime"]
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardItem"] = {}
	
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardItem"][1]["Id"] = 3304651
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3304651]["Reward"]["LogId"] = 12000824
	
	tChiToken_Use_OtherAward[3304651]["Reward"]["EventType"] = 164
	tChiToken_Use_OtherAward[3304651]["Reward"]["DataType"] = 68
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardData"] = 1
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3304651]["Reward"]["RewardTimeType"] = 4
	
	-- 七夕节活动
	-- tChiToken_Use_OtherAward[3304140] = {} 
	-- tChiToken_Use_OtherAward[3304140]["Reward"]={}
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["ActivityTime"] = tActivityTime["ChineseValentinesDay"]["ActivityTime"]
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["NeedLevel"] = 80
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["NeedMetempsychosis"] = 0
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["Log"] = "0,0,729304,7,12000783,1[2],3304140,1"
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["RewardItem"][1]["Id"] = 3304140
	-- tChiToken_Use_OtherAward[3304140]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	
-- 感恩月-以旧换新活动  使用获得兑换券
	tChiToken_Use_OtherAward[3305809] = {} 
	tChiToken_Use_OtherAward[3305809]["Reward"]={}
	tChiToken_Use_OtherAward[3305809]["Reward"]["ActivityTime"] =tActivityTime["ThankGivingExchange"]["ActiveTime"]
	tChiToken_Use_OtherAward[3305809]["Reward"]["LogId"] = 12000918
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardItem"][1]["Id"] = 3305809  --兑换券
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardItem"][1]["Attr"] = "0 5"
	
	tChiToken_Use_OtherAward[3305809]["Reward"]["EventType"] = 169
	tChiToken_Use_OtherAward[3305809]["Reward"]["DataType"] = 91
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardData"] = 1
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3305809]["Reward"]["RewardTimeType"] = 4
	
	-- 2017感恩节
	-- tChiToken_Use_OtherAward[3305547] = {} 
	-- tChiToken_Use_OtherAward[3305547]["Reward"]={}
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["ActivityTime"] = tActivityTime["CornPancakeThanks"]["Activity"]
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["NeedLevel"] = 80
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["NeedMetempsychosis"] = 0
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["LogId"] = 12000890
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["RewardItem"][1]["Id"] = 3305547
	-- tChiToken_Use_OtherAward[3305547]["Reward"]["RewardItem"][1]["Attr"] = "0 30"
	
	--全区全服跨服精英pk赛
	tChiToken_Use_OtherAward[3300020] = {}
	tChiToken_Use_OtherAward[3300020]["ActivityTime"] = "2020-07-23 00:00 2020-08-13 23:59"
	tChiToken_Use_OtherAward[3300020]["IsRandom"] = true
	tChiToken_Use_OtherAward[3300020][1] = {}
	tChiToken_Use_OtherAward[3300020][1]["RandomItemChanceType"] = 3
	tChiToken_Use_OtherAward[3300020][1]["ItemChance"] = 100
	tChiToken_Use_OtherAward[3300020][1]["ItemSelfChanceSum"] = 10000
	tChiToken_Use_OtherAward[3300020][1]["LogId"] = 18000133
	tChiToken_Use_OtherAward[3300020][1]["GlobalId"] = 51338
	tChiToken_Use_OtherAward[3300020][1]["Pos"] = 0
	tChiToken_Use_OtherAward[3300020][1]["MaxData"] = 2
	tChiToken_Use_OtherAward[3300020][1]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3300020][1]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3300020][1]["RewardItem"][1]["Id"] = 3300020
	tChiToken_Use_OtherAward[3300020][1]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 180117[简体征服][活动脚本]狗年年兽活动制作(2.8)
	-- tChiToken_Use_OtherAward[3307199] = {} 
	-- tChiToken_Use_OtherAward[3307199]["Reward"]={}
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["ActivityTime"] = tActivityTime["DogYear"]["NowTime"]
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["NeedLevel"] = 80
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["NeedMetempsychosis"] = 0
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["LogId"] = 12000984
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["RewardItem"][1]["Id"] = 3307199
	-- tChiToken_Use_OtherAward[3307199]["Reward"]["RewardItem"][1]["Attr"] = "0 5"
	
	-- 180314[英文征服][活动脚本]]4月彩蛋收集活动(4.1-4.10)
	tChiToken_Use_OtherAward[3307857] = {}
	tChiToken_Use_OtherAward[3307857]["Reward"]={}
	tChiToken_Use_OtherAward[3307857]["Reward"]["ActivityTime"] = tActivityTime["EasterEggPainting"]["ActivityTime"]
	tChiToken_Use_OtherAward[3307857]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3307857]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardItem"]={}
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardItem"][1]={}
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardItem"][1]["Id"] = 3307857
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardItem"][1]["Attr"]= "0 1"
	tChiToken_Use_OtherAward[3307857]["Reward"]["EventType"] = 175
	tChiToken_Use_OtherAward[3307857]["Reward"]["DataType"] = 33
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardData"] = 1
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3307857]["Reward"]["RewardTimeType"] = 4
	tChiToken_Use_OtherAward[3307857]["Reward"]["LogId"] = 12001031
	
------------------------------------------------------------------------------------
--Name:		170920[简体征服][活动脚本]砸罐子活动制作
--Creator: 	兰瑞妹
--Created:	2017/10/11
------------------------------------------------------------------------------------
	-- 使用正气令可获得50个剑气
	tChiToken_Use_OtherAward[3305662] = {} 
	tChiToken_Use_OtherAward[3305662]["Reward"]={}
	tChiToken_Use_OtherAward[3305662]["Reward"]["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	tChiToken_Use_OtherAward[3305662]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3305662]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3305662]["Reward"]["LogId"] = 12000899
	tChiToken_Use_OtherAward[3305662]["Reward"]["LogStep"] = "1[1]"
	tChiToken_Use_OtherAward[3305662]["Reward"]["EmoneyLog"] = "350	21145	0	0	1	"
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardItem"][1]["Id"] = 3305662
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardItem"][1]["Attr"] = "0 50"
	tChiToken_Use_OtherAward[3305662]["Reward"]["EventType"] = 227
	tChiToken_Use_OtherAward[3305662]["Reward"]["DataType"] = 00
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardData"] = 1
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3305662]["Reward"]["RewardTimeType"] = 4
	-- tChiToken_Use_OtherAward[3305662]["Reward"]["IsNoGiftServer"] = 0
	-- tChiToken_Use_OtherAward[3305662]["Reward"]["IsGreenServer"] = 0
	
	-- 并额外获得
	tChiToken_Use_OtherAward[3305664] = {}
	tChiToken_Use_OtherAward[3305664]["ActivityTime"] = tActivityTime["SmashPot"]["ActivityTime"]
	tChiToken_Use_OtherAward[3305664]["IsRandom"] = true
	-- tChiToken_Use_OtherAward[3305664]["IsNoGiftServer"] = 0
	-- tChiToken_Use_OtherAward[3305664]["IsGreenServer"] = 0
	tChiToken_Use_OtherAward[3305664]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3305664]["LogId"] = 12000899
	tChiToken_Use_OtherAward[3305664]["LogStep"] = "1[2]"
	tChiToken_Use_OtherAward[3305664]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3305664]["ItemChanceSum"] = 10000
	-- 刷新券*3	50%
	tChiToken_Use_OtherAward[3305664][1] = {}
	tChiToken_Use_OtherAward[3305664][1]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3305664][1]["ItemChance"] = 5000
	tChiToken_Use_OtherAward[3305664][1]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3305664][1]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3305664][1]["RewardItem"][1]["Id"] = 3305663
	tChiToken_Use_OtherAward[3305664][1]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3305664][1]["EventType"] = 227
	tChiToken_Use_OtherAward[3305664][1]["DataType"] = 32
	tChiToken_Use_OtherAward[3305664][1]["RewardData"] = 1
	tChiToken_Use_OtherAward[3305664][1]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3305664][1]["RewardTimeType"] = 4
	-- 刷新券*5	30%
	tChiToken_Use_OtherAward[3305664][2] = {}
	tChiToken_Use_OtherAward[3305664][2]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3305664][2]["ItemChance"] = 3000
	tChiToken_Use_OtherAward[3305664][2]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3305664][2]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3305664][2]["RewardItem"][1]["Id"] = 3305663
	tChiToken_Use_OtherAward[3305664][2]["RewardItem"][1]["Attr"] = "0 3"
	tChiToken_Use_OtherAward[3305664][2]["EventType"] = 227
	tChiToken_Use_OtherAward[3305664][2]["DataType"] = 32
	tChiToken_Use_OtherAward[3305664][2]["RewardData"] = 1
	tChiToken_Use_OtherAward[3305664][2]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3305664][2]["RewardTimeType"] = 4
	-- 刷新券*10	20%
	tChiToken_Use_OtherAward[3305664][3] = {}
	tChiToken_Use_OtherAward[3305664][3]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3305664][3]["ItemChance"] = 2000
	tChiToken_Use_OtherAward[3305664][3]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3305664][3]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3305664][3]["RewardItem"][1]["Id"] = 3305663
	tChiToken_Use_OtherAward[3305664][3]["RewardItem"][1]["Attr"] = "0 5"
	tChiToken_Use_OtherAward[3305664][3]["EventType"] = 227
	tChiToken_Use_OtherAward[3305664][3]["DataType"] = 32
	tChiToken_Use_OtherAward[3305664][3]["RewardData"] = 1
	tChiToken_Use_OtherAward[3305664][3]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3305664][3]["RewardTimeType"] = 4

	-- 170321[简体征服][活动脚本]NBA活动制作(4.13-4.26)
	tChiToken_Use_OtherAward[3302804] = {} 
	tChiToken_Use_OtherAward[3302804]["Reward"]={}
	tChiToken_Use_OtherAward[3302804]["Reward"]["ActivityTime"] = tActivityTime["ActivityOfNBA"]["Now_Time"]
	tChiToken_Use_OtherAward[3302804]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3302804]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3302804]["Reward"]["LogId"] = 12000684
	tChiToken_Use_OtherAward[3302804]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3302804]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3302804]["Reward"]["RewardItem"][1]["Id"] = 3302804
	tChiToken_Use_OtherAward[3302804]["Reward"]["RewardItem"][1]["Attr"] = "0 150"
------------------------------------------------------------------------------------
--Name:			170504[英文征服][活动脚本]斋月感恩捐献祈福活动
--Creator:		陈琳
--Created:		2017/05/04
------------------------------------------------------------------------------------
	-- tChiToken_Use_OtherAward[3303377] = {}
	-- tChiToken_Use_OtherAward[3303377]["Reward"]={}
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["ActivityTime"] = tActivityTime["RamadanActivity"]["ActivityTime"]
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["NeedLevel"] = 110
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["NeedMetempsychosis"] = 1
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardItem"]={}
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardItem"][1]={}
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardItem"][1]["Id"] = 3303377
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardItem"][1]["Attr"]= "0 5"
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["LogId"] = 12000718
	
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["EventType"] = 176
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["DataType"] = 28
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardData"] = 1
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardDelay"] = 1
	-- tChiToken_Use_OtherAward[3303377]["Reward"]["RewardTimeType"] = 4	

	-- 180504[简体征服][活动脚本]2018世界杯活动制作
	tChiToken_Use_OtherAward[3308881] = {}
	tChiToken_Use_OtherAward[3308881]["ActivityTime"] = tActivityTime["WorldCupActivities"]["ActivityTime"]
	tChiToken_Use_OtherAward[3308881]["IsRandom"] = true
	tChiToken_Use_OtherAward[3308881]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3308881]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3308881]["LogId"] = 12000899
	tChiToken_Use_OtherAward[3308881]["LogStep"] = "1[2]"
	tChiToken_Use_OtherAward[3308881]["EmoneyLog"] = "350	21505	0	0	1	"
	tChiToken_Use_OtherAward[3308881]["ItemChanceSum"] = 10000
	-- 3308881	新物品	1			30.00%
	tChiToken_Use_OtherAward[3308881][1] = {}
	tChiToken_Use_OtherAward[3308881][1]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3308881][1]["ItemChance"] = 3000
	tChiToken_Use_OtherAward[3308881][1]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3308881][1]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3308881][1]["RewardItem"][1]["Id"] = 3308881
	tChiToken_Use_OtherAward[3308881][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 3308881	新物品	2			50.00%
	tChiToken_Use_OtherAward[3308881][2] = {}
	tChiToken_Use_OtherAward[3308881][2]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3308881][2]["ItemChance"] = 5000
	tChiToken_Use_OtherAward[3308881][2]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3308881][2]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3308881][2]["RewardItem"][1]["Id"] = 3308881
	tChiToken_Use_OtherAward[3308881][2]["RewardItem"][1]["Attr"] = "0 2 3"
	-- 3308881	新物品	3			10.00%
	tChiToken_Use_OtherAward[3308881][3] = {}
	tChiToken_Use_OtherAward[3308881][3]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3308881][3]["ItemChance"] = 1000
	tChiToken_Use_OtherAward[3308881][3]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3308881][3]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3308881][3]["RewardItem"][1]["Id"] = 3308881
	tChiToken_Use_OtherAward[3308881][3]["RewardItem"][1]["Attr"] = "0 3 3"
	-- 3308882	新物品	1			10.00%
	tChiToken_Use_OtherAward[3308881][4] = {}
	tChiToken_Use_OtherAward[3308881][4]["RandomItemChanceType"] = 2
	tChiToken_Use_OtherAward[3308881][4]["ItemChance"] = 1000
	tChiToken_Use_OtherAward[3308881][4]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3308881][4]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3308881][4]["RewardItem"][1]["Id"] = 3308882
	tChiToken_Use_OtherAward[3308881][4]["RewardItem"][1]["Attr"] = "0 1 3"
	
	-- 180820[英文征服][活动脚本]阿拉丁神灯活动制作
	tChiToken_Use_OtherAward[3310565] = {}
	tChiToken_Use_OtherAward[3310565]["Reward"]={}
	tChiToken_Use_OtherAward[3310565]["Reward"]["ActivityTime"] = tActivityTime["LampofAladdin"]["ActTime"]
	tChiToken_Use_OtherAward[3310565]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3310565]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardItem"]={}
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardItem"][1]={}
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardItem"][1]["Id"] = 3310565
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardItem"][1]["Attr"]= "0 1"
	tChiToken_Use_OtherAward[3310565]["Reward"]["LogId"] = 12001145
	
	tChiToken_Use_OtherAward[3310565]["Reward"]["EventType"] = 182
	tChiToken_Use_OtherAward[3310565]["Reward"]["DataType"] = 22
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardData"] = 1
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardDelay"] = 1
	tChiToken_Use_OtherAward[3310565]["Reward"]["RewardTimeType"] = 4
	
------------------------------------------------------------------------------------
--Name：            180724[简体征服][活动脚本]七夕节活动
--Creator:      王贤
--Created:     2018/07/24
------------------------------------------------------------------------------------
	-- tChiToken_Use_OtherAward[3310201] = {} 
	-- tChiToken_Use_OtherAward[3310201]["Reward"]={}
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["ActivityTime"] = tActivityTime["ValentinesDay2018"]["ActivityTime"]
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["NeedLevel"] = 80
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["NeedMetempsychosis"] = 0
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["LogId"] = 12001123
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["LogStep"] = "1[1]"
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardItem"][1]["Id"] = 3310201
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["EventType"] = 180
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["DataType"] = 30
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardData"] = 1
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardDelay"] = 1
	-- tChiToken_Use_OtherAward[3310201]["Reward"]["RewardTimeType"] = 4
	
------------------------------------------------------------------------------------
--Name:			180827[英文征服][活动脚本]时装盛会活动
--Purpose:		外套活动
--Creator:		wzh
--Created:		2018-08-27
------------------------------------------------------------------------------------
	-- 使用正气令可获得1个一星外套碎片
	tChiToken_Use_OtherAward[3310695] = {} 
	tChiToken_Use_OtherAward[3310695]["Reward"]={}
	tChiToken_Use_OtherAward[3310695]["Reward"]["ActivityTime"] = tActivityTime["FashionEvent"]["ActTime"]
	tChiToken_Use_OtherAward[3310695]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3310695]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3310695]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3310695]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3310695]["Reward"]["RewardItem"][1]["Id"] = 3310695
	tChiToken_Use_OtherAward[3310695]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3310695]["Reward"]["LogId"] = 12001156
	tChiToken_Use_OtherAward[3310695]["Reward"]["LogStep"] = "1[1]"
	

------------------------------------------------------------------------------------
--Name:		[181121[简体征服][活动脚本]熔炼炉引导任务
--Purpose:	熔炼炉引导任务
--Creator: 	严振飞
--Created:	2018/11/21
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3311730] = {}
	tChiToken_Use_OtherAward[3311730]["Reward"] = {}
	tChiToken_Use_OtherAward[3311730]["Reward"]["ActivityTime"] = tActivityTime["MeltingStove"]["ActivityTime"]
	tChiToken_Use_OtherAward[3311730]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3311730]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3311730]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3311730]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3311730]["Reward"]["RewardItem"][1]["Id"] = 3311730
	tChiToken_Use_OtherAward[3311730]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3311730]["Reward"]["LogId"] = 12001223
	tChiToken_Use_OtherAward[3311730]["Reward"]["SzObj"] = "self"
	tChiToken_Use_OtherAward[3311730]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3311730]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3311730]["Reward"]["EventType"] = 186
	tChiToken_Use_OtherAward[3311730]["Reward"]["DataType"] = 76
	
------------------------------------------------------------------------------------
--Name：            190107[简体征服][活动脚本]2月情人节花魁赛活动制作-物品部分
--Creator:      陈莺
--Created:     2019-01-07
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3312027] = {}
	tChiToken_Use_OtherAward[3312027]["Reward"] = {}
	tChiToken_Use_OtherAward[3312027]["Reward"]["ActivityTime"] = tActivityTime["FlowerChiefItem"]["Now_Time"]
	tChiToken_Use_OtherAward[3312027]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3312027]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3312027]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3312027]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3312027]["Reward"]["RewardItem"][1]["Id"] = 3312027
	tChiToken_Use_OtherAward[3312027]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3312027]["Reward"]["LogId"] = 12001248
	tChiToken_Use_OtherAward[3312027]["Reward"]["SzObj"] = "self"
	tChiToken_Use_OtherAward[3312027]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3312027]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3312027]["Reward"]["EventType"] = 189
	tChiToken_Use_OtherAward[3312027]["Reward"]["DataType"] = 61
		
------------------------------------------------------------------------------------
--Name：            190102[简体征服][活动脚本]雷神预热活动制作
--Creator:      蔡颖静
--Created:     2019/01/02
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3319134] = {}
	tChiToken_Use_OtherAward[3319134]["Reward"] = {}
	tChiToken_Use_OtherAward[3319134]["Reward"]["ActivityTime"] = tActivityTime["ThorWarmUp"]["ActivityTime"]
	tChiToken_Use_OtherAward[3319134]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3319134]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3319134]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3319134]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3319134]["Reward"]["RewardItem"][1]["Id"] = 3319300
	tChiToken_Use_OtherAward[3319134]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3319134]["Reward"]["LogId"] = 12001255
	tChiToken_Use_OtherAward[3319134]["Reward"]["SzObj"] = "self"
	tChiToken_Use_OtherAward[3319134]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3319134]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3319134]["Reward"]["EventType"] = 188
	tChiToken_Use_OtherAward[3319134]["Reward"]["DataType"] = 52
	
------------------------------------------------------------------------------------
--Name：    181227[简体征服][活动脚本]雷神特权月活动优化
--Creator:      兰瑞妹
--Created:     2018-12-27
------------------------------------------------------------------------------------
	-- 3311725,'雷神谕令'
	tChiToken_Use_OtherAward[3311725] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"]["ActivityTime"] = tActivityTime["ThorPrivilegeMonth"]["ActivityTime"]
	tChiToken_Use_OtherAward[3311725]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3311725]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"][1] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"][1]["Pro"] = {{90,95}}
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"][1]["Item"] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"][1]["Item"][1] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"][1]["Item"][1]["Id"] = 3311725
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 0 1440 1"
	tChiToken_Use_OtherAward[3311725]["Reward"]["LogId"] = 12001230
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3311725]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tChiToken_Use_OtherAward[3311725]["Reward"]["EventType"] = 187
	-- tChiToken_Use_OtherAward[3311725]["Reward"]["DataType"] = 96
	-- tChiToken_Use_OtherAward[3311725]["Reward"]["RewardData"] = 1
	-- tChiToken_Use_OtherAward[3311725]["Reward"]["RewardTotalData"] = 2
	-- tChiToken_Use_OtherAward[3311725]["Reward"]["RewardDelay"] = 1
	-- tChiToken_Use_OtherAward[3311725]["Reward"]["RewardTimeType"] = 4
------------------------------------------------------------------------------------
--Name：	190124[简体征服][活动脚本]尾兽相关调整-材料产出
--Creator:	林旭
--Created:	2019/01/24
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3009100] = {}
	tChiToken_Use_OtherAward[3009100]["Reward"] = {}
	tChiToken_Use_OtherAward[3009100]["Reward"]["ActivityTime"] = tActivityTime["GiveBijuuMaterial"]["ActivityTime"]
	tChiToken_Use_OtherAward[3009100]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3009100]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3009100]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3009100]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3009100]["Reward"]["RewardItem"][1]["Id"] = 3009100
	tChiToken_Use_OtherAward[3009100]["Reward"]["RewardItem"][1]["Attr"] = "0 2"
	tChiToken_Use_OtherAward[3009100]["Reward"]["LogId"] = 12001280
	tChiToken_Use_OtherAward[3009100]["Reward"]["SzObj"] = "self"
	tChiToken_Use_OtherAward[3009100]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3009100]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3009100]["Reward"]["EventType"] = 189
	tChiToken_Use_OtherAward[3009100]["Reward"]["DataType"] = 78
	

------------------------------------------------------------------------------------
--Name:			190311[简体征服][活动脚本]勇士觉醒前章预热线上任务活动
--Creator:		吴燕柚
--Created:		2019/03/12
------------------------------------------------------------------------------------
--正气令获得通灵宝玉
	tChiToken_Use_OtherAward[3312103] = {}
	tChiToken_Use_OtherAward[3312103]["Reward"] = {}
	tChiToken_Use_OtherAward[3312103]["Reward"]["ActivityTime"] = tActivityTime["TrojanAwakenI"]["ActivityTime"]
	tChiToken_Use_OtherAward[3312103]["Reward"]["NeedLevel"] = 120
	tChiToken_Use_OtherAward[3312103]["Reward"]["NeedMetempsychosis"] = 1
	tChiToken_Use_OtherAward[3312103]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3312103]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3312103]["Reward"]["RewardItem"][1]["Id"] = 3312103
	tChiToken_Use_OtherAward[3312103]["Reward"]["RewardItem"][1]["Attr"] = "0 20"
	tChiToken_Use_OtherAward[3312103]["Reward"]["LogId"] = 12001280
	tChiToken_Use_OtherAward[3312103]["Reward"]["SzObj"] = "self"
	tChiToken_Use_OtherAward[3312103]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3312103]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3312103]["Reward"]["EventType"] = 191
	tChiToken_Use_OtherAward[3312103]["Reward"]["DataType"] = 76
------------------------------------------------------------------------------------
--Name：	190219[简体征服][活动脚本]狐狸骑宠活动制作
--Creator:	洪聪敏
--Created:	2019/03/18
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3320169] = {}
	tChiToken_Use_OtherAward[3320169]["Reward"] = {}
	tChiToken_Use_OtherAward[3320169]["Reward"]["ActivityTime"] = tActivityTime["NewFoxAct"]["ActiveTime"]
	tChiToken_Use_OtherAward[3320169]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3320169]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3320169]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3320169]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3320169]["Reward"]["RewardItem"][1]["Id"] = 3320169
	tChiToken_Use_OtherAward[3320169]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3320169]["Reward"]["LogId"] = 12001301
	tChiToken_Use_OtherAward[3320169]["Reward"]["SzObj"] = "self"
	tChiToken_Use_OtherAward[3320169]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3320169]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3320169]["Reward"]["EventType"] = 191
	tChiToken_Use_OtherAward[3320169]["Reward"]["DataType"] = 42
------------------------------------------------------------------------------------
--Name：      190514[简体征服][活动脚本]勇士觉醒特权月线上任务（5.28）-特权福利、装备促销 
--Creator:    陈莺
--Created:    2019/05/16
------------------------------------------------------------------------------------

	tChiToken_Use_OtherAward[3312723] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"]["ActivityTime"] = tActivityTime["WarriorPrivilege"]["ActivityTime"]
	tChiToken_Use_OtherAward[3312723]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3312723]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"][1] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"][1]["Pro"] = {{10,15}}
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"][1]["Item"] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"][1]["Item"][1] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"][1]["Item"][1]["Id"] = 3312723
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardProItem"][1]["Item"][1]["Attr"] = "0 2"
	tChiToken_Use_OtherAward[3312723]["Reward"]["LogId"] = 12001428
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3312723]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3312723]["Reward"]["EventType"] = 197
	tChiToken_Use_OtherAward[3312723]["Reward"]["DataType"] = 01

	-- 3312754,'神勇门金令'
	tChiToken_Use_OtherAward[3312754] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"]["ActivityTime"] = tActivityTime["WarriorPrivilege"]["ActivityTime"]
	tChiToken_Use_OtherAward[3312754]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3312754]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"][1] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"][1]["Pro"] = {{10,15}}
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"][1]["Item"] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"][1]["Item"][1] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"][1]["Item"][1]["Id"] = 3312754
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 0 1440 1"
	tChiToken_Use_OtherAward[3312754]["Reward"]["LogId"] = 12001428
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3312754]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3312754]["Reward"]["EventType"] = 197
	tChiToken_Use_OtherAward[3312754]["Reward"]["DataType"] = 63
	
	
	------------------------------------------------------------------------------------
--Name：            190130[简体征服][活动脚本]情人节时尚比拼
--Creator:      王贤
--Created:     2019-01-30
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3320096] = {}
	tChiToken_Use_OtherAward[3320096]["Reward"] = {}
	tChiToken_Use_OtherAward[3320096]["Reward"]["ActivityTime"] = tActivityTime["ValentineCompetition"]["ActivityTime"]
	tChiToken_Use_OtherAward[3320096]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3320096]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3320096]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3320096]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3320096]["Reward"]["RewardItem"][1]["Id"] = 3320096
	tChiToken_Use_OtherAward[3320096]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3320096]["Reward"]["LogId"] = 12001284
	tChiToken_Use_OtherAward[3320096]["Reward"]["EventType"] = 190
	tChiToken_Use_OtherAward[3320096]["Reward"]["DataType"] = 51
	tChiToken_Use_OtherAward[3320096]["Reward"]["LogStep"] = "4[6]"	
------------------------------------------------------------------------------------
-- Name：	190819[英文征服][活动脚本]手拉手拉新活动-线上制作 （9.5-11.05）
-- Creator:	林旭
-- Created:	2019-08-19
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3313516] = {}
	tChiToken_Use_OtherAward[3313516]["Reward"] = {}
	tChiToken_Use_OtherAward[3313516]["Reward"]["ActivityTime"] = tActivityTime["NewHandInHand"]["ActivityTime"]
	tChiToken_Use_OtherAward[3313516]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3313516]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3313516]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3313516]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3313516]["Reward"]["RewardItem"][1]["Id"] = 3313516
	tChiToken_Use_OtherAward[3313516]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3313516]["Reward"]["LogId"] = 12001569
	tChiToken_Use_OtherAward[3313516]["Reward"]["EventType"] = 202
	tChiToken_Use_OtherAward[3313516]["Reward"]["DataType"] = 48
	tChiToken_Use_OtherAward[3313516]["Reward"]["IsNoGiftServer"] = 0
	
	
------------------------------------------------------------------------------------
--Name:		180831[简体征服][活动脚本]寻宝魔塔活动
--Purpose:	寻宝魔塔活动
--Creator: 	傅伟龙
--Created:	2018/08/31
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3310714] = {} 
	tChiToken_Use_OtherAward[3310714]["Reward"]={}
	tChiToken_Use_OtherAward[3310714]["Reward"]["ActivityTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
	tChiToken_Use_OtherAward[3310714]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3310714]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3310714]["Reward"]["LogId"] = 10002436
	tChiToken_Use_OtherAward[3310714]["Reward"]["LogStep"] = "1[1]"
	tChiToken_Use_OtherAward[3310714]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3310714]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3310714]["Reward"]["RewardItem"][1]["Id"] = 3310714
	tChiToken_Use_OtherAward[3310714]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
------------------------------------------------------------------------------------
--Name：        190926[简体征服][活动脚本]全球万圣节活动(奖励部分)(10.24-11.05)
--Creator:      耿力兀
--Created:     2019-09-26
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3600167] = {}
	tChiToken_Use_OtherAward[3600167]["Reward"] = {}
	tChiToken_Use_OtherAward[3600167]["Reward"]["ActivityTime"] = tActivityTime["HalloweenReward"]["ActivityTime"]
	tChiToken_Use_OtherAward[3600167]["Reward"]["LogId"] = 12001660
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardItem"][1]["Id"] = 3600167 -- 【库】英文糖果[属性:9], 【表格】英文糖果
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardItem"][1]["Attr"] = "0 10" -- 英文糖果*10
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChiToken_Use_OtherAward[3600167]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3600167]["Reward"]["EventType"] = 207
	tChiToken_Use_OtherAward[3600167]["Reward"]["DataType"] = 44
------------------------------------------------------------------------------------
--Name:		191016[英文征服][活动脚本]11月科普答题+活跃礼包（11.7-11.30）
--Creator: 	郑飞
--Created:	2019/10/16
------------------------------------------------------------------------------------
tChiToken_Use_OtherAward[3326596] = {}
tChiToken_Use_OtherAward[3326596]["Reward"]={}
tChiToken_Use_OtherAward[3326596]["Reward"]["ActivityTime"] = tActivityTime["NovPopularScience"]["ActivityTime"]
tChiToken_Use_OtherAward[3326596]["Reward"]["NeedLevel"] = 0
tChiToken_Use_OtherAward[3326596]["Reward"]["NeedMetempsychosis"] = 2
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardItem"]={}
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardItem"][1]={}
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardItem"][1]["Id"] = 3326596
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardItem"][1]["Attr"]= "0 1"
tChiToken_Use_OtherAward[3326596]["Reward"]["EventType"] = 205
tChiToken_Use_OtherAward[3326596]["Reward"]["DataType"] = 95
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardData"] = 4
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardDelay"] = 1
tChiToken_Use_OtherAward[3326596]["Reward"]["RewardTimeType"] = 4
tChiToken_Use_OtherAward[3326596]["Reward"]["LogId"] = 12001690
tChiToken_Use_OtherAward[3326596]["Reward"]["LogStep"] = "1[1]"
tChiToken_Use_OtherAward[3326596]["Reward"]["IsNoGiftServer"] = 0
tChiToken_Use_OtherAward[3326596]["Reward"]["IsGreenServer"] = 0
-----------------------------------------------------------------------------------------------------
--Name:		191015[简体征服][活动脚本]感恩节---活动三小鸡快跑部分
--Purpose:		感恩节---活动三小鸡快跑部分
--Creator: 	洪聪敏
--Created:		2019/10/15
------------------------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3314316] = {}
	tChiToken_Use_OtherAward[3314316]["Reward"] = {}
	tChiToken_Use_OtherAward[3314316]["Reward"]["ActivityTime"] = tActivityTime["ThanksChickenTantivy"]["ActTime"]
	tChiToken_Use_OtherAward[3314316]["Reward"]["LogId"] = 12001713
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardItem"][1]["Id"] = 3314316 -- 仙灵藤[3314316][属性:11][叠加:1000][金币:0], 【表格】仙灵藤
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 仙灵藤*5
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChiToken_Use_OtherAward[3314316]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3314316]["Reward"]["EventType"] = 209
	tChiToken_Use_OtherAward[3314316]["Reward"]["DataType"] = 52
-----------------------------------------------------------------------------------------------------
--Name:		200103[简体征服][活动脚本]全球情人节活动--跨服互动活动
--Purpose:		全球情人节活动
--Creator: 	傅伟龙
--Created:		2019/10/15
------------------------------------------------------------------------------------------------------
	-- tChiToken_Use_OtherAward[3315299] = {}
	-- tChiToken_Use_OtherAward[3315299]["Reward"] = {}
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["ActivityTime"] = tActivityTime["ValentineDayAct_2019"]["ActTime"]
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["LogId"] = 12001823
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardItem"][1]["Id"] = 3315299
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardItem"][1]["Attr"] = "0 20" 
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardEffect"] = {}
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["EventType"] = 215
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["DataType"] = 11
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardData"] = 1
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardDelay"] = 1
	-- tChiToken_Use_OtherAward[3315299]["Reward"]["RewardTimeType"] = 4
------------------------------------------------------------------------------------
--Name：            200206[简体征服][更新包]6605更新包
--Creator:      王贤
--Created:     2020-02-06
------------------------------------------------------------------------------------
	-- tChiToken_Use_OtherAward[3329639] = {}
	-- tChiToken_Use_OtherAward[3329639]["Reward"] = {}
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime"]
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["LogId"] = 12001847
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["NeedLevel"] = 80
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["NeedMetempsychosis"] = 0
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardItem"] = {}
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardItem"][1] = {}
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardItem"][1]["Id"] = 3329639 -- 祈福蜡烛
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardItem"][1]["Attr"] = "0 20" -- 祈福蜡烛*20
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardEffect"] = {}
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["EventType"] = 215
	-- tChiToken_Use_OtherAward[3329639]["Reward"]["DataType"] = 58
	
	tChiToken_Use_OtherAward[3315533] = {}
	tChiToken_Use_OtherAward[3315533]["Reward"] = {}
	tChiToken_Use_OtherAward[3315533]["Reward"]["ActivityTime"] = tActivityTime["AtivityForPray"]["ActivityTime2"]
	tChiToken_Use_OtherAward[3315533]["Reward"]["LogId"] = 12001847
	tChiToken_Use_OtherAward[3315533]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3315533]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardItem"][1]["Id"] = 3315533 -- 祈福字牌包
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 祈福字牌包*5
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChiToken_Use_OtherAward[3315533]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3315533]["Reward"]["EventType"] = 215
	tChiToken_Use_OtherAward[3315533]["Reward"]["DataType"] = 68

------------------------------------------------------------------------------------
--Name：            200228[简体征服][活动脚本]全球愚人节活动气氛和藏宝图发放部分
--Creator:      冯子鑫
--Created:     2020-02-28
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3600243] = {}
	tChiToken_Use_OtherAward[3600243]["Reward"] = {}
	tChiToken_Use_OtherAward[3600243]["Reward"]["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	tChiToken_Use_OtherAward[3600243]["Reward"]["LogId"] = 12001893
	tChiToken_Use_OtherAward[3600243]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3600243]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardItem"][1]["Id"] = 3600243 -- 藏宝图碎片（赠）
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardItem"][1]["Attr"] = "0 10" -- 藏宝图碎片（赠）*10
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChiToken_Use_OtherAward[3600243]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3600243]["Reward"]["EventType"] = 216
	tChiToken_Use_OtherAward[3600243]["Reward"]["DataType"] = 61


------------------------------------------------------------------------------------
--Name：      200203[简体征服][活动脚本]制作忍者觉醒特权月线上任务（3.5-4.4）
--Creator:    江宇君
--Created:    2020/02/03
------------------------------------------------------------------------------------
	-- 熔炼道具
	tChiToken_Use_OtherAward[3315463] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"]["ActivityTime"] = tActivityTime["NanjaPrivilege"]["ActivityTime"]
	tChiToken_Use_OtherAward[3315463]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3315463]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"][1] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"][1]["Pro"] = {{50,55}}
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"][1]["Item"] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"][1]["Item"][1] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"][1]["Item"][1]["Id"] = 3315463
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardProItem"][1]["Item"][1]["Attr"] = "0 2"
	tChiToken_Use_OtherAward[3315463]["Reward"]["LogId"] = 12001428
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3315463]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3315463]["Reward"]["EventType"] = 215
	tChiToken_Use_OtherAward[3315463]["Reward"]["DataType"] = 61
------------------------------------------------------------------------------------
--Name：            200316[简体征服][活动脚本]全球周年庆征服品牌月活动
--Creator:      王贤
--Created:     2020-03-16
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3600245] = {}
	tChiToken_Use_OtherAward[3600245]["Reward"] = {}
	tChiToken_Use_OtherAward[3600245]["Reward"]["ActivityTime"] = tActivityTime["Anniversary2020"]["FireworksTime"] 
	tChiToken_Use_OtherAward[3600245]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3600245]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3600245]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3600245]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3600245]["Reward"]["RewardItem"][1]["Id"] = 3600245
	tChiToken_Use_OtherAward[3600245]["Reward"]["RewardItem"][1]["Attr"] = "0 5"
	tChiToken_Use_OtherAward[3600245]["Reward"]["LogId"] = 12001906
	tChiToken_Use_OtherAward[3600245]["Reward"]["EventType"] = 217
	tChiToken_Use_OtherAward[3600245]["Reward"]["DataType"] = 47
	tChiToken_Use_OtherAward[3600245]["Reward"]["LogStep"] = "3[2]"


	tChiToken_Use_OtherAward[3600246] = {}
	tChiToken_Use_OtherAward[3600246]["Reward"] = {}
	tChiToken_Use_OtherAward[3600246]["Reward"]["ActivityTime"] = tActivityTime["Anniversary2020"]["BossTime"]
	tChiToken_Use_OtherAward[3600246]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3600246]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3600246]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3600246]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3600246]["Reward"]["RewardItem"][1]["Id"] = 3600246
	tChiToken_Use_OtherAward[3600246]["Reward"]["RewardItem"][1]["Attr"] = "0 5"
	tChiToken_Use_OtherAward[3600246]["Reward"]["LogId"] = 12001906
	tChiToken_Use_OtherAward[3600246]["Reward"]["EventType"] = 217
	tChiToken_Use_OtherAward[3600246]["Reward"]["DataType"] = 47
	tChiToken_Use_OtherAward[3600246]["Reward"]["LogStep"] = "3[2]"

------------------------------------------------------------------------------------
--Name：        200412[英文征服][活动脚本]周年庆天降福禄（5.07-5.31）
--Creator:      陈莺
--Created:     2020-04-16
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3311367] = {}
	tChiToken_Use_OtherAward[3311367]["Reward"] = {}
	tChiToken_Use_OtherAward[3311367]["Reward"]["ActivityTime"] = tActivityTime["DoubleActivity"]["Now_Time"]
	tChiToken_Use_OtherAward[3311367]["Reward"]["LogId"] = 12001893
	tChiToken_Use_OtherAward[3311367]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3311367]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardItem"][1]["Id"] = 3311367 
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardItem"][1]["Attr"] = "0 2 3"
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChiToken_Use_OtherAward[3311367]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3311367]["Reward"]["EventType"] = 218
	tChiToken_Use_OtherAward[3311367]["Reward"]["DataType"] = 84
------------------------------------------------------------------------------------
--Name：          200415[简体征服][活动脚本]全球儿童节活动--打地鼠
--Creator:      杨艳
--Created:     2020/04/15
--------------------------------------------------------------------------------------
	-- 游玩券
	tChiToken_Use_OtherAward[3330736] = {}
	tChiToken_Use_OtherAward[3330736]["Reward"] = {}
	tChiToken_Use_OtherAward[3330736]["Reward"]["ActivityTime"] = tActivityTime["ChildrenDay2020"]["ActivityTime"] 
	tChiToken_Use_OtherAward[3330736]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3330736]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3330736]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3330736]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3330736]["Reward"]["RewardItem"][1]["Id"] = 3330736 -- 游玩券
	tChiToken_Use_OtherAward[3330736]["Reward"]["RewardItem"][1]["Attr"] = "0 2" -- 游玩券*2
	tChiToken_Use_OtherAward[3330736]["Reward"]["LogId"] = 12001963
	tChiToken_Use_OtherAward[3330736]["Reward"]["LogStep"] = " 3[5][1]"
	tChiToken_Use_OtherAward[3330736]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3330736]["Reward"]["RewardEffect"]["Effect"] = "angelwing"

------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]5月熔炼炉回收（5.26-6.08）
--Creator:		翁清海
--Created:		2020/04/16
------------------------------------------------------------------------------------
-- ===索引: tChiToken_Use_OtherAward[3330680]["Reward"]
	-- ===LogStep: 1[5]
	tChiToken_Use_OtherAward[3330680] = {}
	tChiToken_Use_OtherAward[3330680]["Reward"] = {}
	tChiToken_Use_OtherAward[3330680]["Reward"]["ActivityTime"] = tActivityTime["SmeltingRecovery"]["ActivityTime"]
	tChiToken_Use_OtherAward[3330680]["Reward"]["LogId"] = 12001945
	tChiToken_Use_OtherAward[3330680]["Reward"]["LogStep"] = "1[5]"
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3330680]["Reward"]["NeedLevel"] = 15
	tChiToken_Use_OtherAward[3330680]["Reward"]["NeedMetempsychosis"] = 2
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardItem"][1]["Id"] = 3330680 -- PillScrap[3330680][属性:9][叠加:10000][金币:0], 【表格】PillScrap*3
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardItem"][1]["Attr"] = "0 3" -- PillScrap*3
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardEffect"] = {}
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tChiToken_Use_OtherAward[3330680]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
	tChiToken_Use_OtherAward[3330680]["Reward"]["EventType"] = 219
	tChiToken_Use_OtherAward[3330680]["Reward"]["DataType"] = 99
------------------------------------------------------------------------------------
--Name：        200516[简体征服][活动脚本]全球暑期活动-主Npc(7.7-7.20)
--Creator:      陈莺
--Created:     2020-05-16
------------------------------------------------------------------------------------
	tChiToken_Use_OtherAward[3316258] = {}
	tChiToken_Use_OtherAward[3316258]["Reward"] = {}
	tChiToken_Use_OtherAward[3316258]["Reward"]["ActivityTime"] = tActivityTime["SummerActive"]["Preheat"]
	tChiToken_Use_OtherAward[3316258]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3316258]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3316258]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3316258]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3316258]["Reward"]["RewardItem"][1]["Id"] = 3316258
	tChiToken_Use_OtherAward[3316258]["Reward"]["RewardItem"][1]["Attr"] = "0 3"
	tChiToken_Use_OtherAward[3316258]["Reward"]["LogId"] = 12001906
	tChiToken_Use_OtherAward[3316258]["Reward"]["EventType"] = 222
	tChiToken_Use_OtherAward[3316258]["Reward"]["DataType"] = 18
	tChiToken_Use_OtherAward[3316258]["Reward"]["LogStep"] = "3[2]"
	
	tChiToken_Use_OtherAward[3316216] = {}
	tChiToken_Use_OtherAward[3316216]["Reward"] = {}
	tChiToken_Use_OtherAward[3316216]["Reward"]["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
	tChiToken_Use_OtherAward[3316216]["Reward"]["NeedLevel"] = 80
	tChiToken_Use_OtherAward[3316216]["Reward"]["NeedMetempsychosis"] = 0
	tChiToken_Use_OtherAward[3316216]["Reward"]["RewardItem"] = {}
	tChiToken_Use_OtherAward[3316216]["Reward"]["RewardItem"][1] = {}
	tChiToken_Use_OtherAward[3316216]["Reward"]["RewardItem"][1]["Id"] = 3316216
	tChiToken_Use_OtherAward[3316216]["Reward"]["RewardItem"][1]["Attr"] = "0 1"
	tChiToken_Use_OtherAward[3316216]["Reward"]["LogId"] = 12001988
	tChiToken_Use_OtherAward[3316216]["Reward"]["LogStep"] = "3[9]"

------------------------------------------------------------------------------------
--Name：            200609[简体征服][活动脚本]全球七夕花魁活动-惊喜事件
--Creator:      冯子鑫
--Created:     2020-06-09
------------------------------------------------------------------------------------
 	tChiToken_Use_OtherAward[3316530] = {}
 	tChiToken_Use_OtherAward[3316530]["Reward"] = {}
 	tChiToken_Use_OtherAward[3316530]["Reward"]["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
 	tChiToken_Use_OtherAward[3316530]["Reward"]["LogId"] = 12002030
 	tChiToken_Use_OtherAward[3316530]["Reward"]["LogStep"] = "3[5][4]"
 	tChiToken_Use_OtherAward[3316530]["Reward"]["NeedLevel"] = 80
 	tChiToken_Use_OtherAward[3316530]["Reward"]["NeedMetempsychosis"] = 0
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardItem"] = {}
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardItem"][1] = {}
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardItem"][1]["Attr"] = "0 5" -- 揽鹊笛*5
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardEffect"] = {}
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
 	tChiToken_Use_OtherAward[3316530]["Reward"]["RewardEffect"]["Effect"] = "angelwing"
 	tChiToken_Use_OtherAward[3316530]["Reward"]["EventType"] = 224
 	tChiToken_Use_OtherAward[3316530]["Reward"]["DataType"] = 88	

----------------------------------逻辑部分---------------------------------------------
function ChiToken_Use_UseItem()
	
	local nUserId = Get_UserId()
	local tAward = CommonFunc_Copy(tChiToken_Use)
	local nUserLevl = Get_UserLevel(nUserId)
	
--判断掩码设置掩码值
	if not ChiToken_Use_ChkStc(tChiToken_Use_Constant["Stc"],nUserId) then
		tAward["RewardData"] = tChiToken_Use_Constant["RewardData"]
	end
	
--判断等级是否大于135
	-- if nUserLevl >= tChiToken_Use_Constant["Level"] then
		-- tAward["RewardExpTime"]["Value"] = tChiToken_Use_Constant["135ExpTime"]
	-- end
	
--判断新老服设置奖励
	local nGlobalId = tChiToken_Use_Constant["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	if nGlobalId ~= nil and nData >= 1 then
		--if nUserLevl >= tChiToken_Use_Constant["Level"] then
			--tAward["RewardExpTime"]["Value"] = tChiToken_Use_Constant["135NewExpTime"]
		--else
			tAward["RewardExpTime"]["Value"] = tChiToken_Use_Constant["ExpTime"]
		--end
		tAward["RewardStrengthValue"]["Value"] = tChiToken_Use_Constant["Strength"]
	end
	
--背包空间判断
	if not ChiToken_Use_UpperLimit(nUserId) then
		return
	end
	
--获得奖励
	if not RewardTemplate_UseItemAndMsg(tAward,nUserId) then
		return
	end
	
	--191211[英文征服][活动脚本]老玩家召回（1.7-1.31）
	RecallOfOldPlayers_CompleteTask(2)
--外界函数执行
	ChiToken_Use_AwardList(nUserId)
--新服狂欢活动
	tLookForTreasure_AddTimes()
	-- 7月暑期拼图活动(7.13-8.1)  （非新服）
	-- JulySummer_Puzzle_GetAward(1)
	-- 炎魔活动
	-- 琳琅嘉年华
	-- Dailypoint_RewardDraw(1)
	-- BalrogActivity_Add()
	--1月促销
	PlayerBargain_AddCutNum(2)
--判断是否金币服
	local nGlobalId_1 = tChiToken_Use_Constant["GoldGolbal"]
	local nData_1 = Get_SysDynaGlobalData(nGlobalId_1,0)
	if nGlobalId_1 ~= nil and nData_1 ~= 1 then
	-- 新天石雨活动
		NewCPsRain_AddKey(2)
	end
	
		--海盗特权月
	--PrivilegeMonthActivity_GiveWarTip()
	Hanabi_UseChi()	
	-- 三月幸运树
	LuckyTree_UseChiToken()
	--内嵌世界版图探索活动
	MapExploration_AddStc(23,nUserId)
	--副职业提升月 开启正气令
	SecondProGrowth_SendTicket(1)
			--BP二期
	BattlePassTaskTest_TaskAddProgress(20,1)
	
	--191112[英文征服][活动脚本]年终盛典-集字嘉年华(12.5-12.24)
	CharacterCarnival_Attend(6, nUserId)
	--2020情人节
	ValentineDayAct_2019_ChiTokenUse()
	-- 200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
	IrrigateSacredTree_ExtraGetReward(3)
end


--掩码判断
function ChiToken_Use_ChkStc(tTable,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tTable["EventType"]
	local nType = tTable["DataType"]
	
	if nEvent == nil or nType == nil then
		return true
	end
	
	-- 判断是否隔天
	local nDelay = tTable["RewardDelay"] or 1
	local nTimeType = tTable["RewardTimeType"] or 4
	if Task_StcInterval(nEvent,nType,nDelay,nTimeType,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	
	local nMaxData = tTable["RewardData"] or 1
	
	-- 判断掩码值
	if Task_ChkStcValue(nEvent,nType,">=",nMaxData,nUserId) then
		return false
	end
	
	return true
end

--背包空间判断
function ChiToken_Use_UpperLimit(nUserId)
	local ndelSpace = RewardTemplate_GetDelSpace(tChiToken_Use,nUserId)
	local nSpace = ChiToken_Use_AwardNeedSpace(nUserId)-ndelSpace + 1
	-- 琳琅嘉年华
	-- if Sys_ChkFullTime(tActivityTime["LinLang"]["ActivityTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpace = nSpace + 1		
		-- end
	-- end
	--海盗特权月
	if Sys_ChkFullTime(tActivityTime["PrivilegeMonth"]["ActivityTime"]) then
		nSpace = nSpace + 1
	end
	--海盗特权月
	if Sys_ChkFullTime(tActivityTime["ValentineDayAct_2019"]["ActTime"]) then
		nSpace = nSpace + 1
	end
	
	-- 200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
	if Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"]) then
		nSpace = nSpace + IrrigateSacredTree_ExtraChkSpace(3)
	end
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		 local sCoent = string.format(tChiToken_Use_Text["NoSpace"],nSpace)
		User_TalkChannel2005(sCoent,nUserId)
		return false
	end
	return true
end

-- 正气令区分激情服和非激情服 1为仅激情服获得奖励 0为仅非激情服获得奖励
function ChiToken_Use_ChkNoGiftServer(k)
	if tChiToken_Use_OtherAward[k]["Reward"] ~= nil and tChiToken_Use_OtherAward[k]["Reward"]["IsNoGiftServer"] == 1 then
		if not SpecialServer_ChkNoGiftServer() then
			return false
		end
	end
	if tChiToken_Use_OtherAward[k]["Reward"] ~= nil and tChiToken_Use_OtherAward[k]["Reward"]["IsNoGiftServer"] == 0 then
		if SpecialServer_ChkNoGiftServer() then
			return false
		end
	end
		
	if tChiToken_Use_OtherAward[k]["IsRandom"] then
		if tChiToken_Use_OtherAward[k]["IsNoGiftServer"] == 1 then
			if not SpecialServer_ChkNoGiftServer() then
				return false
			end
		end
		if tChiToken_Use_OtherAward[k]["IsNoGiftServer"] == 0 then
			if SpecialServer_ChkNoGiftServer() then
				return false
			end
		end		
	end
	
	return true
end

-- 正气令区分绿色新服 1为仅绿色新服 0为仅非绿色新服获得奖励
function ChiToken_Use_ChkGreenServer(k)
	if tChiToken_Use_OtherAward[k]["Reward"] ~= nil and tChiToken_Use_OtherAward[k]["Reward"]["IsGreenServer"] == 1 then
		if not SpecialServer_ChkGreenServer() then
			return false
		end
	end
	if tChiToken_Use_OtherAward[k]["Reward"] ~= nil and tChiToken_Use_OtherAward[k]["Reward"]["IsGreenServer"] == 0 then
		if SpecialServer_ChkGreenServer() then
			return false
		end
	end
		
	if tChiToken_Use_OtherAward[k]["IsRandom"] then
		if tChiToken_Use_OtherAward[k]["IsGreenServer"] == 1 then
			if not SpecialServer_ChkGreenServer() then
				return false
			end
		end
		if tChiToken_Use_OtherAward[k]["IsGreenServer"] == 0 then
			if SpecialServer_ChkGreenServer() then
				return false
			end
		end		
	end
	
	return true
end

--获取奖励模板所需背包空间大小
function ChiToken_Use_AwardNeedSpace(nUserId)
	local nSpace = 0
	local nGlobalId = tChiToken_Use_Constant["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	
	for k,v in pairs(tChiToken_Use_OtherAward) do
		if nGlobalId ~=nil and nData >= 1 and v["NewReward"] ~= nil then
			if v["NewReward"] ~=nil and ChiToken_Use_ChkStc(v["NewReward"]) then
				if v["NewReward"]["ActivityTime"] ~= nil then
					if Sys_ChkFullTime(v["NewReward"]["ActivityTime"]) then
						nSpace = nSpace + RewardTemplate_GetRewardSpace(v["NewReward"],nUserId)
					end
				else
					nSpace = nSpace + RewardTemplate_GetRewardSpace(v["NewReward"],nUserId)
				end
			end
		elseif v["IsRandom"] then
			if ChiToken_Use_Condition(v) then
				if ChiToken_Use_ChkNoGiftServer(k) and ChiToken_Use_ChkGreenServer(k) then
					nSpace = nSpace + RewardTemplate_GetRandomSpace(tChiToken_Use_OtherAward,k,nUserId)
				end
			end
		else
			if v["Reward"] ~= nil and ChiToken_Use_ChkStc(v["Reward"]) and ChiToken_Use_Condition(v["Reward"]) then
				if ChiToken_Use_ChkNoGiftServer(k) and ChiToken_Use_ChkGreenServer(k) then
					nSpace = nSpace + RewardTemplate_GetRewardSpace(v["Reward"],nUserId)
				end
			end
		end
	end
	return nSpace
end


--奖励部分
function ChiToken_Use_AwardList(nUserId)
	local nGlobalId = tChiToken_Use_Constant["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	for k,v in pairs(tChiToken_Use_OtherAward) do 
		if nGlobalId ~=nil and nData >= 1 and v["NewReward"] ~= nil then
			if v["NewReward"] ~=nil then
				if v["NewReward"]["ActivityTime"] ~= nil then
					if Sys_ChkFullTime(v["NewReward"]["ActivityTime"]) then
						RewardTemplate_UseItemAndMsg(v["NewReward"],nUserId)
					end
				else
					RewardTemplate_UseItemAndMsg(v["NewReward"],nUserId)
				end
			end
		elseif v["IsRandom"] then
			if ChiToken_Use_Condition(v,nUserId) then
				if ChiToken_Use_ChkNoGiftServer(k) and ChiToken_Use_ChkGreenServer(k) then
					RewardTemplate_NewRandom(tChiToken_Use_OtherAward,k,nUserId)
					if v["EmoneyLog"] then
						Sys_SaveEmoneyBuy(v["EmoneyLog"],nUserId)
					end
				end
			end
		else
			if v["Reward"] ~=nil then
				if ChiToken_Use_Condition(v["Reward"],nUserId) then
					if ChiToken_Use_ChkNoGiftServer(k) and ChiToken_Use_ChkGreenServer(k) then
						RewardTemplate_UseItemAndMsg(v["Reward"],nUserId)
					end
				end
			end
		end
	end
end


--条件判断
function ChiToken_Use_Condition(v,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 活动时间判断
	if v["ActivityTime"] ~= nil and (not Sys_ChkFullTime(v["ActivityTime"])) then
		return false
	end

	
	-- 等级判断
	if v["NeedLevel"] ~= nil and v["NeedMetempsychosis"] ~= nil then
		if not User_JudgeLevelAndMetempsychosis(v["NeedLevel"],v["NeedMetempsychosis"],nUserId) then
			return false
		end
	end
	
	
	return true
end

---------------------------------物品部分---------------------------------------------
--------正气令
tItem[729304] = tItem[729304] or {}
tItem[729304]["Function"] = function(nItemId,sItemName)
	ChiToken_Use_UseItem()
end



