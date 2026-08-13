------------------------------------------------------------------------------------
--Name：            190821[简体征服][活动脚本]全球共赏月
--Creator:      戴鑫海
--Created:     2019/08/21
------------------------------------------------------------------------------------
--任务需求：
--log : 12000813
------------------------------------------------------------------------------------
--命名前缀：
--MoonFestivalActive_
--掩码说明：
--动态码：51725  data0 记录每天领取奖励的NPC
--stc掩码
--164 58 记录是否从NPC领取过奖励
--164 59 记录从击杀怪兽身上获取奖励的数量
--164 57 记录玩家当天是否开启过阖家团圆
--164 67 记录玩家当天是否开启过兴国安邦
--164 60 记录玩家是否上线获取过阖家团圆
----------------------------------表配置部分--------------------------------------------
local tMoonFestivalActive_Data = {}
	tMoonFestivalActive_Data["BeforeTime"] = tActivityTime["ZhongQiu"]["BeforeTime"]
	tMoonFestivalActive_Data["ActivityTime"] = tActivityTime["ZhongQiu"]["ActivityTime"]
	tMoonFestivalActive_Data["UseTime"] = tActivityTime["ZhongQiu"]["UseTime"]
	tMoonFestivalActive_Data["GiftUseTime"] = tActivityTime["ZhongQiu"]["GiftUseTime"]
	tMoonFestivalActive_Data["CountryUseTime"] = tActivityTime["ZhongQiu"]["CountryUseTime"]
	
	tMoonFestivalActive_Data["Level"] = 80
	tMoonFestivalActive_Data["Metempsychosis"] = 0
	tMoonFestivalActive_Data["DropSum"] = 20
	tMoonFestivalActive_Data["NpcId"] = 24869
	tMoonFestivalActive_Data["Limit"] = 88
	
	tMoonFestivalActive_Data["DelLog"] = "0,0,%d,1,12000813,2,0,0"
	tMoonFestivalActive_Data["MonsterDropChance"] = 300
	tMoonFestivalActive_Data["Stc"] = {}
	tMoonFestivalActive_Data["Stc"]["EventType"] = 164
	tMoonFestivalActive_Data["Stc"]["DataType"] = {}
	tMoonFestivalActive_Data["Stc"]["DataType"][1] = 58
	tMoonFestivalActive_Data["Stc"]["DataType"][2] = 59
	tMoonFestivalActive_Data["Stc"]["DataType"][3304526] = 57
	tMoonFestivalActive_Data["Stc"]["DataType"][3304552] = 67
	tMoonFestivalActive_Data["Stc"]["Talk"] = {}
	tMoonFestivalActive_Data["Stc"]["Talk"]["EventType"] = 203
	tMoonFestivalActive_Data["Stc"]["Talk"]["DataType"] = 26
	tMoonFestivalActive_Data["Stc"]["Gift"] = {}
	tMoonFestivalActive_Data["Stc"]["Gift"]["EventType"] = 204
	tMoonFestivalActive_Data["Stc"]["Gift"]["DataType"] = 36
	tMoonFestivalActive_Data["Global"] = 51725
	
	tMoonFestivalActive_Data[21113] = 21113
	tMoonFestivalActive_Data[21114] = 21114
	tMoonFestivalActive_Data[21115] = 21115
	tMoonFestivalActive_Data[3304521] = 3304521
	
	tMoonFestivalActive_Data["MapId"] = 10593
	tMoonFestivalActive_Data["SumPos"] = 7
	tMoonFestivalActive_Data["PosX"] = {}
	tMoonFestivalActive_Data["PosX"][1] = 71
	tMoonFestivalActive_Data["PosX"][2] = 173
	tMoonFestivalActive_Data["PosX"][3] = 113
	tMoonFestivalActive_Data["PosX"][4] = 159
	tMoonFestivalActive_Data["PosX"][5] = 147
	tMoonFestivalActive_Data["PosX"][6] = 152
	tMoonFestivalActive_Data["PosX"][7] = 138

	
	tMoonFestivalActive_Data["PosY"] = {}
	tMoonFestivalActive_Data["PosY"][1] = 143
	tMoonFestivalActive_Data["PosY"][2] = 114
	tMoonFestivalActive_Data["PosY"][3] = 180
	tMoonFestivalActive_Data["PosY"][4] = 93
	tMoonFestivalActive_Data["PosY"][5] = 184
	tMoonFestivalActive_Data["PosY"][6] = 111
	tMoonFestivalActive_Data["PosY"][7] = 172


	tMoonFestivalActive_Data["Type"] = "self"
	tMoonFestivalActive_Data["EffectDrop"] = "angelwing"
	tMoonFestivalActive_Data["EffectOpen"] = "zf2-e128"
	tMoonFestivalActive_Data["EffectGet"] = "zf2-e128"
	tMoonFestivalActive_Data["EffectCountry"] = "zf2-e128"
	
	tMoonFestivalActive_Data["MixItem"] = 3304552 -- 兴国安邦
	tMoonFestivalActive_Data["Family"] = 3304526 -- 阖家团圆
	
tMoonFestivalActive_Data["Pos"] = {}
tMoonFestivalActive_Data["Pos"]["NppcId"] = 24869
tMoonFestivalActive_Data["Pos"]["MapId"] = 1002
tMoonFestivalActive_Data["Pos"]["PosX"] = 324
tMoonFestivalActive_Data["Pos"]["PosY"] = 452
local tMoonFestivalActiveNoGift_Data = {}
	tMoonFestivalActiveNoGift_Data["Pos"] = {}
	tMoonFestivalActiveNoGift_Data["Pos"]["NppcId"] = 24869
	tMoonFestivalActiveNoGift_Data["Pos"]["MapId"] = 1036
	tMoonFestivalActiveNoGift_Data["Pos"]["PosX"] = 216
	tMoonFestivalActiveNoGift_Data["Pos"]["PosY"] = 163
local tMoonFestivalActive_Reward = {}
	--中秋礼盒
	tMoonFestivalActive_Reward[3304521] = {}
	tMoonFestivalActive_Reward[3304521][1] = {}
	tMoonFestivalActive_Reward[3304521][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304521][1][1] = {}
	tMoonFestivalActive_Reward[3304521][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304521][1][1]["ItemChance"] = 3200
	tMoonFestivalActive_Reward[3304521][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304521][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304521][1][1]["RewardItem"][1]["Id"] = 3304527  --兑换
	tMoonFestivalActive_Reward[3304521][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tMoonFestivalActive_Reward[3304521][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304521][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304521][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward[3304521][1][1]["Log"] = "0,0,3304521,1,12000813,2,3304527,3"
	
	tMoonFestivalActive_Reward[3304521][1][2] = {}
	tMoonFestivalActive_Reward[3304521][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304521][1][2]["ItemChance"] = 2000
	tMoonFestivalActive_Reward[3304521][1][2]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304521][1][2]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304521][1][2]["RewardItem"][1]["Id"] = 3304527  --兑换
	tMoonFestivalActive_Reward[3304521][1][2]["RewardItem"][1]["Attr"] = "0 5"
	tMoonFestivalActive_Reward[3304521][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304521][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304521][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward[3304521][1][2]["Log"] = "0,0,3304521,1,12000813,2,3304527,5"
	
	tMoonFestivalActive_Reward[3304521][1][3] = {}
	tMoonFestivalActive_Reward[3304521][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304521][1][3]["ItemChance"] = 1500
	tMoonFestivalActive_Reward[3304521][1][3]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304521][1][3]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304521][1][3]["RewardItem"][1]["Id"] = 3304527  --兑换
	tMoonFestivalActive_Reward[3304521][1][3]["RewardItem"][1]["Attr"] = "0 8"
	tMoonFestivalActive_Reward[3304521][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304521][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304521][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward[3304521][1][3]["Log"] = "0,0,3304521,1,12000813,2,3304527,8"
	
	tMoonFestivalActive_Reward[3304521][1][4] = {}
	tMoonFestivalActive_Reward[3304521][1][4]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304521][1][4]["ItemChance"] = 800
	tMoonFestivalActive_Reward[3304521][1][4]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304521][1][4]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304521][1][4]["RewardItem"][1]["Id"] = 3304527  --兑换
	tMoonFestivalActive_Reward[3304521][1][4]["RewardItem"][1]["Attr"] = "0 10"
	tMoonFestivalActive_Reward[3304521][1][4]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304521][1][4]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304521][1][4]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward[3304521][1][4]["Log"] = "0,0,3304521,1,12000813,2,3304527,10"
	
	tMoonFestivalActive_Reward[3304521][1][5] = {}
	tMoonFestivalActive_Reward[3304521][1][5]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304521][1][5]["ItemChance"] = 1700
	tMoonFestivalActive_Reward[3304521][1][5]["RewardEMoneyMono"] = {}  
	tMoonFestivalActive_Reward[3304521][1][5]["RewardEMoneyMono"]["Value"] = 5 
	tMoonFestivalActive_Reward[3304521][1][5]["EMoneyMono"] = tMoonFestivalActive_Text["MsgBox"]["MoreEmoney"]
	tMoonFestivalActive_Reward[3304521][1][5]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304521][1][5]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304521][1][5]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward[3304521][1][5]["Log"] = "0,0,3304521,1,12000813,2,3,5"
	
	tMoonFestivalActive_Reward[3304521][1][6] = {}
	tMoonFestivalActive_Reward[3304521][1][6]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304521][1][6]["ItemChance"] = 800
	tMoonFestivalActive_Reward[3304521][1][6]["RewardEMoneyMono"] = {}  
	tMoonFestivalActive_Reward[3304521][1][6]["RewardEMoneyMono"]["Value"] = 10 
	tMoonFestivalActive_Reward[3304521][1][6]["EMoneyMono"] = tMoonFestivalActive_Text["MsgBox"]["MoreEmoney"]
	tMoonFestivalActive_Reward[3304521][1][6]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304521][1][6]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304521][1][6]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward[3304521][1][6]["Log"] = "0,0,3304521,1,12000813,2,3,10"
	

	--蛋黄月饼
	tMoonFestivalActive_Reward[3304522] = {}
	tMoonFestivalActive_Reward[3304522][1] = {}
	tMoonFestivalActive_Reward[3304522][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304522][1][1] = {}
	tMoonFestivalActive_Reward[3304522][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304522][1][1]["ItemChance"] = 5000
	tMoonFestivalActive_Reward[3304522][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304522][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304522][1][1]["RewardItem"][1]["Id"] = 730001  
	tMoonFestivalActive_Reward[3304522][1][1]["RewardItem"][1]["Attr"] = "0 1 3"  
	tMoonFestivalActive_Reward[3304522][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304522][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304522][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304522][1][1]["Talk"] = tMoonFestivalActive_Text[3304522][1]
	tMoonFestivalActive_Reward[3304522][1][1]["Log"] = "0,0,3304522,1,12000813,2,730001,1"
	
	tMoonFestivalActive_Reward[3304522][1][2] = {}
	tMoonFestivalActive_Reward[3304522][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304522][1][2]["ItemChance"] = 3000
	tMoonFestivalActive_Reward[3304522][1][2]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304522][1][2]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304522][1][2]["RewardItem"][1]["Id"] = 730001 
	tMoonFestivalActive_Reward[3304522][1][2]["RewardItem"][1]["Attr"] = "0 2 3" 
	tMoonFestivalActive_Reward[3304522][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304522][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304522][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304522][1][2]["Talk"] = tMoonFestivalActive_Text[3304522][2]
	tMoonFestivalActive_Reward[3304522][1][2]["Log"] = "0,0,3304522,1,12000813,2,730001,2"
	
	tMoonFestivalActive_Reward[3304522][1][3] = {}
	tMoonFestivalActive_Reward[3304522][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304522][1][3]["ItemChance"] = 2000
	tMoonFestivalActive_Reward[3304522][1][3]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304522][1][3]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304522][1][3]["RewardItem"][1]["Id"] = 730002 
	tMoonFestivalActive_Reward[3304522][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tMoonFestivalActive_Reward[3304522][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304522][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304522][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304522][1][3]["Talk"] = tMoonFestivalActive_Text[3304522][3]
	tMoonFestivalActive_Reward[3304522][1][3]["Log"] = "0,0,3304522,1,12000813,2,730002,1"
	
	tMoonFestivalActive_Reward[3304522][1][4] = {}
	tMoonFestivalActive_Reward[3304522][1][4]["RandomItemChanceType"] = 1
	tMoonFestivalActive_Reward[3304522][1][4]["ItemChance"] = 10000
	tMoonFestivalActive_Reward[3304522][1][4]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304522][1][4]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304522][1][4]["RewardItem"][1]["Id"] = 3323106 
	tMoonFestivalActive_Reward[3304522][1][4]["RewardItem"][1]["Attr"] = "0 2"
	
--冰皮月饼
	tMoonFestivalActive_Reward[3304523] = {}
	tMoonFestivalActive_Reward[3304523][1] = {}
	tMoonFestivalActive_Reward[3304523][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304523][1][1] = {}
	tMoonFestivalActive_Reward[3304523][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304523][1][1]["ItemChance"] = 5000
	tMoonFestivalActive_Reward[3304523][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304523][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304523][1][1]["RewardItem"][1]["Id"] = 3003124  
	tMoonFestivalActive_Reward[3304523][1][1]["RewardItem"][1]["Attr"] = "0 2 3"  
	
	tMoonFestivalActive_Reward[3304523][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304523][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304523][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304523][1][1]["Talk"] = tMoonFestivalActive_Text[3304523][1]
	tMoonFestivalActive_Reward[3304523][1][1]["Log"] = "0,0,3304523,1,12000813,2,3003124,2"
	
	tMoonFestivalActive_Reward[3304523][1][2] = {}
	tMoonFestivalActive_Reward[3304523][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304523][1][2]["ItemChance"] = 3500
	tMoonFestivalActive_Reward[3304523][1][2]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304523][1][2]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304523][1][2]["RewardItem"][1]["Id"] = 3003125 
	tMoonFestivalActive_Reward[3304523][1][2]["RewardItem"][1]["Attr"] = "0 2 3" 
	tMoonFestivalActive_Reward[3304523][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304523][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304523][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304523][1][2]["Talk"] = tMoonFestivalActive_Text[3304523][2]
	tMoonFestivalActive_Reward[3304523][1][2]["Log"] = "0,0,3304523,1,12000813,2,3003125,2"
	
	tMoonFestivalActive_Reward[3304523][1][3] = {}
	tMoonFestivalActive_Reward[3304523][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304523][1][3]["ItemChance"] = 1500
	tMoonFestivalActive_Reward[3304523][1][3]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304523][1][3]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304523][1][3]["RewardItem"][1]["Id"] = 3003126
	tMoonFestivalActive_Reward[3304523][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tMoonFestivalActive_Reward[3304523][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304523][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304523][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304523][1][3]["Talk"] = tMoonFestivalActive_Text[3304523][3]
	tMoonFestivalActive_Reward[3304523][1][3]["Log"] = "0,0,3304523,1,12000813,2,3003126,1"
	
	tMoonFestivalActive_Reward[3304523][1][4] = {}
	tMoonFestivalActive_Reward[3304523][1][4]["RandomItemChanceType"] = 1
	tMoonFestivalActive_Reward[3304523][1][4]["ItemChance"] = 10000
	tMoonFestivalActive_Reward[3304523][1][4]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304523][1][4]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304523][1][4]["RewardItem"][1]["Id"] = 3323106 
	tMoonFestivalActive_Reward[3304523][1][4]["RewardItem"][1]["Attr"] = "0 2"
	
	--芙蓉月饼
	tMoonFestivalActive_Reward[3304524] = {}
	tMoonFestivalActive_Reward[3304524][1] = {}
	tMoonFestivalActive_Reward[3304524][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304524][1][1] = {}
	tMoonFestivalActive_Reward[3304524][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304524][1][1]["ItemChance"] = 5000
	tMoonFestivalActive_Reward[3304524][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304524][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304524][1][1]["RewardItem"][1]["Id"] = 3009000  
	tMoonFestivalActive_Reward[3304524][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"  
	tMoonFestivalActive_Reward[3304524][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304524][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304524][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304524][1][1]["Talk"] = tMoonFestivalActive_Text[3304524][1]
	tMoonFestivalActive_Reward[3304524][1][1]["Log"] = "0,0,3304524,1,12000813,2,3009000,1"
	
	tMoonFestivalActive_Reward[3304524][1][2] = {}
	tMoonFestivalActive_Reward[3304524][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304524][1][2]["ItemChance"] = 3000
	tMoonFestivalActive_Reward[3304524][1][2]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304524][1][2]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304524][1][2]["RewardItem"][1]["Id"] = 3009000 
	tMoonFestivalActive_Reward[3304524][1][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" 
	tMoonFestivalActive_Reward[3304524][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304524][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304524][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304524][1][2]["Talk"] = tMoonFestivalActive_Text[3304524][2]
	tMoonFestivalActive_Reward[3304524][1][2]["Log"] = "0,0,3304524,1,12000813,2,3009000,3"
	
	tMoonFestivalActive_Reward[3304524][1][3] = {}
	tMoonFestivalActive_Reward[3304524][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304524][1][3]["ItemChance"] = 2000
	tMoonFestivalActive_Reward[3304524][1][3]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304524][1][3]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304524][1][3]["RewardItem"][1]["Id"] = 3009001
	tMoonFestivalActive_Reward[3304524][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMoonFestivalActive_Reward[3304524][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304524][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304524][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304524][1][3]["Talk"] = tMoonFestivalActive_Text[3304524][3]
	tMoonFestivalActive_Reward[3304524][1][3]["Log"] = "0,0,3304524,1,12000813,2,3009001,1"
	
	tMoonFestivalActive_Reward[3304524][1][4] = {}
	tMoonFestivalActive_Reward[3304524][1][4]["RandomItemChanceType"] = 1
	tMoonFestivalActive_Reward[3304524][1][4]["ItemChance"] = 10000
	tMoonFestivalActive_Reward[3304524][1][4]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304524][1][4]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304524][1][4]["RewardItem"][1]["Id"] = 3323106 
	tMoonFestivalActive_Reward[3304524][1][4]["RewardItem"][1]["Attr"] = "0 2"
	
	--翡翠月饼
	tMoonFestivalActive_Reward[3304525] = {}
	tMoonFestivalActive_Reward[3304525][1] = {}
	tMoonFestivalActive_Reward[3304525][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward[3304525][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304525][1][1] = {}
	tMoonFestivalActive_Reward[3304525][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304525][1][1]["ItemChance"] = 5000
	tMoonFestivalActive_Reward[3304525][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304525][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304525][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304525][1][1]["RewardStrengthValue"] = {}
	tMoonFestivalActive_Reward[3304525][1][1]["RewardStrengthValue"]["Value"] = 50 
	tMoonFestivalActive_Reward[3304525][1][1]["Talk"] = tMoonFestivalActive_Text[3304525][1]
	tMoonFestivalActive_Reward[3304525][1][1]["Log"] = "0,0,3304525,1,12000813,2,12,50"
	
	tMoonFestivalActive_Reward[3304525][1][2] = {}
	tMoonFestivalActive_Reward[3304525][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304525][1][2]["ItemChance"] = 3000
	tMoonFestivalActive_Reward[3304525][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304525][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304525][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304525][1][2]["RewardStrengthValue"] = {}
	tMoonFestivalActive_Reward[3304525][1][2]["RewardStrengthValue"]["Value"] = 100
	tMoonFestivalActive_Reward[3304525][1][2]["Talk"] = tMoonFestivalActive_Text[3304525][2]
	tMoonFestivalActive_Reward[3304525][1][2]["Log"] = "0,0,3304525,1,12000813,2,12,100"
	
	tMoonFestivalActive_Reward[3304525][1][3] = {}
	tMoonFestivalActive_Reward[3304525][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304525][1][3]["ItemChance"] = 2000
	tMoonFestivalActive_Reward[3304525][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304525][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304525][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectOpen"]
	tMoonFestivalActive_Reward[3304525][1][3]["RewardStrengthValue"] = {}
	tMoonFestivalActive_Reward[3304525][1][3]["RewardStrengthValue"]["Value"] = 200
	tMoonFestivalActive_Reward[3304525][1][3]["Talk"] = tMoonFestivalActive_Text[3304525][3]
	tMoonFestivalActive_Reward[3304525][1][3]["Log"] = "0,0,3304525,1,12000813,2,12,200"
	
	tMoonFestivalActive_Reward[3304525][1][4] = {}
	tMoonFestivalActive_Reward[3304525][1][4]["RandomItemChanceType"] = 1
	tMoonFestivalActive_Reward[3304525][1][4]["ItemChance"] = 10000
	tMoonFestivalActive_Reward[3304525][1][4]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304525][1][4]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304525][1][4]["RewardItem"][1]["Id"] = 3323106 
	tMoonFestivalActive_Reward[3304525][1][4]["RewardItem"][1]["Attr"] = "0 6"
	
	--阖家团圆
	tMoonFestivalActive_Reward[3304526] = {}
	tMoonFestivalActive_Reward[3304526][1] = {}
	tMoonFestivalActive_Reward[3304526][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304526][1][1] = {}
	tMoonFestivalActive_Reward[3304526][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304526][1][1]["ItemChance"] = 5000
	tMoonFestivalActive_Reward[3304526][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304526][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304526][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectGet"]
	tMoonFestivalActive_Reward[3304526][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304526][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304526][1][1]["RewardItem"][1]["Id"] = 3304527
	tMoonFestivalActive_Reward[3304526][1][1]["RewardItem"][1]["Attr"] = "0 2"
	tMoonFestivalActive_Reward[3304526][1][1]["RewardItem"][1]["Num"] = 2
	tMoonFestivalActive_Reward[3304526][1][1]["Log"] = "0,0,3304526,1,12000813,2,3304527,2"
	
	tMoonFestivalActive_Reward[3304526][1][2] = {}
	tMoonFestivalActive_Reward[3304526][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304526][1][2]["ItemChance"] = 3000
	tMoonFestivalActive_Reward[3304526][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304526][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304526][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectGet"]
	tMoonFestivalActive_Reward[3304526][1][2]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304526][1][2]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304526][1][2]["RewardItem"][1]["Id"] = 3304527
	tMoonFestivalActive_Reward[3304526][1][2]["RewardItem"][1]["Attr"] = "0 4"
	tMoonFestivalActive_Reward[3304526][1][2]["RewardItem"][1]["Num"] = 4
	tMoonFestivalActive_Reward[3304526][1][2]["Log"] = "0,0,3304526,1,12000813,2,3304527,4"
	
	tMoonFestivalActive_Reward[3304526][1][3] = {}
	tMoonFestivalActive_Reward[3304526][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304526][1][3]["ItemChance"] = 2000
	tMoonFestivalActive_Reward[3304526][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304526][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304526][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectGet"]
	tMoonFestivalActive_Reward[3304526][1][3]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304526][1][3]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304526][1][3]["RewardItem"][1]["Id"] = 3304527
	tMoonFestivalActive_Reward[3304526][1][3]["RewardItem"][1]["Attr"] = "0 6"
	tMoonFestivalActive_Reward[3304526][1][3]["RewardItem"][1]["Num"] = 6
	tMoonFestivalActive_Reward[3304526][1][3]["Log"] = "0,0,3304526,1,12000813,2,3304527,6"
	
	--兴国安邦
	tMoonFestivalActive_Reward[3304552] = {}
	tMoonFestivalActive_Reward[3304552][1] = {}
	tMoonFestivalActive_Reward[3304552][1]["ItemChanceSum"] = 10000
	
	tMoonFestivalActive_Reward[3304552][1][1] = {}
	tMoonFestivalActive_Reward[3304552][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304552][1][1]["ItemChance"] = 5000
	tMoonFestivalActive_Reward[3304552][1][1]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304552][1][1]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304552][1][1]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectCountry"]
	tMoonFestivalActive_Reward[3304552][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304552][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304552][1][1]["RewardItem"][1]["Id"] = 3304549
	tMoonFestivalActive_Reward[3304552][1][1]["RewardItem"][1]["Attr"] = "0 2" 
	tMoonFestivalActive_Reward[3304552][1][1]["RewardItem"][1]["Num"] = 2
	tMoonFestivalActive_Reward[3304552][1][1]["Log"] = "0,0,3304552,1,12000813,2,3304549,2"
	
	tMoonFestivalActive_Reward[3304552][1][2] = {}
	tMoonFestivalActive_Reward[3304552][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304552][1][2]["ItemChance"] = 3000
	tMoonFestivalActive_Reward[3304552][1][2]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304552][1][2]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304552][1][2]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectCountry"]
	tMoonFestivalActive_Reward[3304552][1][2]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304552][1][2]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304552][1][2]["RewardItem"][1]["Id"] = 3304549
	tMoonFestivalActive_Reward[3304552][1][2]["RewardItem"][1]["Attr"] = "0 4"
	tMoonFestivalActive_Reward[3304552][1][2]["RewardItem"][1]["Num"] = 4
	tMoonFestivalActive_Reward[3304552][1][2]["Log"] = "0,0,3304552,1,12000813,2,3304549,4"
	
	tMoonFestivalActive_Reward[3304552][1][3] = {}
	tMoonFestivalActive_Reward[3304552][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward[3304552][1][3]["ItemChance"] = 2000
	tMoonFestivalActive_Reward[3304552][1][3]["RewardEffect"] = {}
	tMoonFestivalActive_Reward[3304552][1][3]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward[3304552][1][3]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectCountry"]
	tMoonFestivalActive_Reward[3304552][1][3]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304552][1][3]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304552][1][3]["RewardItem"][1]["Id"] = 3304549
	tMoonFestivalActive_Reward[3304552][1][3]["RewardItem"][1]["Attr"] = "0 6"
	tMoonFestivalActive_Reward[3304552][1][3]["RewardItem"][1]["Num"] = 6
	tMoonFestivalActive_Reward[3304552][1][3]["Log"] = "0,0,3304552,1,12000813,2,3304549,6"
	
	--过期后使用阖家团圆
	tMoonFestivalActive_Reward["Alone"] = {}
	tMoonFestivalActive_Reward["Alone"][3304526] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["LogId"] = 12000813
	tMoonFestivalActive_Reward["Alone"][3304526]["DeleteItem"] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["DeleteItem"][1] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["DeleteItem"][1]["Id"] = 3304526
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][1]["Id"] = 730001
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][1]["Attr"] = "0 2 3"
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][2] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][2]["Id"] = 3003125
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][2]["Attr"] = "0 3 3"
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][3] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][3]["Id"] = 3009000
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardStrengthValue"] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardStrengthValue"]["Value"] = 200
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardEffect"] = {}
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward["Alone"][3304526]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]

	--听故事送6个骰子
	tMoonFestivalActive_Reward["Talk"] = {}
	tMoonFestivalActive_Reward["Talk"]["LogId"] = 12000813
	tMoonFestivalActive_Reward["Talk"]["RewardItem"] = {}
	tMoonFestivalActive_Reward["Talk"]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward["Talk"]["RewardItem"][1]["Id"] = 3323106
	tMoonFestivalActive_Reward["Talk"]["RewardItem"][1]["Attr"] = "0 6"
	--过期后使用兴国安邦
	tMoonFestivalActive_Reward["Alone"][3304552] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["LogId"] = 12000813
	tMoonFestivalActive_Reward["Alone"][3304552]["DeleteItem"] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["DeleteItem"][1] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["DeleteItem"][1]["Id"] = 3304552
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][1]["Id"] = 730001
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][1]["Attr"] = "0 2 3"
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][2] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][2]["Id"] = 3003125
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][2]["Attr"] = "0 3 3"
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][3] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][3]["Id"] = 3009000
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardStrengthValue"] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardStrengthValue"]["Value"] = 200
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardEffect"] = {}
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward["Alone"][3304552]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	tMoonFestivalActive_Reward["Alone"][3304552]["Talk"] = tMoonFestivalActive_Text[3304552]["AloneUse"]
	
	--混合使用
	tMoonFestivalActive_Reward["Mix"] = {}
	tMoonFestivalActive_Reward["Mix"]["LogId"] = 12000813
	tMoonFestivalActive_Reward["Mix"]["DeleteItem"] = {}
	tMoonFestivalActive_Reward["Mix"]["DeleteItem"][1] = {}
	tMoonFestivalActive_Reward["Mix"]["DeleteItem"][1]["Id"] = 3304526
	tMoonFestivalActive_Reward["Mix"]["DeleteItem"][2] = {}
	tMoonFestivalActive_Reward["Mix"]["DeleteItem"][2]["Id"] = 3304552 
	tMoonFestivalActive_Reward["Mix"]["RewardItem"] = {}
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][1]["Id"] = 730002
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][1]["Attr"] = "0 2 3"
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][2] = {}
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][2]["Id"] = 3003126
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][2]["Attr"] = "0 6 3"
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][3] = {}
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][3]["Id"] = 3009001
	tMoonFestivalActive_Reward["Mix"]["RewardItem"][3]["Attr"] = "0 2 0 2880 1"
	tMoonFestivalActive_Reward["Mix"]["RewardStrengthValue"] = {}
	tMoonFestivalActive_Reward["Mix"]["RewardStrengthValue"]["Value"] = 1000 
	tMoonFestivalActive_Reward["Mix"]["RewardEffect"] = {}
	tMoonFestivalActive_Reward["Mix"]["RewardEffect"]["SzObj"] = tMoonFestivalActive_Data["Type"]
	tMoonFestivalActive_Reward["Mix"]["RewardEffect"]["Effect"] = tMoonFestivalActive_Data["EffectDrop"]
	
	--兑换卷兑换成年运通宝
	tMoonFestivalActive_Reward[3304527] = {}
	tMoonFestivalActive_Reward[3304527]["DeleteItem"] = {}
	tMoonFestivalActive_Reward[3304527]["DeleteItem"][1] = {}
	tMoonFestivalActive_Reward[3304527]["DeleteItem"][1]["Id"] = 3304527
	tMoonFestivalActive_Reward[3304527]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304527]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304527]["RewardItem"][1]["Id"] = 3301454
	tMoonFestivalActive_Reward[3304527]["LogId"] = 12000813
	
	--使用中秋赠点包
	tMoonFestivalActive_Reward[3304528] = {}
	tMoonFestivalActive_Reward[3304528]["LogId"] = 12000813
	tMoonFestivalActive_Reward[3304528]["DeleteItem"] = {}
	tMoonFestivalActive_Reward[3304528]["DeleteItem"][1] = {}
	tMoonFestivalActive_Reward[3304528]["DeleteItem"][1]["Id"] = 3304528
	tMoonFestivalActive_Reward[3304528]["RewardEMoneyMono"] = {}
	tMoonFestivalActive_Reward[3304528]["EMoneyMono"] = tMoonFestivalActive_Text["MsgBox"]["MoreEmoney"]
	
	--打怪获得中秋礼盒
	tMoonFestivalActive_Reward["Drop"] = {}
	tMoonFestivalActive_Reward["Drop"]["LogId"] = 12000813
	tMoonFestivalActive_Reward["Drop"]["RewardItem"] = {}
	tMoonFestivalActive_Reward["Drop"]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward["Drop"]["RewardItem"][1]["Id"] = 3304521
	tMoonFestivalActive_Reward["Drop"]["RewardItem"][1]["Attr"] = "0 1"
	
	--武器外套包
	tMoonFestivalActive_Reward[3304529] = {}
	tMoonFestivalActive_Reward[3304529]["LogId"] = 12000813
	tMoonFestivalActive_Reward[3304529]["DeleteItem"] = {}
	tMoonFestivalActive_Reward[3304529]["DeleteItem"][1] = {}
	tMoonFestivalActive_Reward[3304529]["DeleteItem"][1]["Id"] = 3304529
	tMoonFestivalActive_Reward[3304529]["RewardItem"] = {}
	tMoonFestivalActive_Reward[3304529]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[3304529]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	
	--白兔子
	tMoonFestivalActive_Reward[21113] = {}
	tMoonFestivalActive_Reward[21113][1] = {}
	tMoonFestivalActive_Reward[21113][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward[21113][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[21113][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[21113][1]["RewardItem"][1]["Id"] = 3304521
	tMoonFestivalActive_Reward[21113][1]["RewardItem"][1]["Attr"] = "0 1"


	--粉兔子
	tMoonFestivalActive_Reward[21114] = {}
	tMoonFestivalActive_Reward[21114][1] = {}
	tMoonFestivalActive_Reward[21114][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward[21114][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[21114][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[21114][1]["RewardItem"][1]["Id"] = 3304521
	tMoonFestivalActive_Reward[21114][1]["RewardItem"][1]["Attr"] = "0 3"
	
	--紫兔子
	
	tMoonFestivalActive_Reward[21115] = {}
	tMoonFestivalActive_Reward[21115][1] = {}
	tMoonFestivalActive_Reward[21115][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward[21115][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward[21115][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward[21115][1]["RewardItem"][1]["Id"] = 3304521
	tMoonFestivalActive_Reward[21115][1]["RewardItem"][1]["Attr"] = "0 2"
	
	--中秋赠点包
local tMoonFestivalActive_Probability = {} 
	tMoonFestivalActive_Probability[3304528] = {}
	tMoonFestivalActive_Probability[3304528][1] = {}
	tMoonFestivalActive_Probability[3304528][1]["ItemChanceSum"] = 10000

	tMoonFestivalActive_Probability[3304528][1][1] = {}
	tMoonFestivalActive_Probability[3304528][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][1]["ItemChance"] = 500
	tMoonFestivalActive_Probability[3304528][1][1]["Item_1"] = 1
	tMoonFestivalActive_Probability[3304528][1][1]["Start"] = 1
	tMoonFestivalActive_Probability[3304528][1][1]["End"] = 10

	tMoonFestivalActive_Probability[3304528][1][2] = {}
	tMoonFestivalActive_Probability[3304528][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][2]["ItemChance"] = 2500
	tMoonFestivalActive_Probability[3304528][1][2]["Item_1"] = 2
	tMoonFestivalActive_Probability[3304528][1][2]["Start"] = 11
	tMoonFestivalActive_Probability[3304528][1][2]["End"] = 20

	tMoonFestivalActive_Probability[3304528][1][3] = {}
	tMoonFestivalActive_Probability[3304528][1][3]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][3]["ItemChance"] = 3500
	tMoonFestivalActive_Probability[3304528][1][3]["Item_1"] = 3
	tMoonFestivalActive_Probability[3304528][1][3]["Start"] = 21
	tMoonFestivalActive_Probability[3304528][1][3]["End"] = 30

	tMoonFestivalActive_Probability[3304528][1][4] = {}
	tMoonFestivalActive_Probability[3304528][1][4]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][4]["ItemChance"] = 1800
	tMoonFestivalActive_Probability[3304528][1][4]["Item_1"] = 4
	tMoonFestivalActive_Probability[3304528][1][4]["Start"] = 31
	tMoonFestivalActive_Probability[3304528][1][4]["End"] = 40
	
	tMoonFestivalActive_Probability[3304528][1][5] = {}
	tMoonFestivalActive_Probability[3304528][1][5]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][5]["ItemChance"] = 1200
	tMoonFestivalActive_Probability[3304528][1][5]["Item_1"] = 5
	tMoonFestivalActive_Probability[3304528][1][5]["Start"] = 41
	tMoonFestivalActive_Probability[3304528][1][5]["End"] = 50
	
	tMoonFestivalActive_Probability[3304528][1][6] = {}
	tMoonFestivalActive_Probability[3304528][1][6]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][6]["ItemChance"] = 400
	tMoonFestivalActive_Probability[3304528][1][6]["Item_1"] = 6
	tMoonFestivalActive_Probability[3304528][1][6]["Start"] = 51
	tMoonFestivalActive_Probability[3304528][1][6]["End"] = 60

	tMoonFestivalActive_Probability[3304528][1][7] = {}
	tMoonFestivalActive_Probability[3304528][1][7]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Probability[3304528][1][7]["ItemChance"] = 100
	tMoonFestivalActive_Probability[3304528][1][7]["Item_1"] = 7
	tMoonFestivalActive_Probability[3304528][1][7]["Start"] = 61
	tMoonFestivalActive_Probability[3304528][1][7]["End"] = 88
	local tMoonFestivalActive_Reward1 = {}
	tMoonFestivalActive_Reward1[21113] = {}
	tMoonFestivalActive_Reward1[21113][1] = {}
	tMoonFestivalActive_Reward1[21113][1]["ItemChanceSum"] = 10000
	tMoonFestivalActive_Reward1[21113][1][1] = {}
	tMoonFestivalActive_Reward1[21113][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward1[21113][1][1]["ItemChance"] = 3000
	tMoonFestivalActive_Reward1[21113][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward1[21113][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward1[21113][1][1]["RewardItem"][1]["Id"] = 3313697
	tMoonFestivalActive_Reward1[21113][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMoonFestivalActive_Reward1[21113][1][2] = {}
	tMoonFestivalActive_Reward1[21113][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward1[21113][1][2]["ItemChance"] = 7000
	tMoonFestivalActive_Reward1[21113][1][2]["RewardItem"] = {}
	
	tMoonFestivalActive_Reward1[21114] = {}
	tMoonFestivalActive_Reward1[21114][1] = {}
	tMoonFestivalActive_Reward1[21114][1]["ItemChanceSum"] = 10000
	tMoonFestivalActive_Reward1[21114][1][1] = {}
	tMoonFestivalActive_Reward1[21114][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward1[21114][1][1]["ItemChance"] = 3000
	tMoonFestivalActive_Reward1[21114][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward1[21114][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward1[21114][1][1]["RewardItem"][1]["Id"] = 3313697
	tMoonFestivalActive_Reward1[21114][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMoonFestivalActive_Reward1[21114][1][2] = {}
	tMoonFestivalActive_Reward1[21114][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward1[21114][1][2]["ItemChance"] = 7000
	tMoonFestivalActive_Reward1[21114][1][2]["RewardItem"] = {}
	
	tMoonFestivalActive_Reward1[21115] = {}
	tMoonFestivalActive_Reward1[21115][1] = {}
	tMoonFestivalActive_Reward1[21115][1]["ItemChanceSum"] = 10000
	tMoonFestivalActive_Reward1[21115][1][1] = {}
	tMoonFestivalActive_Reward1[21115][1][1]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward1[21115][1][1]["ItemChance"] = 3000
	tMoonFestivalActive_Reward1[21115][1][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward1[21115][1][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward1[21115][1][1]["RewardItem"][1]["Id"] = 3313697
	tMoonFestivalActive_Reward1[21115][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMoonFestivalActive_Reward1[21115][1][2] = {}
	tMoonFestivalActive_Reward1[21115][1][2]["RandomItemChanceType"] = 2
	tMoonFestivalActive_Reward1[21115][1][2]["ItemChance"] = 7000
	tMoonFestivalActive_Reward1[21115][1][2]["RewardItem"] = {}
	
	local tMoonFestivalActive_Reward2 = {}
	tMoonFestivalActive_Reward2[21113] = {}
	tMoonFestivalActive_Reward2[21113][1] = {}
	tMoonFestivalActive_Reward2[21113][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward2[21113][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward2[21113][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward2[21113][1]["RewardItem"][1]["Id"] = 3313697
	tMoonFestivalActive_Reward2[21113][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tMoonFestivalActive_Reward2[21114] = {}
	tMoonFestivalActive_Reward2[21114][1] = {}
	tMoonFestivalActive_Reward2[21114][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward2[21114][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward2[21114][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward2[21114][1]["RewardItem"][1]["Id"] = 3313697
	tMoonFestivalActive_Reward2[21114][1]["RewardItem"][1]["Attr"] = "0 1"
	
	tMoonFestivalActive_Reward2[21115] = {}
	tMoonFestivalActive_Reward2[21115][1] = {}
	tMoonFestivalActive_Reward2[21115][1]["LogId"] = 12000813
	tMoonFestivalActive_Reward2[21115][1]["RewardItem"] = {}
	tMoonFestivalActive_Reward2[21115][1]["RewardItem"][1] = {}
	tMoonFestivalActive_Reward2[21115][1]["RewardItem"][1]["Id"] = 3313697
	tMoonFestivalActive_Reward2[21115][1]["RewardItem"][1]["Attr"] = "0 1"
----------------------------------逻辑部分---------------------------------------------
--使用兑换卷，寻路至兑换NPC
function MoonFestivalActive_UseLottery(nItemId)
	--存在判断
	if not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
		return NpcPosition_PathFind(tMoonFestivalActive_Data["NpcId"])
	end
	--时间外使用自动换成年运通宝3301454
	local nNum = Get_CountItemType(nItemId,0)
	if nNum == 0 then
		return
	end
	
	tMoonFestivalActive_Reward[nItemId]["DeleteItem"][1]["ItemNum"] = nNum
	tMoonFestivalActive_Reward[nItemId]["RewardItem"][1]["Attr"] = "0 "..nNum
	RewardTemplate_UseItemAndMsg(tMoonFestivalActive_Reward[nItemId])
end

--中秋赠点包
function MoonFestivalActive_UsePointGift(nItemId)
	--判断存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["GiftUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["OutTime"]) --物品超期的对话
			local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			return
		end
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tMoonFestivalActive_Data["Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["MoreEmoney"])
		return
	end
	--给赠点
	local flat,tNum = Probabil_RandomAward(tMoonFestivalActive_Probability[nItemId],1)
	local nStart = tNum[1]["tAward"][1]["Start"]
	local nEnd = tNum[1]["tAward"][1]["End"]
	local nCp = math.random(nStart,nEnd)
	tMoonFestivalActive_Reward[nItemId]["RewardEMoneyMono"]["Value"] = nCp
	RewardTemplate_UseItemAndMsg(tMoonFestivalActive_Reward[nItemId])
end
--中秋月饼/礼盒的使用
function MoonFestivalActive_UseMoonCake(nItemId)
--判断存在
	if  not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if nItemId == tMoonFestivalActive_Data[3304521] then
		if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"][nItemId]) --物品超期的对话
				local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
				Sys_SaveActionFestivalLog(sLog)
			end
			return
		end
	end
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["GiftUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"][nItemId]) --物品超期的对话
			local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	local nSpace = RewardTemplate_GetRandomSpace(tMoonFestivalActive_Reward[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tMoonFestivalActive_Text["MsgBox"]["Spece"],nSpace)) -- 提示背包空间不足
	end
	--月饼读条，不是月饼不读条
	if nItemId ~= tMoonFestivalActive_Data[3304521] then
		local nUserId = Get_UserId()
		User_SetExplore(2,tMoonFestivalActive_Text["MsgBox"]["EatMoon"],100,"MoonFestivalActive_EatMoonCake</N>"..nItemId.."</N>"..nUserId)
	else
		 if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			 RewardTemplate_NewRandom(tMoonFestivalActive_Reward[nItemId],1)
		 end
		--RewardTemplate_RandomReward(tMoonFestivalActive_Reward[nItemId],1)
	end
end
function MoonFestivalActive_EatMoonCake(nItemId,nUserId)
	--判断存在
	if not Item_ChkItem (nItemId,nil,nil,nUserId) then
		return
	end
	local sUserName = Get_UserName(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelItem(nItemId,nil,nil,nUserId) then 
		RewardTemplate_NewRandomNoTip(tMoonFestivalActive_Reward[nItemId],1,nUserId)
		Sys_SystemBroadcast(string.format(tMoonFestivalActive_Text["MsgBox"]["Moon"],sUserName,sItemName))
	end
end

--阖家团圆/兴国安邦使用
function MoonFestivalActive_FamilyReunion(nItemId)
	--判断存在
	if  not Item_ChkItem(nItemId) then
		return
	end
	--判断活动时间。不在活动时间内。则跳转
	if nItemId == tMoonFestivalActive_Data["Family"] then
		if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
			if not Sys_ChkFullTime(tMoonFestivalActive_Data["CountryUseTime"]) then
				return MoonFestivalActive_ChooseFamily(nItemId)
			end
		end
	end
	--判断今日有没有开启过
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][nItemId]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text201"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text202"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text203"])
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		Sys_DialogOption(tMoonFestivalActive_Text[nItemId]["Option202"],"</F>MoonFestivalActive_UseMoonGift</N>"..nItemId)
	else
		Sys_DialogOption(tMoonFestivalActive_Text[nItemId]["Option201"],"</F>MoonFestivalActive_UseMoonGift</N>"..nItemId)
	end
	Sys_DialogOption(tMoonFestivalActive_Text[nItemId]["Option203"],"</F>MoonFestivalActive_CheckReward</N>"..nItemId)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

--活动期间查看活动后的奖励
function MoonFestivalActive_CheckReward(nItemId)
	--判断存在
	if  not Item_ChkItem(nItemId) then
		return
	end
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text101"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text102"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text103"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text104"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text105"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text106"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text107"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text108"])
	Sys_DialogOption(tMoonFestivalActive_Text[nItemId]["Option103"],"</F>MoonFestivalActive_FamilyReunion</N>"..nItemId)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

function MoonFestivalActive_UseMoonGift(nItemId)
	--判断存在
	if  not Item_ChkItem(nItemId) then
		return
	end
	--判断活动时间。不在活动时间内。则跳转
	if nItemId == tMoonFestivalActive_Data["Family"] then
		if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
			if not Sys_ChkFullTime(tMoonFestivalActive_Data["CountryUseTime"]) then
				return MoonFestivalActive_ChooseFamily(nItemId)
			else
				Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["Time"])
				return
			end
		end
	end
	
	--打掩码，给礼物
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][nItemId]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return User_TalkChannel2005(tMoonFestivalActive_Text[nItemId]["MoreOpen"])
	end
	
	--背包判断
	local nSpace = RewardTemplate_GetRandomSpace(tMoonFestivalActive_Reward[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		return User_TalkChannel2005(string.format(tMoonFestivalActive_Text[nItemId]["Space"],nSpace)) -- 提示背包空间不足
	end
	
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	--RewardTemplate_NewRandom(tMoonFestivalActive_Reward[nItemId],1)
	local tReward = RewardTemplate_NewRandomNoTip(tMoonFestivalActive_Reward[nItemId], 1)
	local nItemIdGet = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	local nNum = tReward[1]["tAward"][1]["RewardItem"][1]["Num"]
	local sItemName = Get_ItemtypeName(nItemIdGet)
	Sys_MsgBox(string.format(tMoonFestivalActive_Text[3304526]["GetGift"],nNum,sItemName))
	
	local sUserName = Get_UserName()
	Sys_SystemBroadcast(string.format(tMoonFestivalActive_Text["Broadcast"], sUserName))
	
	
end

function MoonFestivalActive_GotoFindBox(nIndex)
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	if SpecialServer_ChkNoGiftServer() then
		if nUserMapId == 1036 then
			Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["Npc3"],"MoonFestivalActive_FindNpc","NULL",nUserId)
		else
			Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["Npc4"])
		end
		return
	end
	if nUserMapId == 1002 then
		
		Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["Npc1"],"MoonFestivalActive_FindNpc","NULL",nUserId)
	else
		Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["Npc2"])
	end
	
end

function MoonFestivalActive_FindNpc()
	local nPosX = tMoonFestivalActive_Data["Pos"]["PosX"]
	local nPosY = tMoonFestivalActive_Data["Pos"]["PosY"]
	local nMapId = tMoonFestivalActive_Data["Pos"]["MapId"]
	local nPosX2 = tMoonFestivalActiveNoGift_Data["Pos"]["PosX"]
	local nPosY2 = tMoonFestivalActiveNoGift_Data["Pos"]["PosY"]
	local nMapId2 = tMoonFestivalActiveNoGift_Data["Pos"]["MapId"]
	if SpecialServer_ChkNoGiftServer() then		
		Sys_GotoSomeWhere(nPosX2, nPosY2, nMapId2, 0)
		return
	end
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
end

--过期后使用阖家团圆/兴国安邦
function MoonFestivalActive_ChooseFamily(nItemId)
	--判断存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["UseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["OutTime"]) --删除物品
			local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text101"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text102"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text103"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text104"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text105"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text106"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text107"])
	Sys_DialogText(tMoonFestivalActive_Text[nItemId]["Text108"])
	Sys_DialogOption(tMoonFestivalActive_Text[nItemId]["Option101"],"</F>MoonFestivalActive_AloneUse</N>"..nItemId)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end
--混合使用
-- function MoonFestivalActive_MixUse(nItemId)
	-- --时间判断
	-- if not Sys_ChkFullTime(tMoonFestivalActive_Data["UseTime"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["OutTime"]) --删除物品
			-- local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			-- Sys_SaveActionFestivalLog(sLog)
		-- end
		-- return
	-- end
	
	-- local nMixItemId = tMoonFestivalActive_Data["MixItem"]
	-- if nItemId == tMoonFestivalActive_Data["MixItem"] then
		-- nMixItemId = tMoonFestivalActive_Data["Family"]
	-- end
	
	-- --判断存在
	-- local sItemName = Get_ItemtypeName(nItemId)
	-- local sItemMaxName = Get_ItemtypeName(nMixItemId)
	-- if not Item_ChkItem(nItemId) then
		-- return Sys_MsgBox(string.format(tMoonFestivalActive_Text["MsgBox"]["MaxItem"],sItemName))
	-- end
	
	-- if not Item_ChkItem(nMixItemId) then
		-- return Sys_MsgBox(string.format(tMoonFestivalActive_Text["MsgBox"]["MaxItem"],sItemMaxName))
	-- end
	
	-- local nSpaceMix = RewardTemplate_GetRewardSpace(tMoonFestivalActive_Reward["Mix"])
	-- if not User_CheckLeftSpace(nSpaceMix) then
		-- return User_TalkChannel2005(string.format(tMoonFestivalActive_Text[nItemId]["Space"],nSpaceMix)) -- 提示背包空间不足
	-- end
	-- RewardTemplate_UseItemAndMsg(tMoonFestivalActive_Reward["Mix"])
-- end

--单独使用
function MoonFestivalActive_AloneUse(nItemId)
	--判断存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["UseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["OutTime"]) --删除物品
			local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	
	local nSpaceAlone = RewardTemplate_GetRewardSpace(tMoonFestivalActive_Reward["Alone"][nItemId])
	if not User_CheckLeftSpace(nSpaceAlone) then
		return User_TalkChannel2005(string.format(tMoonFestivalActive_Text[nItemId]["Space"],nSpaceAlone)) -- 提示背包空间不足
	end
	--RewardTemplate_UseItemAndMsg(tMoonFestivalActive_Reward["Alone"][nItemId])
	RewardTemplate_UseItem(tMoonFestivalActive_Reward["Alone"][nItemId])
end

--武器外套包
function MoonFestivalActive_ChooseWeapon(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["GiftUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
			User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["OutTime"])
			local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	
	local sOptionFunc101 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>350081"
	local sOptionFunc102 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>350070"
	local sOptionFunc103 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>360123"
	local sOptionFunc104 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>360174"
	local sOptionFunc105 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>360163"
	local sOptionFunc106 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>360136"
	local sOptionFunc107 = "</F>MoonFestivalActive_OpenWeapon</N>3304529</N>360006"
	local sOptionFunc108 = ""
	Sys_DialogText(tMoonFestivalActive_Text[3304529]["Text101"])
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option101"],sOptionFunc101)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option102"],sOptionFunc102)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option103"],sOptionFunc103)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option104"],sOptionFunc104)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option105"],sOptionFunc105)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option106"],sOptionFunc106)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option107"],sOptionFunc107)
	Sys_DialogOption(tMoonFestivalActive_Text[3304529]["Option108"],sOptionFunc108)
	Sys_DialogItemFace(nItemId)
	Sys_DialogEnd()
end

function MoonFestivalActive_OpenWeapon(nItemId,nWeapon)
	if not Item_ChkItem(nItemId) then
		return
	end
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["GiftUseTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tMoonFestivalActive_Text["MsgBox"]["OutTime"]) --删除物品
			local sLog = string.format(tMoonFestivalActive_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	--背包判断
	if not User_CheckLeftSpace(1) then
		return User_TalkChannel2005(string.format(tMoonFestivalActive_Text["MsgBox"]["Spece"],1)) -- 提示背包空间不足
	end
	tMoonFestivalActive_Reward[nItemId]["RewardItem"][1]["Id"] = nWeapon
	RewardTemplate_UseItemAndMsg(tMoonFestivalActive_Reward[nItemId])
end

--怪兽掉落
function MoonFestivalActive_MonsterDrop()
	
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"])  then
		return
	end
	
	-- --判断获取数量
	local nSumEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nSumType = tMoonFestivalActive_Data["Stc"]["DataType"][2]
	-- --隔天清零
	if Task_StcInterval(nSumEvent,nSumType,1,4) then
		Task_SetStatistic(nSumEvent,nSumType,0,1)
		Task_SetStcTimestamp(nSumEvent,nSumType,0)
	end
	--达到20个
	if Task_ChkStcValue(nSumEvent,nSumType,"==",20) then
		Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["KillMoster"])
		Task_AddStatistic(nSumEvent,nSumType,1,1)
		Task_SetStcTimestamp(nSumEvent,nSumType,0)
		return
	end
	if Task_ChkStcValue(nSumEvent,nSumType,">",20) then
		return
	end
	--背包空间判断
	if not User_CheckLeftSpace(1) then
		return
	end
	
	if Sys_Random(tMoonFestivalActive_Data["MonsterDropChance"],10000) then
		Task_AddStatistic(nSumEvent,nSumType,1,1)
		Task_SetStcTimestamp(nSumEvent,nSumType,0)
		RewardTemplate_Reward(tMoonFestivalActive_Reward["Drop"])
		User_EffectAdd(tMoonFestivalActive_Data["Type"],tMoonFestivalActive_Data["EffectDrop"])
	end
end

--打开兑换商店
function MoonFestivalActive_ExchangeShop(nNpcId)
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-4")
	end
	User_OpenExchangeShop(nNpcId)
end

--随机挑选一个NPC发放礼物
function MoonFestivalActive_ChooseNpc()
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
		return
	end
	local nNpcId = math.random(tMoonFestivalActive_Data[21113],tMoonFestivalActive_Data[21115])
	Sys_SetSynaGlobalData0(tMoonFestivalActive_Data["Global"],nNpcId)
end
--给礼物。移动位置
function MoonFestivalActive_GiveAndMove(nNpcId)
	--时间判断
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
	end
	
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][1]
	local nEvent2 = tMoonFestivalActive_Data["Stc"]["Gift"]["EventType"]
	local nType2 = tMoonFestivalActive_Data["Stc"]["Gift"]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_ChkStcValue(nEvent2,nType2,"==",0) then
		local nFlag,tReward = Probabil_RandomAward(tMoonFestivalActive_Reward1[nNpcId],1)
			if tReward[1]["tAward"][1]["RewardItem"][1] ~= nil then 
				if Task_SetStatistic(nEvent2,nType2,1,1) then
					Task_SetStcTimestamp(nEvent2,nType2,0)
					RewardTemplate_Reward(tMoonFestivalActive_Reward2[nNpcId][1])
				end
			end
		end
		if Task_SetStatistic(nEvent,nType,1,1) then
			Task_SetStcTimestamp(nEvent,nType,0)
			RewardTemplate_Reward(tMoonFestivalActive_Reward[nNpcId][1])
			User_EffectAdd(tMoonFestivalActive_Data["Type"],tMoonFestivalActive_Data["EffectGet"])
			Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["RibbitOver"])
		end
	end

	 MoonFestivalActive_MoveNpc(nNpcId)
end
--移动NPC
function MoonFestivalActive_MoveNpc(nNpcId)
	local nRibbitId = tMoonFestivalActive_Data[21114]
	local nOhterRibbitId = tMoonFestivalActive_Data[21115]
	
	if nNpcId == tMoonFestivalActive_Data[21114] then
		nRibbitId = tMoonFestivalActive_Data[21113]
		nOhterRibbitId = tMoonFestivalActive_Data[21115]
	elseif nNpcId == tMoonFestivalActive_Data[21115] then
		nRibbitId = tMoonFestivalActive_Data[21113]
		nOhterRibbitId = tMoonFestivalActive_Data[21114]
	end
	
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	local nRibbitPosX = Get_NpcPositionX(nRibbitId)
	local nOhterRibbitPosX = Get_NpcPositionX(nOhterRibbitId)
	
	local nNum = math.random(1,tMoonFestivalActive_Data["SumPos"])
	
	if tMoonFestivalActive_Data["PosX"][nNum] ~= nNpcPosX and tMoonFestivalActive_Data["PosX"][nNum] ~= nRibbitPosX and tMoonFestivalActive_Data["PosX"][nNum] ~= nOhterRibbitPosX then
		Npc_MoveNpcPos(nNpcId,tMoonFestivalActive_Data["MapId"],tMoonFestivalActive_Data["PosX"][nNum],tMoonFestivalActive_Data["PosY"][nNum])
		return
	else
		MoonFestivalActive_MoveNpc(nNpcId)
	end
end
--听故事拿月饼兑换券
function MoonFestivalActive_TalkGetTicket(nNpcId,nNpcId2,nNpcId3)
	local nEvent = tMoonFestivalActive_Data["Stc"]["Talk"]["EventType"]
	local nData = tMoonFestivalActive_Data["Stc"]["Talk"]["DataType"]
--掩码判断,活动期间只一次
	if Task_ChkStcValue(nEvent,nData,"==",1) then
		MoonFestivalActive_LinkNpc(nNpcId,nNpcId2,nNpcId3)
		return
	end
--背包判断
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["NoSpace"])
		return
	end
	if Task_SetStatistic(nEvent,nData,1,1) then
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_Reward(tMoonFestivalActive_Reward["Talk"])
		Sys_MsgBox(tMoonFestivalActive_Text["MsgBox"]["Talk"])
		User_OpenVideo(960,10)
	end
end

function MoonFestivalActive_LinkNpc(nNpcId,nNpcId2,nNpcId3)
	if Sys_ChkFullTime(tMoonFestivalActive_Data["BeforeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][1]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0) then
		MoonFestivalActive_ChooseNpc()
	end
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[nNpcId2]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[nNpcId3]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (not User_CheckLeftSpace(1)) then
		LinkNpcGossipFunc_New(nNpcId,"1-5")
		return
	end
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-6")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-7")
end
-- 
function MoonFestivalActive_OpenVideo()
	if not Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) then
		return
	end
	User_OpenVideo(960,10)
end



----------------------------------NPC部分---------------------------------------------
tNpcFace[2109] = 47
tNpcGossip[24869]= tNpcGossip[24869] or DefaultNpc:new{}
tNpcGossip[24869]["OptionHidden"] = 1
tNpcGossip[24869]["DialogueText"] = tMoonFestivalActive_Text[24869]

tNpcGossip[24869]["Text1-1"] = {101,102,103,104,105}
tNpcGossip[24869]["tOption1-1"] = {101}
tNpcGossip[24869]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["BeforeTime"])
end

tNpcGossip[24869]["Text1-2"] = {201,202,203,204,205,206,207,208}
tNpcGossip[24869]["tOption1-2"] = {201}
tNpcGossip[24869]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and ( not User_JudgeLevelAndMetempsychosis(tMoonFestivalActive_Data["Level"],tMoonFestivalActive_Data["Metempsychosis"]))
end

tNpcGossip[24869]["Text1-3"] = {301,302,303,304,305,306,307,308}
tNpcGossip[24869]["tOption1-3"] = {301}
tNpcGossip[24869]["OptionFunc301"] = "MoonFestivalActive_ExchangeShop</N>24869"
tNpcGossip[24869]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tMoonFestivalActive_Data["Level"],tMoonFestivalActive_Data["Metempsychosis"])
end

tNpcGossip[24869]["Text1-4"] = {401,402,403}
tNpcGossip[24869]["tOption1-4"] = {401}

--白兔子
tNpcFace[4482] = 192
tNpcGossip[21113]= tNpcGossip[21113] or DefaultNpc:new{}
tNpcGossip[21113]["OptionHidden"] = 1
tNpcGossip[21113]["DialogueText"] = tMoonFestivalActive_Text[21113]

tNpcGossip[21113]["Text1-1"] = {101,102,103}
tNpcGossip[21113]["tOption1-1"] = {101,102}
tNpcGossip[21113]["OptionFunc102"] = "MoonFestivalActive_OpenVideo"
tNpcGossip[21113]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["BeforeTime"])
end

tNpcGossip[21113]["Text1-2"] = {201,202,203}
tNpcGossip[21113]["tOption1-2"] = {201,102}
tNpcGossip[21113]["ChkFunc1-2"]= function()
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][1]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Task_ChkStcValue(nEvent,nType,">=",1)
end

tNpcGossip[21113]["Text1-3"] = {301,302,303}
tNpcGossip[21113]["tOption1-3"] = {301,102}
tNpcGossip[21113]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0 then
		MoonFestivalActive_ChooseNpc()
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[21114])
end

tNpcGossip[21113]["Text1-4"] = {301,302,304}
tNpcGossip[21113]["tOption1-4"] = {301,102}
tNpcGossip[21113]["ChkFunc1-4"]= function()
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0 then
		MoonFestivalActive_ChooseNpc()
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[21115])
end

tNpcGossip[21113]["Text1-5"] = {401,402,403}
tNpcGossip[21113]["tOption1-5"] = {401}
tNpcGossip[21113]["ChkFunc1-5"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (not User_CheckLeftSpace(1))
end

tNpcGossip[21113]["Text1-6"] = {501,502,503}
tNpcGossip[21113]["tOption1-6"] = {501,102}
tNpcGossip[21113]["OptionFunc501"] = "MoonFestivalActive_GiveAndMove</N>21113"
tNpcGossip[21113]["ChkFunc1-6"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"])
end

tNpcGossip[21113]["Text1-7"] = {601,602,603}
tNpcGossip[21113]["tOption1-7"] = {601}

tNpcGossip[21113]["Text1-8"] = {104,105,106,107}
tNpcGossip[21113]["tOption1-8"] = {103}

--粉兔子
tNpcFace[4483] = 193
tNpcGossip[21114]= tNpcGossip[21114] or DefaultNpc:new{}
tNpcGossip[21114]["OptionHidden"] = 1
tNpcGossip[21114]["DialogueText"] = tMoonFestivalActive_Text[21114]

tNpcGossip[21114]["Text1-1"] = {101,102,103}
tNpcGossip[21114]["tOption1-1"] = {101,102}
tNpcGossip[21114]["OptionFunc102"] = "MoonFestivalActive_OpenVideo"
tNpcGossip[21114]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["BeforeTime"])
end

tNpcGossip[21114]["Text1-2"] = {201,202,203}
tNpcGossip[21114]["tOption1-2"] = {201,102}
tNpcGossip[21114]["ChkFunc1-2"]= function()
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][1]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Task_ChkStcValue(nEvent,nType,">=",1)
end

tNpcGossip[21114]["Text1-3"] = {301,302,303}
tNpcGossip[21114]["tOption1-3"] = {201,102}
tNpcGossip[21114]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0 then
		MoonFestivalActive_ChooseNpc()
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[21113])
end

tNpcGossip[21114]["Text1-4"] = {301,302,304}
tNpcGossip[21114]["tOption1-4"] = {201,102}
tNpcGossip[21114]["ChkFunc1-4"]= function()
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0 then
		MoonFestivalActive_ChooseNpc()
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[21115])
end

tNpcGossip[21114]["Text1-5"] = {401,402,403}
tNpcGossip[21114]["tOption1-5"] = {401}
tNpcGossip[21114]["ChkFunc1-5"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (not User_CheckLeftSpace(1))
end

tNpcGossip[21114]["Text1-6"] = {501,502,503}
tNpcGossip[21114]["tOption1-6"] = {501,102}
tNpcGossip[21114]["OptionFunc501"] = "MoonFestivalActive_GiveAndMove</N>21114"
tNpcGossip[21114]["ChkFunc1-6"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"])
end

tNpcGossip[21114]["Text1-7"] = {601,602,603}
tNpcGossip[21114]["tOption1-7"] = {601}
tNpcGossip[21114]["Text1-8"] = {104,105,106,107}
tNpcGossip[21114]["tOption1-8"] = {103}

--紫兔子
tNpcFace[33] = 192
tNpcGossip[21115]= tNpcGossip[21115] or DefaultNpc:new{}
tNpcGossip[21115]["OptionHidden"] = 1
tNpcGossip[21115]["DialogueText"] = tMoonFestivalActive_Text[21115]

tNpcGossip[21115]["Text1-1"] = {101,102,103}
tNpcGossip[21115]["tOption1-1"] = {101,102}
tNpcGossip[21115]["OptionFunc102"] = "MoonFestivalActive_OpenVideo"
tNpcGossip[21115]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["BeforeTime"])
end

tNpcGossip[21115]["Text1-2"] = {201,202,203}
tNpcGossip[21115]["tOption1-2"] = {201,102}
tNpcGossip[21115]["ChkFunc1-2"]= function()
	local nEvent = tMoonFestivalActive_Data["Stc"]["EventType"]
	local nType = tMoonFestivalActive_Data["Stc"]["DataType"][1]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Task_ChkStcValue(nEvent,nType,">=",1)
end

tNpcGossip[21115]["Text1-3"] = {301,302,303}
tNpcGossip[21115]["tOption1-3"] = {301,102}
tNpcGossip[21115]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0 then
		MoonFestivalActive_ChooseNpc()
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[21113])
end

tNpcGossip[21115]["Text1-4"] = {301,302,304}
tNpcGossip[21115]["tOption1-4"] = {301,102}
tNpcGossip[21115]["ChkFunc1-4"]= function()
	if Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == 0 then
		MoonFestivalActive_ChooseNpc()
	end
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (Get_SysDynaGlobalData0(tMoonFestivalActive_Data["Global"]) == tMoonFestivalActive_Data[21114])
end

tNpcGossip[21115]["Text1-5"] = {401,402,403}
tNpcGossip[21115]["tOption1-5"] = {401}
tNpcGossip[21115]["ChkFunc1-5"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"]) and (not User_CheckLeftSpace(1))
end

tNpcGossip[21115]["Text1-6"] = {501,502,503}
tNpcGossip[21115]["tOption1-6"] = {501,102}
tNpcGossip[21115]["OptionFunc501"] = "MoonFestivalActive_GiveAndMove</N>21115"
tNpcGossip[21115]["ChkFunc1-6"]= function()
	return Sys_ChkFullTime(tMoonFestivalActive_Data["ActivityTime"])
end

tNpcGossip[21115]["Text1-7"] = {601,602,603}
tNpcGossip[21115]["tOption1-7"] = {601}

tNpcGossip[21115]["Text1-8"] = {104,105,106,107}
tNpcGossip[21115]["tOption1-8"] = {103}
---------------------------------物品部分---------------------------------------------


tItem[3304521] = tItem[3304521] or {}
tItem[3304521]["Function"] = function(nItemId,sItemName)
	MoonFestivalActive_UseMoonCake(nItemId)
end
tItem[3304522] = tItem[3304521]
tItem[3304523] = tItem[3304521]
tItem[3304524] = tItem[3304521]
tItem[3304525] = tItem[3304521]

tItem[3304528] = tItem[3304528] or {}
tItem[3304528]["Function"] = function(nItemId,sItemName)
	MoonFestivalActive_UsePointGift(nItemId)
end

--武器包
tItemFace[3304529] = 551
tItem[3304529] = tItem[3304529] or {}
tItem[3304529]["Function"] = function(nItemId,sItemName)
	MoonFestivalActive_ChooseWeapon(nItemId)
end
--阖家团圆
tItemFace[3304526] = 804
tItem[3304526] = tItem[3304526] or {}
tItem[3304526]["Function"] = function(nItemId,sItemName)
	MoonFestivalActive_FamilyReunion(nItemId)
end
--兴国安邦
tItemFace[3304552] = 788
tItem[3304552] = tItem[3304552] or {}
tItem[3304552]["Function"] = function(nItemId,sItemName)
	MoonFestivalActive_FamilyReunion(nItemId)
end

--兑换卷
tItem[3304527] = tItem[3304527] or {}
tItem[3304527]["Function"] = function(nItemId,sItemName)
	MoonFestivalActive_UseLottery(nItemId)
end

---------------------------------陷阱部分---------------------------------------------

---------------------------------怪物部分---------------------------------------------
 local tMoonFestivalActive_KillMonster = {}
 tMoonFestivalActive_KillMonster["ActivityTime"] = tMoonFestivalActive_Data["ActivityTime"]
 tMoonFestivalActive_KillMonster["Function"] = MoonFestivalActive_MonsterDrop
 -- tMoonFestivalActive_KillMonster["Area"] = {1,2,3,4,5,8}
 table.insert(tMonsterDrop_AreaLoad,tMoonFestivalActive_KillMonster)

-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],MoonFestivalActive_ChooseNpc)

--激情服怪物掉落
local tMoonFestivalActive_KillMonster_NoGift = {}
	tMoonFestivalActive_KillMonster_NoGift["Function"] = MoonFestivalActive_MonsterDrop
	tMoonFestivalActive_KillMonster_NoGift["ActivityTime"] =tMoonFestivalActive_Data["ActivityTime"]
	tMoonFestivalActive_KillMonster_NoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tMoonFestivalActive_KillMonster_NoGift)

local tMoonFestivalActive_ChooseNpc = {}
	tMoonFestivalActive_ChooseNpc[1] = {}
	tMoonFestivalActive_ChooseNpc[1]["TimeType"] = 4
	tMoonFestivalActive_ChooseNpc[1]["Time"] = "00:00 00:00"
	tMoonFestivalActive_ChooseNpc[1]["Func"] = MoonFestivalActive_ChooseNpc
table.insert(tSystemTime_InitialData,tMoonFestivalActive_ChooseNpc[1])


 local tMoonFestivalActive_ChooseNpc = {}
 tMoonFestivalActive_ChooseNpc["ActivityTime"] = tMoonFestivalActive_Data["ActivityTime"]
 tMoonFestivalActive_ChooseNpc["Type"] = 2
 tMoonFestivalActive_ChooseNpc["TimeType"] = 4
 tMoonFestivalActive_ChooseNpc["Time"] = "00:00 00:01"
 tMoonFestivalActive_ChooseNpc["Func"] = MoonFestivalActive_ChooseNpc
table.insert(tSystemTime_InitialData,tMoonFestivalActive_ChooseNpc)
