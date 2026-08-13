------------------------------------------------------------------------------------
--Name：      190202[简体征服][活动脚本]3月老玩家回归制作
--Creator:    江宇君
--Created:    2019/02/02
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            180710[简体征服][活动脚本]烦请制作7月暑假促活活动线上部分
--Creator:      陈莺
--Created:     2018/07/10
------------------------------------------------------------------------------------
-- 任务需求：
-- 2019.4.23复用修改
-- 等级限制：1转180
-- 进入副本物品：更改物品id，进入副本后不删除物品，每日进一次副本
-- 修改小怪和boss掉落的物品
-- 新增6个发奖action：玩家光环礼包*4、1:8聚宝盆、进入副本道具
-- 1:8聚宝盆emoenylog	350 22147（聚宝盆使用次数及花费天石） stc：19400
-- 聚宝盆使用时间 5.9-6.1
--内嵌网页改为弹出浏览器跳转线下页面 网址https://coevent.99.com/gloryreturn1905/

----------------------------------表配置部分--------------------------------------------
local tSummerSalesPromotion_Data = {}
	tSummerSalesPromotion_Data["Bef_Time"] = tActivityTime["SummerSalesPromotion"]["Bef_Time"]
	tSummerSalesPromotion_Data["Now_Time"] = tActivityTime["SummerSalesPromotion"]["Now_Time"]
	tSummerSalesPromotion_Data["Open_Time"] = "00:00 23:59"
	tSummerSalesPromotion_Data["Web"] = "https://coevent.99.com/gloryreturn2007/" --2020.05.18复用修改网址
	tSummerSalesPromotion_Data["Level"] = 80 -- 2020.04.13复用修改 等级限制1转80
	tSummerSalesPromotion_Data["Metempsychosis"] = 1 -- 2020.04.13复用修改 等级限制1转80（等级限制1转180
	tSummerSalesPromotion_Data["ItemType"] = 3309650  --龙牙 2020.02.26复用修改 进入副本后删除物品
	-- tSummerSalesPromotion_Data["ItemType"] = 3312298  --副本通行证 -- 2019.4.23复用修改（进入副本后不删除物品，每日只能用一次
	tSummerSalesPromotion_Data["Instancetype"] = 186

	tSummerSalesPromotion_Data["MonsterId"] = 3478  --小怪
	tSummerSalesPromotion_Data["BossId"] = 3479  --boss
	tSummerSalesPromotion_Data["GenId"] = 24889 
	tSummerSalesPromotion_Data["MonGenId"] = 25149
	tSummerSalesPromotion_Data["Time"] = 180  --boss出现时间 
	
	tSummerSalesPromotion_Data["Map"] = 1002   --双龙城地图
	tSummerSalesPromotion_Data["MapNoGift"] = 1036   --双龙城地图
	
	tSummerSalesPromotion_Data["MonsterRadom"] = {}  --小怪掉落概率
	tSummerSalesPromotion_Data["MonsterRadom"][1] = 200
	tSummerSalesPromotion_Data["MonsterRadom"][2] = 1000
	tSummerSalesPromotion_Data["Num"] = {}  --队伍中符合条件的人数（今日是否有玩家打过副本
	tSummerSalesPromotion_Data["MapId"] = {}  --副本id
	tSummerSalesPromotion_Data["UserLevel"] = {}  --队伍中等级不符合的人数
	tSummerSalesPromotion_Data["Position"] = {}  --队伍中等级不符合的人数
	tSummerSalesPromotion_Data["GoIn"] = {}  --队伍中等级不符合的人数
	tSummerSalesPromotion_Data["Pos"] = {}  --队伍中不在指定地点的人数

	tSummerSalesPromotion_Data["BossTime"] = {}  --刷boss
	
	tSummerSalesPromotion_Data["Range"] = {}
	tSummerSalesPromotion_Data["Range"]["PosX1"] = 323
	tSummerSalesPromotion_Data["Range"]["PosX2"] = 307
	tSummerSalesPromotion_Data["Range"]["PosY1"] = 454
	tSummerSalesPromotion_Data["Range"]["PosY2"] = 434
	
	tSummerSalesPromotion_Data["RangeNogift"] = {}
	tSummerSalesPromotion_Data["RangeNogift"]["PosX1"] = 236
	tSummerSalesPromotion_Data["RangeNogift"]["PosX2"] = 228
	tSummerSalesPromotion_Data["RangeNogift"]["PosY1"] = 249
	tSummerSalesPromotion_Data["RangeNogift"]["PosY2"] = 239
	
	--2020.02.26复用新增 区分服务器 激情服绿色服不上
	tSummerSalesPromotion_Data["Global"] = {} 
	tSummerSalesPromotion_Data["Global"]["Id"] = 54273 
	tSummerSalesPromotion_Data["Global"]["Data0"] = 1 -- data0 = 1表示不上
	
	
-- 通神丹（赠）			1
-- 微光星陨石*1			2
-- 10点气力值补充包		3
-- 万能神纹精粹*1		4

	tSummerSalesPromotion_Data["MonsterNum"] = {}  --副本id
	
local tSummerSalesPromotion_Stc = {}
	--组队进入掩码
	tSummerSalesPromotion_Stc[1] = {}
	tSummerSalesPromotion_Stc[1]["EventType"] = 179
	tSummerSalesPromotion_Stc[1]["DataType"] = 39
	tSummerSalesPromotion_Stc[1]["Data"] = 1
	
	--玩家每日可参加一次
	tSummerSalesPromotion_Stc[2] = {}
	tSummerSalesPromotion_Stc[2]["EventType"] = 179
	tSummerSalesPromotion_Stc[2]["DataType"] = 41
	tSummerSalesPromotion_Stc[2]["Data"] = 1
	
local tSummerSalesPromotion_Reward = {}
	tSummerSalesPromotion_Reward["Get"] = {}
	tSummerSalesPromotion_Reward["Get"]["LogId"] = 12001114
	tSummerSalesPromotion_Reward["Get"]["RewardItem"] = {}
	tSummerSalesPromotion_Reward["Get"]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward["Get"]["RewardItem"][1]["Id"] = 3309650 --2020.02.26复用修改 龙牙 --副本通行证
	tSummerSalesPromotion_Reward["Get"]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSalesPromotion_Reward["Get"]["RewardEffect"] = {}
	tSummerSalesPromotion_Reward["Get"]["RewardEffect"]["SzObj"] = "self"
	tSummerSalesPromotion_Reward["Get"]["RewardEffect"]["Effect"] = "angelwing"
-- 微光星陨石包
	tSummerSalesPromotion_Reward[3310099] = {}
	tSummerSalesPromotion_Reward[3310099]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3310099]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3310099]["DeleteItem"][1]["Id"] = 3310099
	tSummerSalesPromotion_Reward[3310099]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3310099]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3310099]["RewardItem"][1]["Id"] = 3009000     --微光星陨石*1
	tSummerSalesPromotion_Reward[3310099]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSummerSalesPromotion_Reward[3310099]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3310099]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3310099]["LogId"] = 12001114

-- 明亮星陨石包
	tSummerSalesPromotion_Reward[3310100] = {}
	tSummerSalesPromotion_Reward[3310100]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3310100]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3310100]["DeleteItem"][1]["Id"] = 3310100
	tSummerSalesPromotion_Reward[3310100]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3310100]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3310100]["RewardItem"][1]["Id"] = 3009001     --明亮星陨石*1
	tSummerSalesPromotion_Reward[3310100]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tSummerSalesPromotion_Reward[3310100]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3310100]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3310100]["LogId"] = 12001114
	
-- 万能神纹精粹包
	tSummerSalesPromotion_Reward[3309942] = {}
	tSummerSalesPromotion_Reward[3309942]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3309942]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3309942]["DeleteItem"][1]["Id"] = 3309942
	tSummerSalesPromotion_Reward[3309942]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3309942]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3309942]["RewardItem"][1]["Id"] = 4060001     --万能神纹精粹*1
	tSummerSalesPromotion_Reward[3309942]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSalesPromotion_Reward[3309942]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3309942]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3309942]["LogId"] = 12001114
	
-- 回归尊享礼包 15级极品	无洞	无追加	无神佑
	tSummerSalesPromotion_Reward[3320124] = {}
	tSummerSalesPromotion_Reward[3320124]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3320124]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3320124]["DeleteItem"][1]["Id"] = 3320124
	tSummerSalesPromotion_Reward[3320124]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][1]["Id"] = 681029
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][1]["Attr"] = "0 1 3"
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][2] = {}
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][2]["Id"] = 680029
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][2]["Attr"] = "0 1 3"
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][3] = {}
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][3]["Id"] = 102009
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][3]["Attr"] = "0 1 3"
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][4] = {}
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][4]["Id"] = 147009
	tSummerSalesPromotion_Reward[3320124]["RewardItem"][4]["Attr"] = "0 1 3"
	tSummerSalesPromotion_Reward[3320124]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320124]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320124]["LogId"] = 12001114
	
-- 王者归来礼包 15级极品	追加3	开1洞	无神佑
	tSummerSalesPromotion_Reward[3320125] = {}
	tSummerSalesPromotion_Reward[3320125]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3320125]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3320125]["DeleteItem"][1]["Id"] = 3320125
	tSummerSalesPromotion_Reward[3320125]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][1]["Id"] = 681029 
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3 255"
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][2] = {}
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][2]["Id"] = 680029
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3 255"
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][3] = {}
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][3]["Id"] = 102009
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3 255"
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][4] = {}
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][4]["Id"] = 147009
	tSummerSalesPromotion_Reward[3320125]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 0 0 0 3 255"
	tSummerSalesPromotion_Reward[3320125]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320125]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320125]["LogId"] = 12001114
	
-- 充值礼包
	tSummerSalesPromotion_Reward[3320127] = {}
	tSummerSalesPromotion_Reward[3320127]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3320127]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127]["DeleteItem"][1]["Id"] = 3320127
	tSummerSalesPromotion_Reward[3320127][1] = {}
	tSummerSalesPromotion_Reward[3320127][1]["ItemChanceSum"] = 10000
	
	-- 打开得风卷残云黄色神纹*1 100%
	tSummerSalesPromotion_Reward[3320127][1][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][1]["RandomItemChanceType"] = 1
	tSummerSalesPromotion_Reward[3320127][1][1]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320127][1][1]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][1]["RewardItem"][1]["Id"] = 4030701
	tSummerSalesPromotion_Reward[3320127][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSalesPromotion_Reward[3320127][1][1]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320127][1][1]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320127][1][1]["LogId"] = 12001114
	
	-- 打开得2级灵珠 20%
	tSummerSalesPromotion_Reward[3320127][1][2] = {}
	tSummerSalesPromotion_Reward[3320127][1][2]["RandomItemChanceType"] = 2
	tSummerSalesPromotion_Reward[3320127][1][2]["ItemChance"] = 2000
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardItem"][1]["Id"] = 4200002
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardItem"][1]["PreciousType"] = 307
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320127][1][2]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320127][1][2]["LogId"] = 12001114
	
	-- 打开得赤炼石+3 20%
	tSummerSalesPromotion_Reward[3320127][1][3] = {}
	tSummerSalesPromotion_Reward[3320127][1][3]["RandomItemChanceType"] = 2
	tSummerSalesPromotion_Reward[3320127][1][3]["ItemChance"] = 2000
	tSummerSalesPromotion_Reward[3320127][1][3]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320127][1][3]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][3]["RewardItem"][1]["Id"] = 730003
	tSummerSalesPromotion_Reward[3320127][1][3]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 2个 赠品 激活7天
	tSummerSalesPromotion_Reward[3320127][1][3]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320127][1][3]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320127][1][3]["LogId"] = 12001114
	
	-- 打开得明亮星陨石 20%
	tSummerSalesPromotion_Reward[3320127][1][4] = {}
	tSummerSalesPromotion_Reward[3320127][1][4]["RandomItemChanceType"] = 2
	tSummerSalesPromotion_Reward[3320127][1][4]["ItemChance"] = 2000
	tSummerSalesPromotion_Reward[3320127][1][4]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320127][1][4]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][4]["RewardItem"][1]["Id"] = 3009001
	tSummerSalesPromotion_Reward[3320127][1][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2个 非赠 激活2天
	tSummerSalesPromotion_Reward[3320127][1][4]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320127][1][4]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320127][1][4]["LogId"] = 12001114
	
	-- 打开得神纹源晶 20%
	tSummerSalesPromotion_Reward[3320127][1][5] = {}
	tSummerSalesPromotion_Reward[3320127][1][5]["RandomItemChanceType"] = 2
	tSummerSalesPromotion_Reward[3320127][1][5]["ItemChance"] = 2000
	tSummerSalesPromotion_Reward[3320127][1][5]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320127][1][5]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][5]["RewardItem"][1]["Id"] = 3311759
	tSummerSalesPromotion_Reward[3320127][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 1个 赠品
	tSummerSalesPromotion_Reward[3320127][1][5]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320127][1][5]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320127][1][5]["LogId"] = 12001114
	
	-- 打开得万能神纹精粹*10 20%
	tSummerSalesPromotion_Reward[3320127][1][6] = {}
	tSummerSalesPromotion_Reward[3320127][1][6]["RandomItemChanceType"] = 2
	tSummerSalesPromotion_Reward[3320127][1][6]["ItemChance"] = 2000
	tSummerSalesPromotion_Reward[3320127][1][6]["RewardItem"] = {}
	tSummerSalesPromotion_Reward[3320127][1][6]["RewardItem"][1] = {}
	tSummerSalesPromotion_Reward[3320127][1][6]["RewardItem"][1]["Id"] = 4060001
	tSummerSalesPromotion_Reward[3320127][1][6]["RewardItem"][1]["Attr"] = "0 10 3" -- 10个 赠品
	tSummerSalesPromotion_Reward[3320127][1][6]["RewardEffect"]={}
	tSummerSalesPromotion_Reward[3320127][1][6]["RewardEffect"]["Effect"]="angelwing"
	tSummerSalesPromotion_Reward[3320127][1][6]["LogId"] = 12001114

-- 英雄归来魔盒
	tSummerSalesPromotion_Reward[3320126] = {}
	tSummerSalesPromotion_Reward[3320126]["RewardEMoneyMono"] = {}
	tSummerSalesPromotion_Reward[3320126]["RewardEMoneyMono"]["Value"] = 20000
	tSummerSalesPromotion_Reward[3320126]["RewardEffect"] = {}
	tSummerSalesPromotion_Reward[3320126]["RewardEffect"]["Effect"] = "angelwing"
	tSummerSalesPromotion_Reward[3320126]["LogId"] = 12001114
	
-- 2019.4.23复用新增
	-- 1:8聚宝盆
	tSummerSalesPromotion_Reward[3312297] = {}
	tSummerSalesPromotion_Reward[3312297]["RewardEMoneyMono"] = {}
	tSummerSalesPromotion_Reward[3312297]["RewardEMoneyMono"]["Value"] = 8000
	tSummerSalesPromotion_Reward[3312297]["RewardEffect"] = {}
	tSummerSalesPromotion_Reward[3312297]["RewardEffect"]["Effect"] = "angelwing"
	tSummerSalesPromotion_Reward[3312297]["LogId"] = 12001114
	
	-- 30天Earth Knight 称号
	tSummerSalesPromotion_Reward[3312293] = {}
	tSummerSalesPromotion_Reward[3312293]["LogId"] = 12001114
	tSummerSalesPromotion_Reward[3312293]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3312293]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3312293]["DeleteItem"][1]["Id"] = 3312293
	tSummerSalesPromotion_Reward[3312293]["RewardTitle"] = {}
	tSummerSalesPromotion_Reward[3312293]["RewardTitle"]["TitleType"] = 2028
	tSummerSalesPromotion_Reward[3312293]["RewardTitle"]["TitleId"] = 2028
	tSummerSalesPromotion_Reward[3312293]["RewardTitle"]["SaveTime"] = 43200
	-- tSummerSalesPromotion_Reward[3312293]["RewardTitle"]["Score"] = 50
	
	-- 30天Sky  Knight 称号
	tSummerSalesPromotion_Reward[3312294] = {}
	tSummerSalesPromotion_Reward[3312294]["LogId"] = 12001114
	tSummerSalesPromotion_Reward[3312294]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3312294]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3312294]["DeleteItem"][1]["Id"] = 3312294
	tSummerSalesPromotion_Reward[3312294]["RewardTitle"] = {}
	tSummerSalesPromotion_Reward[3312294]["RewardTitle"]["TitleType"] = 2030
	tSummerSalesPromotion_Reward[3312294]["RewardTitle"]["TitleId"] = 2030
	tSummerSalesPromotion_Reward[3312294]["RewardTitle"]["SaveTime"] = 43200
	-- tSummerSalesPromotion_Reward[3312294]["RewardTitle"]["Score"] = 50
	
	-- 30天Glory  Knight 称号
	tSummerSalesPromotion_Reward[3312295] = {}
	tSummerSalesPromotion_Reward[3312295]["LogId"] = 12001114
	tSummerSalesPromotion_Reward[3312295]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3312295]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3312295]["DeleteItem"][1]["Id"] = 3312295
	tSummerSalesPromotion_Reward[3312295]["RewardTitle"] = {}
	tSummerSalesPromotion_Reward[3312295]["RewardTitle"]["TitleType"] = 2029
	tSummerSalesPromotion_Reward[3312295]["RewardTitle"]["TitleId"] = 2029
	tSummerSalesPromotion_Reward[3312295]["RewardTitle"]["SaveTime"] = 43200
	-- tSummerSalesPromotion_Reward[3312295]["RewardTitle"]["Score"] = 50
	
	-- 30天Paladin 称号
	tSummerSalesPromotion_Reward[3312296] = {}
	tSummerSalesPromotion_Reward[3312296]["LogId"] = 12001114
	tSummerSalesPromotion_Reward[3312296]["DeleteItem"] = {}
	tSummerSalesPromotion_Reward[3312296]["DeleteItem"][1] = {}
	tSummerSalesPromotion_Reward[3312296]["DeleteItem"][1]["Id"] = 3312296
	tSummerSalesPromotion_Reward[3312296]["RewardTitle"] = {}
	tSummerSalesPromotion_Reward[3312296]["RewardTitle"]["TitleType"] = 2031
	tSummerSalesPromotion_Reward[3312296]["RewardTitle"]["TitleId"] = 2031
	tSummerSalesPromotion_Reward[3312296]["RewardTitle"]["SaveTime"] = 43200
	-- tSummerSalesPromotion_Reward[3312296]["RewardTitle"]["Score"] = 50
	
local tSummerSalesPromotion_Position = {}
	
	tSummerSalesPromotion_Position["Boss"] = {}
	tSummerSalesPromotion_Position["Boss"]["PosX"] = 50
	tSummerSalesPromotion_Position["Boss"]["PosY"] = 50

	tSummerSalesPromotion_Position["Npc"] = {}
	tSummerSalesPromotion_Position["Npc"][1] = {}
	tSummerSalesPromotion_Position["Npc"][1]["MapId"] = 1002
	tSummerSalesPromotion_Position["Npc"][1]["PosX"] = 316
	tSummerSalesPromotion_Position["Npc"][1]["PosY"] = 447
	
	tSummerSalesPromotion_Position["Npc"][2] = {}
	tSummerSalesPromotion_Position["Npc"][2]["MapId"] = 1036
	tSummerSalesPromotion_Position["Npc"][2]["PosX"] = 230
	tSummerSalesPromotion_Position["Npc"][2]["PosY"] = 244


local tSummerSalesPromotion_MonsterDrop = {}
	--小怪
	tSummerSalesPromotion_MonsterDrop[3478] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1][1] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1][1]["Id"] = 3009100 -- 人参果
	tSummerSalesPromotion_MonsterDrop[3478][1][1]["Num"] = 10
	tSummerSalesPromotion_MonsterDrop[3478][1][2] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1][2]["Id"] = 3320717 --2019.4.23复用修改	通神丹（赠）改为赠流星*1
	tSummerSalesPromotion_MonsterDrop[3478][1][2]["Num"] = 10
	tSummerSalesPromotion_MonsterDrop[3478][1][3] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1][3]["Id"] = 3310099 -- 微光星陨石*1
	tSummerSalesPromotion_MonsterDrop[3478][1][3]["Num"] = 20
	tSummerSalesPromotion_MonsterDrop[3478][1][4] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1][4]["Id"] = 3006537  --10点气力值补充包
	tSummerSalesPromotion_MonsterDrop[3478][1][4]["Num"] = 30
	tSummerSalesPromotion_MonsterDrop[3478][1][5] = {}
	tSummerSalesPromotion_MonsterDrop[3478][1][5]["Id"] = 3309942  --万能神纹精粹*1
	tSummerSalesPromotion_MonsterDrop[3478][1][5]["Num"] = 20
	
	--boss
	tSummerSalesPromotion_MonsterDrop[3479] = {}
	tSummerSalesPromotion_MonsterDrop[3479][1] = {}
	tSummerSalesPromotion_MonsterDrop[3479][1][1] = {}
	tSummerSalesPromotion_MonsterDrop[3479][1][1]["Id"] = 3002027 -- 100点气力值礼包
	tSummerSalesPromotion_MonsterDrop[3479][1][1]["Num"] = 1
	tSummerSalesPromotion_MonsterDrop[3479][1][2] = {}
	tSummerSalesPromotion_MonsterDrop[3479][1][2]["Id"] = 3009100 --2019.4.23复用修改	龙鳞果改成人参果*5
	tSummerSalesPromotion_MonsterDrop[3479][1][2]["Num"] = 15
	tSummerSalesPromotion_MonsterDrop[3479][1][3] = {}
	tSummerSalesPromotion_MonsterDrop[3479][1][3]["Id"] = 3310099 --2019.4.23复用修改	明亮星陨石*1改为微光星陨石*3
	tSummerSalesPromotion_MonsterDrop[3479][1][3]["Num"] = 9
	
local tSummerSalesPromotion_EmoneyLog = {}
	tSummerSalesPromotion_EmoneyLog[1] = "350	22003	0	0	%d	" -- 玩家花费1000天石使用聚宝盆的次数
	tSummerSalesPromotion_EmoneyLog[2] = "350	22004	1000	1000	1	"  -- 使用聚宝盆的人数
	
	--2019.4.23复用新增 1:8聚宝盆 emoenylog
	tSummerSalesPromotion_EmoneyLog[3] = "350	22147	1000	1000	%d	" -- 记录使用次数及花费天石
	tSummerSalesPromotion_EmoneyLog[4] = "350	23156	0	0	1	"  -- 2020.5.6运营需求 记录副本参与次数

--2019.4.23复用新增 1:8聚宝盆 stc stc：19400
local tSummerSalesPromotion_Date = {}
	tSummerSalesPromotion_Date["EMoneyCost"] = {}
	tSummerSalesPromotion_Date["EMoneyCost"][1] = 1000
	tSummerSalesPromotion_Date["EMoneyCost"][2] = 1000
	
	tSummerSalesPromotion_Date["EventType"] = {}
	tSummerSalesPromotion_Date["EventType"][1] = 190
	tSummerSalesPromotion_Date["EventType"][2] = 194
	
	tSummerSalesPromotion_Date["DataType"] = {}
	tSummerSalesPromotion_Date["DataType"][1] = 08
	tSummerSalesPromotion_Date["DataType"][2] = 00
	
	tSummerSalesPromotion_Date["RewardTotalData"] = {}
	tSummerSalesPromotion_Date["RewardTotalData"][1] = 5
	tSummerSalesPromotion_Date["RewardTotalData"][2] = 5
	
----------------------------------逻辑部分---------------------------------------------

-- 2020.02.26复用新增 区分服务器
function SummerSalesPromotion_ServerDistinguish()
	local nSummerSalesPromotion_Global = tSummerSalesPromotion_Data["Global"]["Id"]
	local nSummerSalesPromotion_Data0 = tSummerSalesPromotion_Data["Global"]["Data0"] -- data0 = 1表示不上
	
	if Get_SysDynaGlobalData0(nSummerSalesPromotion_Global) >= nSummerSalesPromotion_Data0 then
		return false
	end
	
	return true
end


----隔天清零
function SummerSalesPromotion_ReStc(nUserId)
	local nTimeEvent = tSummerSalesPromotion_Stc[2]["EventType"]
	local nTimeType = tSummerSalesPromotion_Stc[2]["DataType"]
	local nNowUserId = nUserId or Get_UserId()
	if Task_StcInterval(nTimeEvent,nTimeType,1,4,nNowUserId) then
		Task_SetStatistic(nTimeEvent,nTimeType,0,1,nNowUserId)
		Task_SetStcTimestamp(nTimeEvent,nTimeType,0,nNowUserId)
	end
end

--5分钟清掩码
function SummerSalesPromotion_Minute(nUserId)
	local nEvent = tSummerSalesPromotion_Stc[1]["EventType"] -- 179
	local nType = tSummerSalesPromotion_Stc[1]["DataType"] -- 39
	local nNowUserId = nUserId or Get_UserId()
	if Task_StcInterval(nEvent,nType,5,1,nNowUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	end
end

-- 是否离开魔穴
function SummerSalesPromotion_Leave()
	Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["LeaveOrNot"],"SummerSalesPromotion_SureLeave",nil)
end

--离开地图
function SummerSalesPromotion_SureLeave()
	local nMapId = tSummerSalesPromotion_Position["Npc"][1]["MapId"]
	local nPosX = tSummerSalesPromotion_Position["Npc"][1]["PosX"]
	local nPosY = tSummerSalesPromotion_Position["Npc"][1]["PosY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tSummerSalesPromotion_Position["Npc"][2]["MapId"]
		nPosX = tSummerSalesPromotion_Position["Npc"][2]["PosX"]
		nPosY = tSummerSalesPromotion_Position["Npc"][2]["PosY"]
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1)
end

---进瓜田第一次判断
function SummerSalesPromotion_JubGoto(nNpcId)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end
	
	SummerSalesPromotion_Minute()  --清5分钟掩码
	SummerSalesPromotion_ReStc()
	
	--活动后对白
	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	---等级不足
	if (not User_JudgeLevelAndMetempsychosis(tSummerSalesPromotion_Data["Level"],tSummerSalesPromotion_Data["Metempsychosis"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 今日已参与保卫瓜田
	local nTimeEvent = tSummerSalesPromotion_Stc[2]["EventType"]
	local nTimeType = tSummerSalesPromotion_Stc[2]["DataType"]
	if Task_ChkStcValue(nTimeEvent,nTimeType,">=",tSummerSalesPromotion_Stc[2]["Data"],nUserId) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["JoinToday"])
		return
	end
	
	--检测是否有令牌
	local nItemId = tSummerSalesPromotion_Data["ItemType"]
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tSummerSalesPromotion_Text[21523]["FailMsgBox"])
		return
	end
	--判断是否组队
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum < 2 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	--判断是否队长
	local nUserId = Get_UserId()
	if not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NoCaptain"])
		return
	end
	
end
---进入瓜田
function SummerSalesPromotion_Goto(nNpcId)
	
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end

	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	---等级不足
	if (not User_JudgeLevelAndMetempsychosis(tSummerSalesPromotion_Data["Level"],tSummerSalesPromotion_Data["Metempsychosis"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 今日已参与保卫瓜田
	local nTimeEvent = tSummerSalesPromotion_Stc[2]["EventType"]
	local nTimeType = tSummerSalesPromotion_Stc[2]["DataType"]
	if Task_ChkStcValue(nTimeEvent,nTimeType,">=",tSummerSalesPromotion_Stc[2]["Data"],nUserId) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["JoinToday"])
		return
	end

	--检测是否有令牌
	local nItemId = tSummerSalesPromotion_Data["ItemType"]
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tSummerSalesPromotion_Text[21523]["FailMsgBox"])
		return
	end
	
	--判断是否组队
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum < 2 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--判断是否队长
	local nUserId = Get_UserId()
	if not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NoCaptain"]) -- 只有队长才可带领队友进入魔穴！
		return
	end

	local nTeamId = Get_UserTeamId(nUserId) -- 队伍id
	---组队人数标志
	tSummerSalesPromotion_Data["Num"][nTeamId] = 0
	tSummerSalesPromotion_Data["UserLevel"][nTeamId] = 0
	tSummerSalesPromotion_Data["Position"][nTeamId] = 0
	tSummerSalesPromotion_Data["GoIn"][nTeamId] = 0
	tSummerSalesPromotion_Data["Pos"][nTeamId] = 0
	
	if User_TeamExeFuncByTeamer(3,"SummerSalesPromotion_GotoMap</N>"..nUserId .. "</N>" .. nTeamId,nUserId) then
		SummerSalesPromotion_Judge(nTeamNum,nTeamId,nUserId)
	end
end
--全队执行判断
function SummerSalesPromotion_GotoMap(nUserId,nTeamId,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	local nTimeEvent = tSummerSalesPromotion_Stc[2]["EventType"]
	local nTimeType = tSummerSalesPromotion_Stc[2]["DataType"]
	
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end
	
	SummerSalesPromotion_Minute(nNowUserId)
	SummerSalesPromotion_ReStc(nNowUserId)
	
	-- 今日已参与保卫瓜田
	if Task_ChkStcValue(nTimeEvent,nTimeType,"<",tSummerSalesPromotion_Stc[2]["Data"],nNowUserId) then
		if tSummerSalesPromotion_Data["Num"][nTeamId] == nil then
			tSummerSalesPromotion_Data["Num"][nTeamId] = 0
		end
		tSummerSalesPromotion_Data["Num"][nTeamId] = tSummerSalesPromotion_Data["Num"][nTeamId] + 1
	end
	
	if tSummerSalesPromotion_Data["UserLevel"][nTeamId] == nil then
		tSummerSalesPromotion_Data["UserLevel"][nTeamId] = 0
	end
	
	if not User_JudgeLevelAndMetempsychosis(tSummerSalesPromotion_Data["Level"],tSummerSalesPromotion_Data["Metempsychosis"],nNowUserId) then
		tSummerSalesPromotion_Data["UserLevel"][nTeamId] = tSummerSalesPromotion_Data["UserLevel"][nTeamId] + 1
	end
	
	local nNpc_Map = tSummerSalesPromotion_Data["Map"]
	local nRange_Posx1 = tSummerSalesPromotion_Data["Range"]["PosX1"]
	local nRange_Posx2 = tSummerSalesPromotion_Data["Range"]["PosX2"]
	local nRange_Posy1 = tSummerSalesPromotion_Data["Range"]["PosY1"]
	local nRange_Posy2 = tSummerSalesPromotion_Data["Range"]["PosY2"]
	
	if SpecialServer_ChkNoGiftServer() then
		nNpc_Map = tSummerSalesPromotion_Data["MapNoGift"]
		nRange_Posx1 = tSummerSalesPromotion_Data["RangeNogift"]["PosX1"]
		nRange_Posx2 = tSummerSalesPromotion_Data["RangeNogift"]["PosX2"]
		nRange_Posy1 = tSummerSalesPromotion_Data["RangeNogift"]["PosY1"]
		nRange_Posy2 = tSummerSalesPromotion_Data["RangeNogift"]["PosY2"]
	end
	
	--判断队友在不在双龙城
	local nUserMap = Get_UserMapId(nNowUserId)
	local nUserPosX = Get_UserPositionX(nNowUserId)
	local nUserPosY = Get_UserPositionY(nNowUserId)
	if nUserMap ~= nNpc_Map then
		tSummerSalesPromotion_Data["Position"][nTeamId] = tSummerSalesPromotion_Data["Position"][nTeamId] + 1
	end
	if nUserMap == nNpc_Map then
		if nUserPosX <= nRange_Posx1 and nUserPosX >= nRange_Posx2 then
			if nUserPosY <= nRange_Posy1 and nUserPosY >= nRange_Posy2 then
				tSummerSalesPromotion_Data["Pos"][nTeamId] = tSummerSalesPromotion_Data["Pos"][nTeamId] + 1
			end
		end
	end
	
	--判断队友是否还在之前队伍中
	local nEvent = tSummerSalesPromotion_Stc[1]["EventType"]
	local nType = tSummerSalesPromotion_Stc[1]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",tSummerSalesPromotion_Stc[1]["Data"],nNowUserId) then
		tSummerSalesPromotion_Data["GoIn"][nTeamId] = tSummerSalesPromotion_Data["GoIn"][nTeamId] + 1
	end
	
end

---判断是否符合条件
function SummerSalesPromotion_Judge(nTeamNum,nTeamId,nUserId)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end
	
	
	-- 有队友不在双龙城
	if tSummerSalesPromotion_Data["Position"][nTeamId] >= 1 then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["Fail"],nil,nil,nUserId)
		return
	end
	
	if tSummerSalesPromotion_Data["Pos"][nTeamId] ~= Get_UserTeamNumbers(nUserId) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["FailPos"],nil,nil,nUserId)
		return
	end
	
	-- 判断队友是否还在之前队伍中
	if tSummerSalesPromotion_Data["GoIn"][nTeamId] >= 1 then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["Not"],nil,nil,nUserId)
		return
	end
	
	-- 全队都符合条件
	if nTeamNum == tSummerSalesPromotion_Data["Num"][nTeamId] then
		-- 队伍中是否有人等级不足
		if tSummerSalesPromotion_Data["UserLevel"][nTeamId] < 1 then
			local nInstanceMap = User_CreateInstance(tSummerSalesPromotion_Data["Instancetype"],nUserId) --创建副本地图
			tSummerSalesPromotion_Data["MapId"][nTeamId] = nInstanceMap
			User_TeamExeFuncByTeamer(3,"SummerSalesPromotion_SetStc</N>"..nUserId .. "</N>" .. nTeamId .. "</N>" .. nInstanceMap, nUserId)
			SummerSalesPromotion_BrushMonster(nUserId,nInstanceMap)
		else --等级不足
			Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NoGoto"],nil,nil,nUserId)
		end
	else
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["JoinTodayOther"], nil, nil, nUserId)
	end
end

function SummerSalesPromotion_SetStc(nUserId,nTeamId,nInstanceMap,nTeamUserId)
	local nNowUserId = nTeamUserId or Get_UserId()
	
	-- 今日已参加过
	local nTimeEvent = tSummerSalesPromotion_Stc[2]["EventType"]
	local nTimeType = tSummerSalesPromotion_Stc[2]["DataType"]
	Task_AddStatistic(nTimeEvent,nTimeType,1,1,nNowUserId)
	Task_SetStcTimestamp(nTimeEvent,nTimeType,0,nNowUserId)
	
	--标志进过副本
	local nGotoEvent = tSummerSalesPromotion_Stc[1]["EventType"]
	local nGotoType = tSummerSalesPromotion_Stc[1]["DataType"]
	Task_SetStatistic(nGotoEvent,nGotoType,1,1,nNowUserId)
	Task_SetStcTimestamp(nGotoEvent,nGotoType,0,nNowUserId)
	
	--队长消耗一次令牌
	if User_IsTeamLeader(nNowUserId) then
		--检测是否有令牌
		local nItemId = tSummerSalesPromotion_Data["ItemType"]
		if not Item_ChkItem(nItemId) then
			Sys_MsgBox(tSummerSalesPromotion_Text[21523]["FailMsgBox"])
			return
		end
		
		-- 2020.2.26复用修改	使用后删除通行证
		-- 2019.4.23复用修改	使用后不删除通行证
		if not Item_DelItem(nItemId) then
			return
		end
		
		tSummerSalesPromotion_Data["MonsterNum"][nTeamId] = {}
		Sys_SaveEmoneyBuy(tSummerSalesPromotion_EmoneyLog[4],nNowUserId)
	end
	
	User_EnterInstance(tSummerSalesPromotion_Data["Instancetype"],0,0,0,nNowUserId,nInstanceMap)    --进副本
	--加个定时器
	User_SetTimer(300,"SummerSalesPromotion_Minute</N>" .. nNowUserId,1,nNowUserId)
end

----二次进入
function SummerSalesPromotion_NextGoto(nNpcId)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end
	
	SummerSalesPromotion_Minute()  --清5分钟掩码
	SummerSalesPromotion_ReStc()
	
	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	--8：00-23:00活动时间
	if not Sys_ChkDayTime(tSummerSalesPromotion_Data["Open_Time"]) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	---等级不足
	if (not User_JudgeLevelAndMetempsychosis(tSummerSalesPromotion_Data["Level"],tSummerSalesPromotion_Data["Metempsychosis"])) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	---判断是否进过副本
	local nEvent = tSummerSalesPromotion_Stc[1]["EventType"] 
	local nType = tSummerSalesPromotion_Stc[1]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",tSummerSalesPromotion_Stc[1]["Data"],nUserId) then
		return 
	end
--是否组队
	
	local nTeamNum = Get_UserTeamNumbers()
	if nTeamNum < 2 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nTeamId = Get_UserTeamId(nUserId)
	
	local nInstanceMap = tSummerSalesPromotion_Data["MapId"][nTeamId]
	if nInstanceMap == nil or nInstanceMap == 0 then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NotAg"],nil,nil,nUserId)
		return
	end
	User_EnterInstance(tSummerSalesPromotion_Data["Instancetype"],0,0,0,nUserId,nInstanceMap)    --进副本
end

---进副本刷怪
function SummerSalesPromotion_BrushMonster(nUserId,nInstanceMap)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end

	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		return
	end
	--8：00-23:00活动时间
	if not Sys_ChkDayTime(tSummerSalesPromotion_Data["Open_Time"]) then
		return
	end
	local nNowMapId = Get_UserMapId(nUserId)
	local nMonsterId = tSummerSalesPromotion_Data["MonsterId"]
	local nGenId = tSummerSalesPromotion_Data["MonGenId"]
	
	Map_CreateDynaGenerator(nNowMapId,25,25,50,50,7,5,51,nMonsterId,0,0,nUserId)
	
	--定时3分钟刷boss
	local nTime = os.time()--tSummerSalesPromotion_Data["Time"]
	tSummerSalesPromotion_Data["BossTime"][nUserId] = {}
	tSummerSalesPromotion_Data["BossTime"][nUserId]["Time"] = nTime
	tSummerSalesPromotion_Data["BossTime"][nUserId]["MapId"] = nNowMapId

	-- User_SetTimer(nTime,"SummerSalesPromotion_BrushBoss</N>" .. nInstanceMap,0,nUserId)
end
--三分钟后刷boss
function SummerSalesPromotion_BrushBoss(nNowMapId)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end

	local nMonsterId = tSummerSalesPromotion_Data["BossId"]
	local nGenId = tSummerSalesPromotion_Data["GenId"]
	local nPosX = tSummerSalesPromotion_Position["Boss"]["PosX"]
	local nPosY = tSummerSalesPromotion_Position["Boss"]["PosY"]
	--动态刷出boss
	Monster_AddAndCount(nNowMapId,nPosX,nPosY,nGenId,nMonsterId)
end

----网址
function SummerSalesPromotion_GoWab()
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end

	User_SendWebPage(tSummerSalesPromotion_Data["Web"])
end
----------------------------------怪物逻辑---------------------------------------------
function SummerSalesPromotion_KillBoss(nMonsterId)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end

	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		return
	end
	--8：00-23:00活动时间
	if not Sys_ChkDayTime(tSummerSalesPromotion_Data["Open_Time"]) then
		return
	end
	local nUserId = Get_UserId()
	local nMapId = Get_MonsterMapID()
	local nTeamId =  Get_UserTeamId(nUserId)

	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()

	-- 小怪
	if nMonsterId == 3478 then
		--概率
		--刷一只
		-- local nPosX3 = math.random(30,67)
		-- local nPosY3 = math.random(30,68)
		-- local nGenId = tSummerSalesPromotion_Data["MonGenId"]
		-- Monster_AddAndCount(nMapId,nPosX3,nPosY3,nGenId,nMonsterId)

		if not Sys_Random(tSummerSalesPromotion_Data["MonsterRadom"][1],10000) then
			return
		end
		for a,b in pairs(tSummerSalesPromotion_MonsterDrop[3478][1]) do
			if tSummerSalesPromotion_Data["MonsterNum"][nTeamId] == nil then
				tSummerSalesPromotion_Data["MonsterNum"][nTeamId] = {}
			end
			if tSummerSalesPromotion_Data["MonsterNum"][nTeamId][a] == nil then
				tSummerSalesPromotion_Data["MonsterNum"][nTeamId][a] = 0
			end
		
			if tSummerSalesPromotion_Data["MonsterNum"][nTeamId][a] < b["Num"] then
				local nOldNum = tSummerSalesPromotion_Data["MonsterNum"][nTeamId][a]
				tSummerSalesPromotion_Data["MonsterNum"][nTeamId][a] = nOldNum + 1
				--掉落物品
				local nItemId = b["Id"]
				
				if SpecialServer_ChkNoGiftServer() then
					if nItemId ~= 3320717 then
						--怪物掉落物品
						Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,3,3,1,60)
					end
				else
					--怪物掉落物品
					Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,3,3,1,60)
				end
			end
			
		end

		return
	end
	-- boss
	for j,k in pairs(tSummerSalesPromotion_MonsterDrop[3479][1]) do
		local nItemId = k["Id"]
		local nNum = k["Num"]
		Map_DropMultiItems(nMapId,nItemId,nPosX,nPosY,10,10,nNum,60)
	end
end


----------------------------------物品逻辑---------------------------------------------
---------刷出boss
function SummerSalesPromotion_Boss()
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end
	
	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		return
	end
	if not Sys_ChkDayTime(tSummerSalesPromotion_Data["Open_Time"]) then
		return
	end
	for a,b in pairs(tSummerSalesPromotion_Data["BossTime"]) do
		if b["Time"] > 0 then
			local nNowTime = os.time()
			if nNowTime - b["Time"] >= tSummerSalesPromotion_Data["Time"] then
				SummerSalesPromotion_BrushBoss(b["MapId"])
				b["Time"] = 0
				b["MapId"] = 0
			end
		end
	end
end

function SummerSalesPromotion_UpdateGift(nItemId, nIndex)
	local nUserId = Get_UserId()
	local nEvent = tSummerSalesPromotion_Date["EventType"][nIndex]
	local nType = tSummerSalesPromotion_Date["DataType"][nIndex]
	
	-- 检测物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 1:8聚宝盆使用时间5.9-6.1
	if nItemId == 3312297 then
		if not Sys_ChkFullTime(tActivityTime["SummerSalesPromotion"]["Item_Time"]) then
			if Item_DelItem(nItemId) then
			end
			return
		end
	end
	
	-- 开过5次就删除
	if Task_ChkStcValue(nEvent,nType,">=",tSummerSalesPromotion_Date["RewardTotalData"][nIndex]) then
		if Item_DelItem(nItemId) then
		end
		return
	end
	
	-- 判断玩家身上天石是否足够
	if Get_UserEMoney() < tSummerSalesPromotion_Date["EMoneyCost"][nIndex] then
		return Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["EMoneyMonoNotEnougth"])
	end
	
	-- 赠点天石上限检测
	local nUserEMoneyMono = Get_UserMonoEMoney(nUserId)
	if nUserEMoneyMono + tSummerSalesPromotion_Reward[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoney then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["FullEMoneyMono"])
		return
	end
	
	-- 扣除天石
	if not User_AddEMoney(-tSummerSalesPromotion_Date["EMoneyCost"][nIndex]) then
		return
	end
	
	-- 置掩码
	Task_AddStatistic(nEvent, nType, 1, 1)
	Task_SetStcTimestamp(nEvent, nType, 0, nUserId)
	
	Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["EMoneyMonoEnougth"][nItemId])
	User_TalkChannel2005(tSummerSalesPromotion_Text["Msg"]["EMoneyMonoEnougth"][nItemId])
	
	if RewardTemplate_UseItem(tSummerSalesPromotion_Reward[nItemId]) then
		-- emoneybuylog
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nItemId == 3312297 then
			Sys_SaveEmoneyBuy(string.format(tSummerSalesPromotion_EmoneyLog[3], nData))
		else
			Sys_SaveEmoneyBuy(string.format(tSummerSalesPromotion_EmoneyLog[1], nData))
			Sys_SaveEmoneyBuy(tSummerSalesPromotion_EmoneyLog[2])
		end
		
		if Task_ChkStcValue(nEvent,nType,">=",tSummerSalesPromotion_Date["RewardTotalData"][nIndex]) then
			if not Item_DelItem(nItemId) then
				return
			end
		end
	end
end

function SummerSalesPromotion_OpenPack(nItemId)
	local nUserId = Get_UserId()
	
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 背包空间检测
	if not RewardTemplate_CheckSpace(tSummerSalesPromotion_Reward[nItemId]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerSalesPromotion_Reward[nItemId])
end

function SummerSalesPromotion_OpenPackRandom(nItemId)
	local nUserId = Get_UserId()
	
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nNeedSpace = RewardTemplate_GetRandomSpace(tSummerSalesPromotion_Reward[nItemId], 1)
	local nDelSpace = RewardTemplate_GetDelSpace(tSummerSalesPromotion_Reward[nItemId])
	local nSpace = nNeedSpace - nDelSpace
	
	-- 背包空间检测
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tSummerSalesPromotion_Text["Msg"]["FullBag"], nSpace))
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	RewardTemplate_NewRandom(tSummerSalesPromotion_Reward[nItemId], 1)
end

-- 2019.4.23复用新增 1:8聚宝盆
function SummerSalesPromotion_Cornucopia(nItemId,nIndex)
	local nUserId = Get_UserId()
	local nEvent = tSummerSalesPromotion_Date["EventType"][nIndex]
	local nType = tSummerSalesPromotion_Date["DataType"][nIndex]
	local nTimes = Get_UserStatisticValue(nEvent, nType) + 1
	local sText = tSummerSalesPromotion_Text[nItemId]["Text112"]
	tItem[nItemId]["Text112"] = string.format(sText, nTimes)
	tItem[nItemId]["OptionFunc111"] = "SummerSalesPromotion_UpdateGift</N>"..nItemId.."</N>"..nIndex
	LinkItemGossipFunc_New(nItemId,"1-1")
	
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[6491] = 57
tNpcGossip[21523]= tNpcGossip[21523] or DefaultNpc:new{}
tNpcGossip[21523]["OptionHidden"] = 1
-- 活动前
tNpcGossip[21523]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21523]["Text111"] = tSummerSalesPromotion_Text[21523]["Text111"]
tNpcGossip[21523]["Text112"] = tSummerSalesPromotion_Text[21523]["Text112"]
tNpcGossip[21523]["Text113"] = tSummerSalesPromotion_Text[21523]["Text113"]
tNpcGossip[21523]["Text114"] = tSummerSalesPromotion_Text[21523]["Text114"]
tNpcGossip[21523]["Text115"] = tSummerSalesPromotion_Text[21523]["Text115"]
tNpcGossip[21523]["Text116"] = tSummerSalesPromotion_Text[21523]["Text116"]
tNpcGossip[21523]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tSummerSalesPromotion_Data["Bef_Time"]) 
end
tNpcGossip[21523]["tOption1-1"] = {111}
tNpcGossip[21523]["Option111"] = tSummerSalesPromotion_Text[21523]["Option111"]

-- 活动后
tNpcGossip[21523]["Text1-2"] = {121}
tNpcGossip[21523]["Text121"] = tSummerSalesPromotion_Text[21523]["Text121"]
tNpcGossip[21523]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) 
end
tNpcGossip[21523]["tOption1-2"] = {121}
tNpcGossip[21523]["Option121"] = tSummerSalesPromotion_Text[21523]["Option121"]

-- 活动中
-- 玩家等级未到
tNpcGossip[21523]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[21523]["Text131"] = tSummerSalesPromotion_Text[21523]["Text131"]
tNpcGossip[21523]["Text132"] = tSummerSalesPromotion_Text[21523]["Text132"]
tNpcGossip[21523]["Text133"] = tSummerSalesPromotion_Text[21523]["Text133"]
tNpcGossip[21523]["Text134"] = tSummerSalesPromotion_Text[21523]["Text134"]
tNpcGossip[21523]["Text135"] = tSummerSalesPromotion_Text[21523]["Text135"]
tNpcGossip[21523]["Text136"] = tSummerSalesPromotion_Text[21523]["Text136"]

tNpcGossip[21523]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) and (not User_JudgeLevelAndMetempsychosis(tSummerSalesPromotion_Data["Level"],tSummerSalesPromotion_Data["Metempsychosis"])) 
end
tNpcGossip[21523]["tOption1-3"] = {131}
tNpcGossip[21523]["Option131"] = tSummerSalesPromotion_Text[21523]["Option131"]

-- 玩家等级达到
tNpcGossip[21523]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[21523]["Text141"] = tSummerSalesPromotion_Text[21523]["Text141"]
tNpcGossip[21523]["Text142"] = tSummerSalesPromotion_Text[21523]["Text142"]
tNpcGossip[21523]["Text143"] = tSummerSalesPromotion_Text[21523]["Text143"]
tNpcGossip[21523]["Text144"] = tSummerSalesPromotion_Text[21523]["Text144"]
tNpcGossip[21523]["Text145"] = tSummerSalesPromotion_Text[21523]["Text145"]
tNpcGossip[21523]["Text146"] = tSummerSalesPromotion_Text[21523]["Text146"]

tNpcGossip[21523]["tOption1-4"] = {141,142,143,144,145}

-- 进入魔穴（消耗1枚龙牙）。
tNpcGossip[21523]["Option141"] = tSummerSalesPromotion_Text[21523]["Option141"]
tNpcGossip[21523]["OptionFunc141"] = "SummerSalesPromotion_Goto</N>21523"
tNpcGossip[21523]["OptionChkFunc141"] = function ()
	SummerSalesPromotion_Minute()
	SummerSalesPromotion_ReStc()
	local nEvent = tSummerSalesPromotion_Stc[1]["EventType"] 
	local nType = tSummerSalesPromotion_Stc[1]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",tSummerSalesPromotion_Stc[1]["Data"],nUserId) then
		return true
	else
		return false
	end
end

-- 进入魔穴
tNpcGossip[21523]["Option142"] = tSummerSalesPromotion_Text[21523]["Option142"]
tNpcGossip[21523]["OptionFunc142"] = "SummerSalesPromotion_NextGoto</N>21523"
tNpcGossip[21523]["OptionChkFunc142"] = function ()
	SummerSalesPromotion_Minute() --清5分钟掩码
	SummerSalesPromotion_ReStc()
	local nEvent = tSummerSalesPromotion_Stc[1]["EventType"] 
	local nType = tSummerSalesPromotion_Stc[1]["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nType,"<",tSummerSalesPromotion_Stc[1]["Data"],nUserId) then
		return false
	else
		return true
	end
end

-- 领取龙牙
tNpcGossip[21523]["Option143"] = tSummerSalesPromotion_Text[21523]["Option143"]
tNpcGossip[21523]["OptionFunc143"] = "SummerSalesPromotion_GoWab"

-- 了解屠龙规则
tNpcGossip[21523]["Option144"] = tSummerSalesPromotion_Text[21523]["Option144"]
tNpcGossip[21523]["OptionPoint144"] = "3-1"

tNpcGossip[21523]["Option145"] = tSummerSalesPromotion_Text[21523]["Option145"]

-- 【接1-1，失败，未组队】
tNpcGossip[21523]["Text2-3"] = {231}
tNpcGossip[21523]["Text231"] = tSummerSalesPromotion_Text[21523]["Text231"]
tNpcGossip[21523]["tOption2-3"] = {231}
tNpcGossip[21523]["Option231"] = tSummerSalesPromotion_Text[21523]["Option231"]

-- 接3、了解规则
tNpcGossip[21523]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[21523]["Text311"] = tSummerSalesPromotion_Text[21523]["Text311"]
tNpcGossip[21523]["Text312"] = tSummerSalesPromotion_Text[21523]["Text312"]
tNpcGossip[21523]["Text313"] = tSummerSalesPromotion_Text[21523]["Text313"]
tNpcGossip[21523]["Text314"] = tSummerSalesPromotion_Text[21523]["Text314"]
tNpcGossip[21523]["Text315"] = tSummerSalesPromotion_Text[21523]["Text315"]
tNpcGossip[21523]["Text316"] = tSummerSalesPromotion_Text[21523]["Text316"]
tNpcGossip[21523]["tOption3-1"] = {311}
tNpcGossip[21523]["Option311"] = tSummerSalesPromotion_Text[21523]["Option311"]

---------------------------------物品部分---------------------------------------------
tItemFace[3309649] = 1635
--------微光星陨石包
tItem[3310099] = tItem[3310099] or {}
tItem[3310099]["Function"] = function(nItemId,sItemName)
	if not RewardTemplate_CheckSpace(tSummerSalesPromotion_Reward[3310099]) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NoOpen"])
		return
	end
	RewardTemplate_UseItemAndMsg(tSummerSalesPromotion_Reward[3310099])
end

--------明亮星陨石包
tItem[3310100] = tItem[3310100] or {}
tItem[3310100]["Function"] = function(nItemId,sItemName)
	if not RewardTemplate_CheckSpace(tSummerSalesPromotion_Reward[3310100]) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NoOpen"])
		return
	end
	RewardTemplate_UseItemAndMsg(tSummerSalesPromotion_Reward[3310100])
end

--------万能神纹精粹包
tItem[3309942] = tItem[3309942] or {}
tItem[3309942]["Function"] = function(nItemId,sItemName)
	if not RewardTemplate_CheckSpace(tSummerSalesPromotion_Reward[3309942]) then
		Sys_MsgBox(tSummerSalesPromotion_Text["Msg"]["NoOpen"])
		return
	end
	RewardTemplate_UseItemAndMsg(tSummerSalesPromotion_Reward[3309942])
end

-- 龙牙
tItem[3309650] = tItem[3309650] or {}
tItem[3309650]["Function"] = function(nItemId,sItemName)
	-- 2020.02.26复用新增 服务器区分
	if not SummerSalesPromotion_ServerDistinguish() then
		return 
	end
	
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tSummerSalesPromotion_Data["Now_Time"]) then
		if not Item_DelItem(nItemId) then
			return
		end
		User_TalkChannel2005(tSummerSalesPromotion_Text["Msg"][nItemId])
		return
	end
	
	NpcPosition_PathFind(21523)
end

-- 副本通行证
tItem[3312298] = tItem[3309650]

tItem[3320124] = tItem[3320124] or {}
tItem[3320124]["Function"] = function (nItemId, sItemName)
	SummerSalesPromotion_OpenPack(nItemId)
end
tItem[3320125] = tItem[3320124]

-- 充值礼包
tItem[3320127] = tItem[3320127] or {}
tItem[3320127]["Function"] = function (nItemId, sItemName)
	SummerSalesPromotion_OpenPackRandom(nItemId)
end

-- 英雄归来魔盒
tItemFace[3320126] = 1442
tItem[3320126] = tItem[3320126] or {}
tItem[3320126]["Text1-1"] = {111,112,113,114,115,116}
tItem[3320126]["Text111"] = tSummerSalesPromotion_Text[3320126]["Text111"]
tItem[3320126]["Text112"] = tSummerSalesPromotion_Text[3320126]["Text112"]
tItem[3320126]["Text113"] = tSummerSalesPromotion_Text[3320126]["Text113"]
tItem[3320126]["Text114"] = tSummerSalesPromotion_Text[3320126]["Text114"]
tItem[3320126]["Text115"] = tSummerSalesPromotion_Text[3320126]["Text115"]
tItem[3320126]["Text116"] = tSummerSalesPromotion_Text[3320126]["Text116"]
tItem[3320126]["tOption1-1"] = {1,2}
tItem[3320126]["Option1"] = tSummerSalesPromotion_Text[3320126]["Option1"]
tItem[3320126]["OptionFunc1"] = "SummerSalesPromotion_UpdateGift</N>3320126</N>1"
tItem[3320126]["Option2"] = tSummerSalesPromotion_Text[3320126]["Option2"]

-- 2019.4.23复用新增 1:8聚宝盆
tItemFace[3312297] = 1604
tItem[3312297] = tItem[3312297] or {}
tItem[3312297]["Function"] = function (nItemId, sItemName)
	SummerSalesPromotion_Cornucopia(3312297,2)
end
tItem[3312297]["Text1-1"] = {111,112}
tItem[3312297]["Text111"] = tSummerSalesPromotion_Text[3312297]["Text111"]
tItem[3312297]["Text112"] = tSummerSalesPromotion_Text[3312297]["Text112"]
tItem[3312297]["tOption1-1"] = {111,112}
tItem[3312297]["Option111"] = tSummerSalesPromotion_Text[3312297]["Option111"]
-- tItem[3312297]["OptionFunc1"] = "SummerSalesPromotion_Cornucopia</N>3312297</N>1"
tItem[3312297]["Option112"] = tSummerSalesPromotion_Text[3312297]["Option112"]

-- 称号包
tItem[3312293] = tItem[3312293] or {}
tItem[3312293]["Function"] = function (nItemId, sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nTitleType = tSummerSalesPromotion_Reward[nItemId]["RewardTitle"]["TitleType"]
	local nTitleId = tSummerSalesPromotion_Reward[nItemId]["RewardTitle"]["TitleId"]
	local nSaveTime = tSummerSalesPromotion_Reward[nItemId]["RewardTitle"]["SaveTime"]
	
	if User_CheckTitle(nTitleType, nTitleId) then
		User_TalkChannel2005(tSummerSalesPromotion_Text["Msg"][nItemId])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSummerSalesPromotion_Reward[nItemId])
end
tItem[3312294] = tItem[3312293]
tItem[3312295] = tItem[3312293]
tItem[3312296] = tItem[3312293]

---------------------------------怪物部分---------------------------------------------
-- 小怪
tMonster[3478] = tMonster[3478] or {}
tMonster[3478]["tFunction"] = tMonster[3478]["tFunction"] or {}
table.insert(tMonster[3478]["tFunction"],SummerSalesPromotion_KillBoss)
-- boss
tMonster[3479] = tMonster[3479] or {}
tMonster[3479]["tFunction"] = tMonster[3479]["tFunction"] or {}
table.insert(tMonster[3479]["tFunction"],SummerSalesPromotion_KillBoss)

--------------------------------------陷阱配置------------------------------------
tTrap[2021] = tTrap[2021] or {}
tTrap[2021]["Function"] = function(nTrapId,nTrapType)
	SummerSalesPromotion_Leave()
end

-----------------------------------时间自检-----------------------------------
local tSummerSalesPromotion_SystemProp = {}
tSummerSalesPromotion_SystemProp[1] = {}
tSummerSalesPromotion_SystemProp[1]["Type"] = 6
tSummerSalesPromotion_SystemProp[1]["TimeType"] = 4
tSummerSalesPromotion_SystemProp[1]["Time"] = "00:00 23:59"
tSummerSalesPromotion_SystemProp[1]["Func"] = SummerSalesPromotion_Boss

table.insert(tSystemTime_InitialData,tSummerSalesPromotion_SystemProp[1])
