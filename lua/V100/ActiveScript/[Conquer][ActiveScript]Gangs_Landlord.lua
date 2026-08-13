------------------------------------------------------------------------------------
--Name：            171103[ios英文征服][活动脚本]帮派斗地主活动
--Creator:      潘云锋
--Created:     2017/11/03
------------------------------------------------------------------------------------
--任务需求：
-- 麻烦帮忙安排下移动端征服帮派斗地主活动。具体活动方式等，详见文档。

-- 活动简介：以帮派为单位的PVP赛事。玩家可以在活动地图内通过击杀小怪，对手等获得分数，占领柱子，击杀BOSS,获得额外加成系数。最后以个人积分为依据，领取各自奖励。

-- 比赛时间：每周五21:30
-- 活动时间：2017年12月14日服务器维护后-2017年1月11日23:59
-- 活动范围：所有移动端服务器

--掩码、动态表说明：
--169 86 玩家活动积分掩码
--169 87 领奖掩码
--169 88 背包信掩码
--171 04 进图记录帮派
--185 23 记录进入活动副本情况

-- 英文征服1月帮派斗地主活动

-- 更新时间：
-- 2018年1月11月（周四）例行维护
-- 活动时间： 2018.1.11 - 2018.2.8

-- 任务概述：
-- 复用移动端征服，并进行以下修改。
-- 1. 修改每场奖励及积分配置
-- 2. 击杀boss掉落30天时效翅膀
-- 具体详见附件
-- 论坛链接：http://forum.nderp.99.com/Forum/TopicList-E44F4BC77EF33DFD.aspx
------------------------------------------------------------------------------------
--命名规范：GangsLandLord_


----------------------------------表配置部分--------------------------------------------
--配置表常量
local tGangsLandLord_Const = {}
	tGangsLandLord_Const["OpenTime"] = "2 21:30 2 21:59"
	
	tGangsLandLord_Const["LimitLevel"] = 80
	tGangsLandLord_Const["limitMete"] = 0
	
	--传送地图变量
	tGangsLandLord_Const["City"] = {}
	tGangsLandLord_Const["City"][1] = 1002
	tGangsLandLord_Const["City"][2] = 10364
	-- tGangsLandLord_Const["City"] = 1002 --双龙城ID
	tGangsLandLord_Const["MapId"] = 10224 --帮派活动地图
	tGangsLandLord_Const["TransPos"] = {}
	tGangsLandLord_Const["TransPos"][1] = {}
	tGangsLandLord_Const["TransPos"][1]["PosX"] = 254
	tGangsLandLord_Const["TransPos"][1]["PosY"] = 170
	tGangsLandLord_Const["TransPos"][2] = {}
	tGangsLandLord_Const["TransPos"][2]["PosX"] = 192
	tGangsLandLord_Const["TransPos"][2]["PosY"] = 96
	tGangsLandLord_Const["TransPos"][3] = {}
	tGangsLandLord_Const["TransPos"][3]["PosX"] = 106
	tGangsLandLord_Const["TransPos"][3]["PosY"] = 157
	tGangsLandLord_Const["TransPos"][4] = {}
	tGangsLandLord_Const["TransPos"][4]["PosX"] = 217
	tGangsLandLord_Const["TransPos"][4]["PosY"] = 247
	--传送到盘龙柱的坐标
	tGangsLandLord_Const["TransColumn"] = {}
	tGangsLandLord_Const["TransColumn"][1] = {}
	tGangsLandLord_Const["TransColumn"][1]["PosX"] =  216
	tGangsLandLord_Const["TransColumn"][1]["PosY"] =  203
	tGangsLandLord_Const["TransColumn"][2] = {}
	tGangsLandLord_Const["TransColumn"][2]["PosX"] =  214
	tGangsLandLord_Const["TransColumn"][2]["PosY"] =  148
	tGangsLandLord_Const["TransColumn"][3] = {}
	tGangsLandLord_Const["TransColumn"][3]["PosX"] =  176
	tGangsLandLord_Const["TransColumn"][3]["PosY"] =  126
	tGangsLandLord_Const["TransColumn"][4] = {}
	tGangsLandLord_Const["TransColumn"][4]["PosX"] =  186
	tGangsLandLord_Const["TransColumn"][4]["PosY"] =  215
	tGangsLandLord_Const["TransColumn"][5] = {}
	tGangsLandLord_Const["TransColumn"][5]["PosX"] =  140
	tGangsLandLord_Const["TransColumn"][5]["PosY"] =  204
	tGangsLandLord_Const["TransColumn"][6] = {}
	tGangsLandLord_Const["TransColumn"][6]["PosX"] =  140
	tGangsLandLord_Const["TransColumn"][6]["PosY"] =  147

	
	--传送到双龙城的坐标
	tGangsLandLord_Const["CityPos"] = {}
	tGangsLandLord_Const["CityPos"][1] = {}
	tGangsLandLord_Const["CityPos"][1]["PosX"] = 321
	tGangsLandLord_Const["CityPos"][1]["PosY"] = 452
	
	tGangsLandLord_Const["CityPos"][2] = {}
	tGangsLandLord_Const["CityPos"][2]["PosX"] = 299
	tGangsLandLord_Const["CityPos"][2]["PosY"] = 273
	
	--物品ID表
	tGangsLandLord_Const["ItemId"] = {}
	tGangsLandLord_Const["ItemId"][1] = 3306501 -- 魔龙晶石  
	tGangsLandLord_Const["ItemId"][2] = 3306502 -- 翅膀道具
	tGangsLandLord_Const["ItemId"][3] = 3306503 -- 100气力值礼包
	tGangsLandLord_Const["ItemId"][4] = 3306504 -- 300气力值礼包
	tGangsLandLord_Const["ItemId"][5] = 3306517 -- 背包信
	
	--排行榜动态表  id->name  id->data
	tGangsLandLord_Const["DynaGlobalData1"] = 51888
	tGangsLandLord_Const["DynaGlobalData2"] = 51889
	tGangsLandLord_Const["DynaGlobalData3"] = 51890
	tGangsLandLord_Const["DynaGlobalData4"] = 51891
	tGangsLandLord_Const["DynaGlobalDataGuildId1"] = 51935
	tGangsLandLord_Const["DynaGlobalDataGuildId2"] = 51936
	--帮派系数表  帮派id -> 帮派名字   6个
	--魔龙        2.0              1个
	tGangsLandLord_Const["DynaGlobalData5"] = 51892
	tGangsLandLord_Const["DynaGlobalData6"] = 51893
	--全服积分    1个    活动开启次数    1个   全服领取金币数    1个    全服领取天石数     1个
	tGangsLandLord_Const["DynaGlobalData7"] = 51894
	--羽翼获奖得主  id -> name     4个
	tGangsLandLord_Const["DynaGlobalData8"] = 51897
	--分别记录四场活动的总积分
	tGangsLandLord_Const["DynaGlobalData10"] = 51931
	--魔龙boss刷新标识 data0 1已刷新 0未刷新
	tGangsLandLord_Const["DynaGlobalData11"] = 53023
	
	--盘龙柱信息对应表
	tGangsLandLord_Const["DragonColumnNpc"] = {}
	tGangsLandLord_Const["DragonColumnNpc"][1] = {}
	tGangsLandLord_Const["DragonColumnNpc"][1]["Coefficient"] = 1.1
	tGangsLandLord_Const["DragonColumnNpc"][2] = {}
	tGangsLandLord_Const["DragonColumnNpc"][2]["Coefficient"] = 1.1
	tGangsLandLord_Const["DragonColumnNpc"][3] = {}
	tGangsLandLord_Const["DragonColumnNpc"][3]["Coefficient"] = 1.3
	tGangsLandLord_Const["DragonColumnNpc"][4] = {}
	tGangsLandLord_Const["DragonColumnNpc"][4]["Coefficient"] = 1.3
	tGangsLandLord_Const["DragonColumnNpc"][5] = {}
	tGangsLandLord_Const["DragonColumnNpc"][5]["Coefficient"] = 1.5
	tGangsLandLord_Const["DragonColumnNpc"][6] = {}
	tGangsLandLord_Const["DragonColumnNpc"][6]["Coefficient"] = 1.5
	--怪物信息
	tGangsLandLord_Const["MonsterId"] = {}
	tGangsLandLord_Const["MonsterId"][1] = 2843
	tGangsLandLord_Const["MonsterId"][2] = {}
	tGangsLandLord_Const["MonsterId"][2]["Id"] = 2844
	tGangsLandLord_Const["MonsterId"][2]["PosX"] = 179
	tGangsLandLord_Const["MonsterId"][2]["PosY"] = 172
	tGangsLandLord_Const["MonsterId"][2]["GenId"] = 22960
	--击杀BOSS掉落参数
	tGangsLandLord_Const["Cellx"] = 25
	tGangsLandLord_Const["Celly"] = 25
	tGangsLandLord_Const["ExistTime"] = 300
	--击杀BOSS掉落物品表
	tGangsLandLord_Const["BossDrop"] = {}
	-- 100气力值礼包
	tGangsLandLord_Const["BossDrop"][1] = {}
	tGangsLandLord_Const["BossDrop"][1]["ItemId"] = 3306503
	tGangsLandLord_Const["BossDrop"][1]["Num"] = 10
	-- 300气力值礼包
	tGangsLandLord_Const["BossDrop"][2] = {}
	tGangsLandLord_Const["BossDrop"][2]["ItemId"] = 3306504
	tGangsLandLord_Const["BossDrop"][2]["Num"] = 5
	-- +1赤炼石
	tGangsLandLord_Const["BossDrop"][3] = {}
	tGangsLandLord_Const["BossDrop"][3]["ItemId"] = 730001
	tGangsLandLord_Const["BossDrop"][3]["Num"] = 10
	-- +2赤炼石
	tGangsLandLord_Const["BossDrop"][4] = {}
	tGangsLandLord_Const["BossDrop"][4]["ItemId"] = 730002
	tGangsLandLord_Const["BossDrop"][4]["Num"] = 5
	-- +3赤炼石
	tGangsLandLord_Const["BossDrop"][5] = {}
	tGangsLandLord_Const["BossDrop"][5]["ItemId"] = 730003
	tGangsLandLord_Const["BossDrop"][5]["Num"] = 2
	-- 龙珠
	tGangsLandLord_Const["BossDrop"][6] = {}
	tGangsLandLord_Const["BossDrop"][6]["ItemId"] = 1088000
	tGangsLandLord_Const["BossDrop"][6]["Num"] = 5
	-- 通神丹
	tGangsLandLord_Const["BossDrop"][7] = {}
	tGangsLandLord_Const["BossDrop"][7]["ItemId"] = 3003125
	tGangsLandLord_Const["BossDrop"][7]["Num"] = 15
	-- 究极通神丹
	tGangsLandLord_Const["BossDrop"][8] = {}
	tGangsLandLord_Const["BossDrop"][8]["ItemId"] = 3003126
	tGangsLandLord_Const["BossDrop"][8]["Num"] = 10
	-- 免费强炼丹
	tGangsLandLord_Const["BossDrop"][9] = {}
	tGangsLandLord_Const["BossDrop"][9]["ItemId"] = 3003124
	tGangsLandLord_Const["BossDrop"][9]["Num"] = 5
	-- 奇门秘籍
	tGangsLandLord_Const["BossDrop"][10] = {}
	tGangsLandLord_Const["BossDrop"][10]["ItemId"] = 723340
	tGangsLandLord_Const["BossDrop"][10]["Num"] = 10
	-- 流星
	tGangsLandLord_Const["BossDrop"][11] = {}
	tGangsLandLord_Const["BossDrop"][11]["ItemId"] = 1088001
	tGangsLandLord_Const["BossDrop"][11]["Num"] = 10
	-- 流星卷
	tGangsLandLord_Const["BossDrop"][12] = {}
	tGangsLandLord_Const["BossDrop"][12]["ItemId"] = 720027
	tGangsLandLord_Const["BossDrop"][12]["Num"] = 5
	
	tGangsLandLord_Const["Mail"] = {}
	tGangsLandLord_Const["Mail"]["ExistDay"] = 7
	tGangsLandLord_Const["Mail"]["ActionID"] = 94485542
	
	tGangsLandLord_Const["RankNum"] = 10
	
	--选项文本索引表 用于定位传送柱子的选项文本
	tGangsLandLord_Const["OptionIndex"] = {}
	tGangsLandLord_Const["OptionIndex"][1] = 211
	tGangsLandLord_Const["OptionIndex"][2] = 212
	tGangsLandLord_Const["OptionIndex"][3] = 213
	tGangsLandLord_Const["OptionIndex"][4] = 214
	tGangsLandLord_Const["OptionIndex"][5] = 215
	tGangsLandLord_Const["OptionIndex"][6] = 216
	
	--4次活动开启时间记录
	tGangsLandLord_Const["OpenDate"] = {}
	tGangsLandLord_Const["OpenDate"][0] = {}
	tGangsLandLord_Const["OpenDate"][0]["Year"] = 2019
	tGangsLandLord_Const["OpenDate"][0]["Month"] = 5
	tGangsLandLord_Const["OpenDate"][0]["Day"] = 14
	tGangsLandLord_Const["OpenDate"][1] = {}
	tGangsLandLord_Const["OpenDate"][1]["Year"] = 2019
	tGangsLandLord_Const["OpenDate"][1]["Month"] = 5
	tGangsLandLord_Const["OpenDate"][1]["Day"] = 21
	tGangsLandLord_Const["OpenDate"][2] = {}
	tGangsLandLord_Const["OpenDate"][2]["Year"] = 2019
	tGangsLandLord_Const["OpenDate"][2]["Month"] = 5
	tGangsLandLord_Const["OpenDate"][2]["Day"] = 28
	tGangsLandLord_Const["OpenDate"][3] = {}
	tGangsLandLord_Const["OpenDate"][3]["Year"] = 2019
	tGangsLandLord_Const["OpenDate"][3]["Month"] = 6
	tGangsLandLord_Const["OpenDate"][3]["Day"] = 4
	tGangsLandLord_Const["OpenDate"][4] = {}
	tGangsLandLord_Const["OpenDate"][4]["Year"] = 2019
	tGangsLandLord_Const["OpenDate"][4]["Month"] = 6
	tGangsLandLord_Const["OpenDate"][4]["Day"] = 11
	
	--城墙内杀人才算积分
	tGangsLandLord_Const["PkRange"] = {}
	tGangsLandLord_Const["PkRange"][1] = 130
	tGangsLandLord_Const["PkRange"][2] = 232
	tGangsLandLord_Const["PkRange"][3] = 115
	tGangsLandLord_Const["PkRange"][4] = 234

	
	--奖励档次 A 8000 B 6000 C 4000
	tGangsLandLord_Const["RewardLevel"] = {}
	tGangsLandLord_Const["RewardLevel"][1] = {}
	tGangsLandLord_Const["RewardLevel"][1]["Need"] = 50000
	tGangsLandLord_Const["RewardLevel"][1]["Emoney"] = 10000
	tGangsLandLord_Const["RewardLevel"][2] = {}
	tGangsLandLord_Const["RewardLevel"][2]["Need"] = 30000
	tGangsLandLord_Const["RewardLevel"][2]["Emoney"] = 7000
	tGangsLandLord_Const["RewardLevel"][3] = {}
	tGangsLandLord_Const["RewardLevel"][3]["Emoney"] = 5000
	
--掩码表配置
local tGangsLandLord_Stc = {}
	--积分掩码
	tGangsLandLord_Stc["ActivePoint"] = {}
	tGangsLandLord_Stc["ActivePoint"]["EventType"] = 169
	tGangsLandLord_Stc["ActivePoint"]["DataType"] = 86
	--击杀小兵1分
	tGangsLandLord_Stc["ActivePoint"]["KillMonster"] = 1
	--锁魂1分
	tGangsLandLord_Stc["ActivePoint"]["LockGhost"] = 1
	--水道复活友帮2分
	tGangsLandLord_Stc["ActivePoint"]["SkillRelive"] = 2
	--击杀敌帮10分
	tGangsLandLord_Stc["ActivePoint"]["KillAgainst"] = 10
	--击杀BOSS 100分
	tGangsLandLord_Stc["ActivePoint"]["KillBoss"] = 100
	
	--领奖掩码
	tGangsLandLord_Stc["Reward"] = {}
	tGangsLandLord_Stc["Reward"]["EventType"] = 169
	tGangsLandLord_Stc["Reward"]["DataType"] = 87
	tGangsLandLord_Stc["Reward"]["NotReceived"] = 0
	tGangsLandLord_Stc["Reward"]["Received"] = 1
	
	--记录玩家帮派ID
	tGangsLandLord_Stc["GuildId"] = {}
	tGangsLandLord_Stc["GuildId"]["EventType"] = 171
	tGangsLandLord_Stc["GuildId"]["DataType"] = 04
	
	--记录进入活动副本情况
	tGangsLandLord_Stc["ChkMap"] = {}
	tGangsLandLord_Stc["ChkMap"]["EventType"] = 185
	tGangsLandLord_Stc["ChkMap"]["DataType"] = 23
	
	--狂欢奖励
	tGangsLandLord_Stc["CarnivalReward"] = {}
	tGangsLandLord_Stc["CarnivalReward"]["EventType"] = 193
	tGangsLandLord_Stc["CarnivalReward"]["DataType"] = 41
	tGangsLandLord_Stc["CarnivalReward"]["Received"] = 1
	
	
--奖励配置表
local tGangsLandLord_Reward = {}

	
	--狂欢奖励
	tGangsLandLord_Reward["CarnivalReward"] = {}
	--帮众
	tGangsLandLord_Reward["CarnivalReward"][1] = {}
	tGangsLandLord_Reward["CarnivalReward"][1]["LogId"] = 12000935
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"] = {}
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"][1] = {}
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"][1]["Id"] = 3320798
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"][1]["Attr"] = "0 10"
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"][2] = {}
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"][2]["Id"] = 3320910 
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardItem"][2]["Attr"] = "0 1 0 10080 1"
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardEffect"]={}
	tGangsLandLord_Reward["CarnivalReward"][1]["RewardEffect"]["Effect"] = "angelwing"
	--帮主
	tGangsLandLord_Reward["CarnivalReward"][2] = {}
	tGangsLandLord_Reward["CarnivalReward"][2]["LogId"] = 12000935
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"] = {}
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"][1] = {}
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"][1]["Id"] = 3320800
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"][1]["Attr"] = "0 5"
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"][2] = {}
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"][2]["Id"] = 3320910 
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardItem"][2]["Attr"] = "0 1 0 10080 1"
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardEffect"]={}
	tGangsLandLord_Reward["CarnivalReward"][2]["RewardEffect"]["Effect"] = "angelwing"

	--获得魔龙晶石
	tGangsLandLord_Reward["KillBoss"] = {}
	tGangsLandLord_Reward["KillBoss"]["LogId"] = 12000935
	tGangsLandLord_Reward["KillBoss"]["RewardItem"] = {}
	tGangsLandLord_Reward["KillBoss"]["RewardItem"][1] = {}
	tGangsLandLord_Reward["KillBoss"]["RewardItem"][1]["Id"] = 3306501
	tGangsLandLord_Reward["KillBoss"]["RewardItem"][1]["Attr"] = "0 1"
	tGangsLandLord_Reward["KillBoss"]["RewardEffect"]={}
	tGangsLandLord_Reward["KillBoss"]["RewardEffect"]["Effect"] = "angelwing"
	--魔龙晶石兑换
	tGangsLandLord_Reward[3306501] = {}
	tGangsLandLord_Reward[3306501]["LogId"] = 12000935
	tGangsLandLord_Reward[3306501]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306501]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306501]["DeleteItem"][1]["Id"] = 3306501
	tGangsLandLord_Reward[3306501]["RewardItem"] = {}
	tGangsLandLord_Reward[3306501]["RewardItem"][1] = {}
	tGangsLandLord_Reward[3306501]["RewardItem"][1]["Id"] = 3306502
	tGangsLandLord_Reward[3306501]["RewardItem"][1]["Attr"] = "0 1"
	tGangsLandLord_Reward[3306501]["RewardEffect"]={}
	tGangsLandLord_Reward[3306501]["RewardEffect"]["Effect"] = "FF07"
	tGangsLandLord_Reward[3306501]["Talk"] = tGangsLandLord_Text[3306501]["Talk"]
	--护国之翼物品（英文端改为 3200479 WingsofPlanet）
	tGangsLandLord_Reward[3306502] = {}
	tGangsLandLord_Reward[3306502]["LogId"] = 12000935
	tGangsLandLord_Reward[3306502]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306502]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306502]["DeleteItem"][1]["Id"] = 3306502
	tGangsLandLord_Reward[3306502]["RewardWing"] = {}
	tGangsLandLord_Reward[3306502]["RewardWing"]["TitleType"] = 6009
	tGangsLandLord_Reward[3306502]["RewardWing"]["TitleId"] = 6009
	tGangsLandLord_Reward[3306502]["RewardWing"]["SaveTime"] = 43200
	tGangsLandLord_Reward[3306502]["RewardEffect"]={}
	tGangsLandLord_Reward[3306502]["RewardEffect"]["Effect"] = "angelwing"
	--100气力值礼包
	tGangsLandLord_Reward[3306503] = {}
	tGangsLandLord_Reward[3306503]["LogId"] = 12000935
	tGangsLandLord_Reward[3306503]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306503]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306503]["DeleteItem"][1]["Id"] = 3306503
	tGangsLandLord_Reward[3306503]["RewardStrengthValue"] = {}
	tGangsLandLord_Reward[3306503]["RewardStrengthValue"]["Value"] = 100
	tGangsLandLord_Reward[3306503]["RewardEffect"]={}
	tGangsLandLord_Reward[3306503]["RewardEffect"]["Effect"] = "angelwing"
	--300气力值礼包
	tGangsLandLord_Reward[3306504] = {}
	tGangsLandLord_Reward[3306504]["LogId"] = 12000935
	tGangsLandLord_Reward[3306504]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306504]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306504]["DeleteItem"][1]["Id"] = 3306504
	tGangsLandLord_Reward[3306504]["RewardStrengthValue"] = {}
	tGangsLandLord_Reward[3306504]["RewardStrengthValue"]["Value"] = 300
	tGangsLandLord_Reward[3306504]["RewardEffect"]={}
	tGangsLandLord_Reward[3306504]["RewardEffect"]["Effect"] = "angelwing"
	--守护龙城礼包
	tGangsLandLord_Reward[3306731] = {}
	--250气力值
	tGangsLandLord_Reward[3306731][1] = {}
	tGangsLandLord_Reward[3306731][1]["LogId"] = 12000935
	tGangsLandLord_Reward[3306731][1]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306731][1]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306731][1]["DeleteItem"][1]["Id"] = 3306731
	tGangsLandLord_Reward[3306731][1]["RewardItem"] = {}
	tGangsLandLord_Reward[3306731][1]["RewardItem"][1] = {}
	tGangsLandLord_Reward[3306731][1]["RewardItem"][1]["Id"] = 3008189
	tGangsLandLord_Reward[3306731][1]["RewardItem"][1]["Attr"] = "0 1"
	tGangsLandLord_Reward[3306731][1]["RewardEffect"]={}
	tGangsLandLord_Reward[3306731][1]["RewardEffect"]["Effect"] = "angelwing"
	--明亮星陨石*2
	tGangsLandLord_Reward[3306731][2] = {}
	tGangsLandLord_Reward[3306731][2]["LogId"] = 12000935
	tGangsLandLord_Reward[3306731][2]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306731][2]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306731][2]["DeleteItem"][1]["Id"] = 3306731
	tGangsLandLord_Reward[3306731][2]["RewardItem"] = {}
	tGangsLandLord_Reward[3306731][2]["RewardItem"][1] = {}
	tGangsLandLord_Reward[3306731][2]["RewardItem"][1]["Id"] = 3009001
	tGangsLandLord_Reward[3306731][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tGangsLandLord_Reward[3306731][2]["RewardEffect"]={}
	tGangsLandLord_Reward[3306731][2]["RewardEffect"]["Effect"] = "angelwing"
	--赤炼石+3
	tGangsLandLord_Reward[3306731][3] = {}
	tGangsLandLord_Reward[3306731][3]["LogId"] = 12000935
	tGangsLandLord_Reward[3306731][3]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306731][3]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306731][3]["DeleteItem"][1]["Id"] = 3306731
	tGangsLandLord_Reward[3306731][3]["RewardItem"] = {}
	tGangsLandLord_Reward[3306731][3]["RewardItem"][1] = {}
	tGangsLandLord_Reward[3306731][3]["RewardItem"][1]["Id"] = 730003
	tGangsLandLord_Reward[3306731][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tGangsLandLord_Reward[3306731][3]["RewardEffect"]={}
	tGangsLandLord_Reward[3306731][3]["RewardEffect"]["Effect"] = "angelwing"
	--3个究极通神丹
	tGangsLandLord_Reward[3306731][4] = {}
	tGangsLandLord_Reward[3306731][4]["LogId"] = 12000935
	tGangsLandLord_Reward[3306731][4]["DeleteItem"] = {}
	tGangsLandLord_Reward[3306731][4]["DeleteItem"][1] = {}
	tGangsLandLord_Reward[3306731][4]["DeleteItem"][1]["Id"] = 3306731
	tGangsLandLord_Reward[3306731][4]["RewardItem"] = {}
	tGangsLandLord_Reward[3306731][4]["RewardItem"][1] = {}
	tGangsLandLord_Reward[3306731][4]["RewardItem"][1]["Id"] = 3003126
	tGangsLandLord_Reward[3306731][4]["RewardItem"][1]["Attr"] = "0 3 3"
	tGangsLandLord_Reward[3306731][4]["RewardEffect"]={}
	tGangsLandLord_Reward[3306731][4]["RewardEffect"]["Effect"] = "angelwing"
	
	
	--每周活动结束发奖
	tGangsLandLord_Reward["OverReward"] = {}
	tGangsLandLord_Reward["OverReward"]["LogId"] = 12000935
	-- tGangsLandLord_Reward["OverReward"]["RewardMoney"] = {}
	-- tGangsLandLord_Reward["OverReward"]["RewardMoney"]["Value"] = 0
	tGangsLandLord_Reward["OverReward"]["RewardEMoney"] = {}
	tGangsLandLord_Reward["OverReward"]["RewardEMoney"]["Value"] = 0
	tGangsLandLord_Reward["OverReward"]["RewardEffect"]={}
	tGangsLandLord_Reward["OverReward"]["RewardEffect"]["Effect"] = "angelwing"
	--天石少时发守护龙城礼包
	tGangsLandLord_Reward["GiveActivePakege"] = {}
	tGangsLandLord_Reward["GiveActivePakege"]["LogId"] = 12000935
	tGangsLandLord_Reward["GiveActivePakege"]["RewardItem"] = {}
	tGangsLandLord_Reward["GiveActivePakege"]["RewardItem"][1] = {}
	tGangsLandLord_Reward["GiveActivePakege"]["RewardItem"][1]["Id"] = 3306731
	tGangsLandLord_Reward["GiveActivePakege"]["RewardItem"][1]["Attr"] = "0 1"
	tGangsLandLord_Reward["GiveActivePakege"]["RewardEffect"]={}
	tGangsLandLord_Reward["GiveActivePakege"]["RewardEffect"]["Effect"] = "angelwing"
	
--log记录
local tGangsLandLord_Log = {}
	tGangsLandLord_Log["KillBoss"] = "0,0,0,0,12000935,1,3306501,1"
	tGangsLandLord_Log["KillColumn"] = "0,0,0,0,12000935,1,0,0"
--进入副本地图
	tGangsLandLord_Log["ChkMap"] = "350	21876	0	0	1	"
--在副本击杀其他帮派成员
	tGangsLandLord_Log["Killing"] = "350	21877	0	0	1	"
--在副本复活本帮成员
	tGangsLandLord_Log["Resurrection"] = "350	21878	0	0	1	"
----------------------------------逻辑部分---------------------------------------------
--传送置活动地图  nIndex 传送坐标索引
function GangsLandLord_TransActiveMap(nNpcId,nIndex)
	local nEventType = tGangsLandLord_Stc["ChkMap"]["EventType"]
	local nDataType = tGangsLandLord_Stc["ChkMap"]["DataType"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	--时间判断
	if not GangsLandLord_JudgeActivityTime() then
		return 
	end
	--判断玩家等级
	if not GangsLandLord_JudgeUserLevel() then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		return
	end
	--判断玩家是否和NPC在一个地图(防切屏)
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		return
	end
	GangsLandLord_StcInterval()
	--记录进地图的位置
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()
	local nFlag = GangsLandLord_CheckSever()
	User_RecordPoint(tGangsLandLord_Const["City"][nFlag],nUserPosX,nUserPosY)
	--传送到指定区域
	local nMapId = tGangsLandLord_Const["MapId"]
	local nPosX = tGangsLandLord_Const["TransPos"][nIndex]["PosX"]
	local nPosY = tGangsLandLord_Const["TransPos"][nIndex]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY,0)
	
	if Task_ChkStcValue(tGangsLandLord_Stc["GuildId"]["EventType"],tGangsLandLord_Stc["GuildId"]["DataType"],"<=",0) then
		--记录玩家的帮派ID
		Task_SetStatistic(tGangsLandLord_Stc["GuildId"]["EventType"],tGangsLandLord_Stc["GuildId"]["DataType"],nGuildId,1)
		Task_SetStcTimestamp(tGangsLandLord_Stc["GuildId"]["EventType"],tGangsLandLord_Stc["GuildId"]["DataType"],0)
	end
	if nData ~= 1 then 
		Sys_SaveEmoneyBuy(tGangsLandLord_Log["ChkMap"])
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end 
end

--查看排行榜
function GangsLandLord_SelectRank(nNpcId,nGossipIndex)
	--动态表ID 和 索引值
	local nSysDyGlobId1 = tGangsLandLord_Const["DynaGlobalData1"]
	local nSysDyGlobId2 = tGangsLandLord_Const["DynaGlobalData2"]
	local nSysDyGlobId3 = tGangsLandLord_Const["DynaGlobalData3"]
	local nSysDyGlobId4 = tGangsLandLord_Const["DynaGlobalData4"]
	local nGlobalDataGuildId1 = tGangsLandLord_Const["DynaGlobalDataGuildId1"]
	local nGlobalDataGuildId2 = tGangsLandLord_Const["DynaGlobalDataGuildId2"]
	--对话索引 Text225 从225开始
	local sText = "Text"
	local nTextIndex = 225
	local nIndex = nGossipIndex
	--临时存储变量
	local nUserId = 0
	local sPoint = 0
	local sDataName = ""
	local nGuildId = 0
	local sGuildName = ""
	--取出排行榜的数据，拼接到对话中
	for i = 0,tGangsLandLord_Const["RankNum"]-1 do
		--排名表初始化创建
		local sDailogText = sText..nTextIndex
		local sGossipText = sText..nIndex
		if i < 5 then
			nPos = i

			sDataName,sPoint = GangsLandLord_SelectRankInfo(nPos,nSysDyGlobId1,nSysDyGlobId3,nGlobalDataGuildId1)
		else
			nPos = i - 5

			sDataName,sPoint = GangsLandLord_SelectRankInfo(nPos,nSysDyGlobId2,nSysDyGlobId4,nGlobalDataGuildId2)
		end
		tNpcGossip[nNpcId][sGossipText] = Sys_CenterAline(tGangsLandLord_Text[nNpcId][sDailogText],5,sPoint,30,sDataName,60).."\n"
		--对话索引+1
		nTextIndex = nTextIndex + 1
		nIndex = nIndex + 1
	end
end
function GangsLandLord_SelectRankInfo(nPos,nGlobalDataFont,nGlobalDataBack,nGlobalDataGuildId)
	local nUserId = 0
	local sPoint = 0
	local sDataName = ""
	local nGuildId = 0
	local sGuildName = ""

	nUserId = Get_SysDynaGlobalData(nGlobalDataFont,nPos)
	sDataName = Get_SysDynaGlobalDataStr(nGlobalDataFont,nPos)
	sPoint = Get_SysDynaGlobalDataStr(nGlobalDataBack,nPos)
	if sDataName == "null" or sDataName == nil or sDataName == "" then
		sDataName = tGangsLandLord_Text["NoneData"]
	end
	if sPoint == "null" or sPoint == nil or sPoint == "" or sPoint == "0" then
		sPoint = tGangsLandLord_Text["NoneData"]
	end
	if nUserId == 0 then
		sGuildName = " "
	else
		nGuildId = Get_SysDynaGlobalData(nGlobalDataGuildId,nPos)
		if nGuildId <= 0 then
			sGuildName = " "
		else
			sGuildName = Get_UserSynDicateName(nGuildId)
			sDataName = sGuildName.."<"..sDataName..">"
		end
	end
	
	return sDataName,sPoint
end
--查看需要跳转、另一个是checkFunc
function GangsLandLord_LinkGossip22(nNpcId,nGossipIndex)
	GangsLandLord_SelectRank(nNpcId,nGossipIndex)
	--获取积分数据，填充文本
	local nGuildId = GangsLandLord_GetUserRecordGuild()
	local sText = string.format(tGangsLandLord_Text[nNpcId]["Text222"],GangsLandLord_GetUserPoint(),GangsLandLord_GetServerPoint(),GangsLandLord_GetCoefficient(nGuildId))
	tNpcGossip[nNpcId]["Text222"] = sText
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end
function GangsLandLord_LinkGossipCheckFunc13(nNpcId,nGossipIndex)
	GangsLandLord_SelectRank(nNpcId,nGossipIndex)
	--取积分数据
	local nGuildId = GangsLandLord_GetUserRecordGuild()
	local sText = string.format(tGangsLandLord_Text[nNpcId]["Text222"],GangsLandLord_GetUserPoint(),GangsLandLord_GetServerPoint(),GangsLandLord_GetCoefficient(nGuildId))
	tNpcGossip[nNpcId]["Text252"] = sText
	return true
end

--更新排行榜
function GangsLandLord_ResetRank(nPlayerId,nPlayerData,nPlayerGuild)
	local nUserId = nPlayerId or Get_UserId()
	local nPoint = nPlayerData or 0
	local sUserName = Get_UserName(nUserId)
	local nGuildId = nPlayerGuild or 0
	--获取排行榜表
	--tRankList["名次"]["nUserId"]
	--tRankList["名次"]["sUserName"]
	--tRankList["名次"]["nPoint"]
	--tRankList["名次"]["nGuildId"]
	local tRankList = GangsLandLord_GetRankList()
	--排行榜长度
	local nSize = 10
	--将本次的记录置为第11名
	tRankList[nSize] = {}
	tRankList[nSize]["nUserId"] = nUserId
	tRankList[nSize]["sUserName"] = sUserName
	tRankList[nSize]["nPoint"] = nPoint
	tRankList[nSize]["nGuildId"] = nGuildId
	local nRankNum = 0
	for i = 0,9 do
		if nUserId == tRankList[i]["nUserId"] then
			nSize = 9
			--传进来数的比排行榜的大，则覆盖
			if nPoint > tRankList[i]["nPoint"] then
				tRankList[i]["sUserName"] = sUserName
				tRankList[i]["nPoint"] = nPoint
				tRankList[i]["nGuildId"] = nGuildId
			end
			break
		end
	end
	--冒泡排序法
	for i = nSize-1,0,-1 do
		for j = 0,i do 
			if tRankList[j+1]["nPoint"] > tRankList[j]["nPoint"] then
				tRankList[j+1],tRankList[j] = tRankList[j],tRankList[j+1]
				--第一名交换的时候 公告
				if j == 0 then
					if nGuildId ~= 0 then
						local sGuildName = Get_UserSynDicateName(nGuildId)
						local sText = string.format(tGangsLandLord_Text["Broadcast"]["No1Change"],sGuildName,tRankList[j]["sUserName"])
						Sys_SystemBroadcast(sText)
					end
				end
			end
		end
	end
	--交换完毕后，更新到数据库
	GangsLandLord_UpdateGlobalData(tRankList)
end
--排行榜数据更新到数据库
function GangsLandLord_UpdateGlobalData(tRankList)
	local tRankList = tRankList
	--动态表ID 和 索引值
	local nSysDyGlobId1 = tGangsLandLord_Const["DynaGlobalData1"]
	local nSysDyGlobId2 = tGangsLandLord_Const["DynaGlobalData2"]
	local nSysDyGlobId3 = tGangsLandLord_Const["DynaGlobalData3"]
	local nSysDyGlobId4 = tGangsLandLord_Const["DynaGlobalData4"]
	local nGlobalDataGuildId1 = tGangsLandLord_Const["DynaGlobalDataGuildId1"]
	local nGlobalDataGuildId2 = tGangsLandLord_Const["DynaGlobalDataGuildId2"]
	--取前10名数据
	for i = 0,tGangsLandLord_Const["RankNum"]-1 do
		if i < 5 then
			nPos = i
			GangsLandLord_UpdateGlobalDataInfo(nPos,i,nSysDyGlobId1,nSysDyGlobId3,nGlobalDataGuildId1,tRankList)
		else
			nPos = i - 5
			GangsLandLord_UpdateGlobalDataInfo(nPos,i,nSysDyGlobId2,nSysDyGlobId4,nGlobalDataGuildId2,tRankList)
		end
	end
end
function GangsLandLord_UpdateGlobalDataInfo(nPos,i,nGlobalDataFont,nGlobalDataBack,nGlobalDataGuildId,tRankList)
	Sys_SetSynaGlobalData(nGlobalDataFont,nPos,tRankList[i]["nUserId"])
	Sys_SetSynaGlobalDataStr(nGlobalDataFont,nPos,tRankList[i]["sUserName"])
	Sys_SetSynaGlobalData(nGlobalDataBack,nPos,tRankList[i]["nUserId"])
	Sys_SetSynaGlobalDataStr(nGlobalDataBack,nPos,tostring(tRankList[i]["nPoint"]))
	Sys_SetSynaGlobalData(nGlobalDataGuildId,nPos,tRankList[i]["nGuildId"])
end
--从动态表中取出排行榜数据
function GangsLandLord_GetRankList()
	--动态表ID 和 索引值
	local nSysDyGlobId1 = tGangsLandLord_Const["DynaGlobalData1"]
	local nSysDyGlobId2 = tGangsLandLord_Const["DynaGlobalData2"]
	local nSysDyGlobId3 = tGangsLandLord_Const["DynaGlobalData3"]
	local nSysDyGlobId4 = tGangsLandLord_Const["DynaGlobalData4"]
	local nGlobalDataGuildId1 = tGangsLandLord_Const["DynaGlobalDataGuildId1"]
	local nGlobalDataGuildId2 = tGangsLandLord_Const["DynaGlobalDataGuildId2"]
	--创建临时排行表，先用表整理，而后再遍历更新到数据库
	local tRankList = {}

	--取出排行榜的数据
	for i = 0,tGangsLandLord_Const["RankNum"]-1 do
		tRankList[i] = {}
		if i < 5 then
			nPos = i
			tRankList[i]["nUserId"] = Get_SysDynaGlobalData(nSysDyGlobId1,nPos)
			tRankList[i]["sUserName"] = Get_SysDynaGlobalDataStr(nSysDyGlobId1,nPos)
			tRankList[i]["nGuildId"] = Get_SysDynaGlobalData(nGlobalDataGuildId1,nPos)
			local sPoint = Get_SysDynaGlobalDataStr(nSysDyGlobId3,nPos)
			if sPoint == "null" or sPoint == "" or sPoint == nil then
				tRankList[i]["nPoint"] = 0
			else
				tRankList[i]["nPoint"] = tonumber(sPoint)
			end
			
		else
			nPos = i - 5
			tRankList[i]["nUserId"] = Get_SysDynaGlobalData(nSysDyGlobId2,nPos)
			tRankList[i]["sUserName"] = Get_SysDynaGlobalDataStr(nSysDyGlobId2,nPos)
			tRankList[i]["nGuildId"] = Get_SysDynaGlobalData(nGlobalDataGuildId2,nPos)
			local sPoint = Get_SysDynaGlobalDataStr(nSysDyGlobId4,nPos)
			if sPoint == "null" or sPoint == "" or sPoint == nil then
				tRankList[i]["nPoint"] = 0
			else
				tRankList[i]["nPoint"] = tonumber(sPoint)
			end
		end
	end
	
	return tRankList
end

--上交魔龙晶石
function GangsLandLord_SubmitDragonStone(nNpcId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nGuildId = Get_UserGuildId()
	local sGuildName = Get_UserSynDicateName(nGuildId)
	local nSysDyGlobId8 = tGangsLandLord_Const["DynaGlobalData8"]
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ItemOutTime"]) then
		if Item_ChkItem(tGangsLandLord_Const["ItemId"][1])then
			Item_DelItem(tGangsLandLord_Const["ItemId"][1])
		end
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["OutTimeUseStone"])
		return 
	end
	
	if not Item_ChkItem(tGangsLandLord_Const["ItemId"][1]) then
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["NoItem"])
		return
	end
	RewardTemplate_UseItemAndMsg(tGangsLandLord_Reward[3306501])
	local sText = string.format(tGangsLandLord_Text["Broadcast"]["StoneSubmit"],sGuildName,sUserName)
	Sys_SystemBroadcast(sText)
	
	--记录进全服动态码
	for i=0,3 do
		--没有的话则置动态码
		if Get_SysDynaGlobalData(nSysDyGlobId8,i) == 0 then
			Sys_SetSynaGlobalData(nSysDyGlobId8,i,nUserId)
			Sys_SetSynaGlobalDataStr(nSysDyGlobId8,i,sUserName)
			break
		end
	end
end
--打开礼包
function GangsLandLord_UseItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--礼包都是删一加一，所以没有做空间判断
	-- if RewardTemplate_CheckSpace(tGangsLandLord_Reward[nItemId]) then
		-- return
	-- end
	RewardTemplate_UseItem(tGangsLandLord_Reward[nItemId])
end
--使用守护龙城礼包
function GangsLandLord_UseActivityPackage(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	--空间判断
	if not RewardTemplate_CheckSpace(tGangsLandLord_Reward[nItemId][nIndex]) then
		return
	end
	RewardTemplate_UseItem(tGangsLandLord_Reward[nItemId][nIndex])
end

--活动后领奖
function GangsLandLord_TodayReward(nNpcId)
	local nEvent = tGangsLandLord_Stc["Reward"]["EventType"]
	local nData = tGangsLandLord_Stc["Reward"]["DataType"]
	
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		return 
	end
	--判断活动是否开启
	if Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
		return
	end
	--判断是否领取过掩码
	if Task_ChkStcValue(nEvent,nData,">=",tGangsLandLord_Stc["Reward"]["Received"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	--获取当前的积分/全服积分/获取玩家帮派倍数
	local nGuildId = GangsLandLord_GetUserRecordGuild()
	local nUserPoint = GangsLandLord_GetUserPoint()
	local nServerPoint = GangsLandLord_GetServerPoint()
	local nCoefficient = GangsLandLord_GetCoefficient(nGuildId)
	--防止个人积分大于总服务器积分的情况
	if nServerPoint < nUserPoint then
		return
	end
	if nUserPoint == 0 or nServerPoint == 0 then
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["NullPoint"])
		return
	end
	--初始天石奖励总额
	local EMoneyTotal = 0
	EMoneyTotal = GangsLandLord_JudgePrizePool(nServerPoint)
	
	local nRewardEMoney = math.floor((nUserPoint*EMoneyTotal/nServerPoint)*nCoefficient)
	-- local nRewardMoney = math.floor((nUserPoint/nServerPoint)*nCoefficient*MoneyToTal)  --英文端没有金币奖励
	local tRewardTable = CommonFunc_Copy(tGangsLandLord_Reward["OverReward"])
	if nRewardEMoney < 50 then
		--检查背包
		if not RewardTemplate_CheckSpace(tGangsLandLord_Reward["GiveActivePakege"]) then
			Sys_MsgBox(tGangsLandLord_Text["TalkChannel"]["BagFull"])
			return
		end
		
		--置领奖掩码
		Task_SetStatistic(nEvent,nData,tGangsLandLord_Stc["Reward"]["Received"],1)
		Task_SetStcTimestamp(nEvent,nData,0)
		
		RewardTemplate_UseItem(tGangsLandLord_Reward["GiveActivePakege"])
		
		--防刷处理：领奖后，将玩家的积分清零
		Task_SetStatistic(tGangsLandLord_Stc["ActivePoint"]["EventType"],tGangsLandLord_Stc["ActivePoint"]["DataType"],0,1)
		Task_SetStcTimestamp(tGangsLandLord_Stc["ActivePoint"]["EventType"],tGangsLandLord_Stc["ActivePoint"]["DataType"],0)
	else
		--奖池领取数
		local nServerEMoney = Get_SysDynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],2)
		-- local nServerMoney = Get_SysDynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],3)  --英文端没有金币奖励
		--奖池是否领取完(防刷判断)
		if nRewardEMoney + nServerEMoney > EMoneyTotal*2 then
			return
		end
		--判断金币或者天石是否上限   --英文端没有金币奖励
		-- if not User_CanPutMoney2Bag(nRewardMoney) then
			-- User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["MoneyFull"])
			-- return
		-- end
		-- 天石上限
		local nUserEMoney = Get_UserEMoney()
		if nUserEMoney > (G_User_MaxEmoney - nRewardEMoney) then
			User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["EMoneyFull"])
			return
		end
		
		--置领奖掩码
		Task_SetStatistic(nEvent,nData,tGangsLandLord_Stc["Reward"]["Received"],1)
		Task_SetStcTimestamp(nEvent,nData,0)
		
		--修改复制表的奖励数
		-- tRewardTable["RewardMoney"]["Value"] = nRewardMoney  --英文端没有金币奖励
		tRewardTable["RewardEMoney"]["Value"] = nRewardEMoney
		RewardTemplate_UseItem(tRewardTable)
		
		--记录全服已领奖池数 pos: 天石2 金币3
		Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],2,nRewardEMoney+nServerEMoney)
		-- Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],3,nRewardMoney+nServerMoney)   --英文端没有金币奖励
		
		--防刷处理：领奖后，将玩家的积分清零
		Task_SetStatistic(tGangsLandLord_Stc["ActivePoint"]["EventType"],tGangsLandLord_Stc["ActivePoint"]["DataType"],0,1)
		Task_SetStcTimestamp(tGangsLandLord_Stc["ActivePoint"]["EventType"],tGangsLandLord_Stc["ActivePoint"]["DataType"],0)
	end
end
--新服领取狂欢奖励
function GangsLandLord_GetHappyReward(nNpcId)
	local nCarnivalEvent = tGangsLandLord_Stc["CarnivalReward"]["EventType"]
	local nCarnivalData = tGangsLandLord_Stc["CarnivalReward"]["DataType"] 
	local nUserId = Get_UserId()
	local nGangId = Get_UserGuildId()
	if nGangId == 0 then 
		return
	end
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		return 
	end
	--判断活动是否开启
	if Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
		return
	end
	
	--判断是否是击杀boss帮派
	if not GangsLandLord_HaveKillBoss() then 
		return
	end 
	--判断是否是帮主
	local nSysDyGlobId6 = tGangsLandLord_Const["DynaGlobalData6"]
	local nGlobalGuilId = Get_SysDynaGlobalData(nSysDyGlobId6,0)
	-- local nGlobalGangId = Get_SynWangId(nGlobalGuilId,nUserId)
	local nGlobalGangId = Get_SysDynaGlobalData(nSysDyGlobId6,1)

	local nFlag = 1
	if nGlobalGangId == nUserId then 
		nFlag = 2
	end 
	
	--判断是否领取过掩码
	if Task_ChkStcValue(nCarnivalEvent,nCarnivalData,">=",tGangsLandLord_Stc["CarnivalReward"]["Received"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--检查背包
	if not RewardTemplate_CheckSpace(tGangsLandLord_Reward["CarnivalReward"][nFlag]) then
		Sys_MsgBox(tGangsLandLord_Text["TalkChannel"]["BagFull"])
		return
	end
		
	--置领奖掩码
	Task_SetStatistic(nCarnivalEvent,nCarnivalData,tGangsLandLord_Stc["CarnivalReward"]["Received"],1)
	Task_SetStcTimestamp(nCarnivalEvent,nCarnivalData,0)
		
	RewardTemplate_UseItem(tGangsLandLord_Reward["CarnivalReward"][nFlag])

end 

--和引路人说话，传送置本帮占领的柱子
function GangsLandLord_TransColumn(nNpcId,nColumnIndex)
	--判断玩家是否有帮派
	if Get_UserGuildId() == 0 then
		return
	end
	--判断玩家帮派是否有占领柱子
	if not GangsLandLord_HaveOccupyColumn() then
		return
	end
	--判断玩家是否和NPC在一个地图(防切屏)
	if Get_NpcMapID(nNpcId) ~= Get_UserMapId() then
		return
	end
	--传送到指定区域
	local nMapId = tGangsLandLord_Const["MapId"]
	local nPosX = tGangsLandLord_Const["TransColumn"][nColumnIndex]["PosX"]
	local nPosY = tGangsLandLord_Const["TransColumn"][nColumnIndex]["PosY"]
	User_ChgMap(nMapId,nPosX,nPosY)
end

--杀死小怪
function GangsLandLord_KillMonster()
	local nEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nData = tGangsLandLord_Stc["ActivePoint"]["DataType"]
	local nUserId = Get_UserId()
	
	--时间判断
	if not GangsLandLord_JudgeActivityTime() then
		return 
	end
	
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tGangsLandLord_Const["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId(nUserId)
	if nGuildId == 0 then
		return
	end
	--积分+1
	Task_AddStatistic(nEvent,nData,tGangsLandLord_Stc["ActivePoint"]["KillMonster"],1)
	Task_SetStcTimestamp(nEvent,nData,0)
	--记录到全服积分
	GangsLandLord_CaculateFullGlobal(tGangsLandLord_Stc["ActivePoint"]["KillMonster"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData)
	GangsLandLord_ResetRank(nUserId,nUserPoint,nGuildId)
end

--杀死其他帮派+5
function GangsLandLord_KillAgainst(nUserId,nTargetId)
	local nEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nData = tGangsLandLord_Stc["ActivePoint"]["DataType"]

	--时间判断
	if not GangsLandLord_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tGangsLandLord_Const["MapId"] then
		return
	end
	
	--获取玩家位置nUserId 判断是否在城墙内
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	if not GangsLandLord_JudgeRangeReasonable(nUserPosX,nUserPosY) then
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["PkRangeTip"],nUserId)
		return
	end
	
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	if nGangId == 0 then
		return
	end
	--获取被杀玩家的帮派
	local nTargetGuildId = Get_UserGuildId(nTargetId)
	if nTargetGuildId == 0 then
		return
	end
	
	if nGangId == nTargetGuildId then
		return
	end

	--积分+5
	Task_AddStatistic(nEvent,nData,tGangsLandLord_Stc["ActivePoint"]["KillAgainst"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	--记录到全服积分
	GangsLandLord_CaculateFullGlobal(tGangsLandLord_Stc["ActivePoint"]["KillAgainst"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	GangsLandLord_ResetRank(nUserId,nUserPoint,nGangId)
--记录log击杀其他帮派玩家次数
	Sys_SaveEmoneyBuy(tGangsLandLord_Log["Killing"],nUserId)
end
--锁魂玩家+1
function GangsLandLord_KeepGhostPlayer(nUserId,nLockUserId)
	local nEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nData = tGangsLandLord_Stc["ActivePoint"]["DataType"]
	
	--时间判断
	if not GangsLandLord_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tGangsLandLord_Const["MapId"] then
		return
	end
	
	--获取玩家位置nUserId 判断是否在城墙内
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	if not GangsLandLord_JudgeRangeReasonable(nUserPosX,nUserPosY) then
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["PkRangeTip"],nUserId)
		return
	end
	
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	if nGangId == 0 then
		return
	end
	--被锁魂玩家的帮派
	local nTargetGuildId = Get_UserGuildId(nLockUserId)
	if nTargetGuildId == 0 then
		return
	end
	
	if nGangId == nTargetGuildId then
		return
	end
	
	--锁魂+1分
	Task_AddStatistic(nEvent,nData,tGangsLandLord_Stc["ActivePoint"]["LockGhost"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	--记录到全服积分
	GangsLandLord_CaculateFullGlobal(tGangsLandLord_Stc["ActivePoint"]["LockGhost"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	GangsLandLord_ResetRank(nUserId,nUserPoint,nGangId)
end
--复活同帮人员+2
function GangsLandLord_RevivePlayer(nUserId,nGangsUserId)
	local nEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nData = tGangsLandLord_Stc["ActivePoint"]["DataType"]

	--时间判断
	if not GangsLandLord_JudgeActivityTime() then
		return 
	end
	--判断是否在地图内
	local nUserMapId = Get_UserMapId(nUserId)
	if nUserMapId ~= tGangsLandLord_Const["MapId"] then
		return
	end
	
	--获取玩家位置nUserId 判断是否在城墙内
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	if not GangsLandLord_JudgeRangeReasonable(nUserPosX,nUserPosY) then
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["PkRangeTip"],nUserId)
		return
	end
	
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	if nGangId == 0 then
		return
	end
	--获取被杀玩家的帮派
	local nUserGuildId = Get_UserGuildId(nGangsUserId)
	--判断是否是同帮
	if nUserGuildId ~= nGangId then
		return
	end
	--复活同帮+2分
	Task_AddStatistic(nEvent,nData,tGangsLandLord_Stc["ActivePoint"]["SkillRelive"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	--记录到全服积分
	GangsLandLord_CaculateFullGlobal(tGangsLandLord_Stc["ActivePoint"]["SkillRelive"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	GangsLandLord_ResetRank(nUserId,nUserPoint,nGangId)
--记录log复活本帮玩家次数
	Sys_SaveEmoneyBuy(tGangsLandLord_Log["Resurrection"],nUserId)
end

--杀死BOSS
function GangsLandLord_KillBoss(nMonsterId)
	local sUserName = Get_UserName()
	local nSysDyGlobId6 = tGangsLandLord_Const["DynaGlobalData6"]
	local nMapId = tGangsLandLord_Const["MapId"]
	local nPosX = Get_MonsterPosX()
	local nPosY = Get_MonsterPosY()
	
	Monster_Death(nMonsterId,nMapId)
	--时间判断
	if not GangsLandLord_JudgeActivityTime() then
		return 
	end
	
	--判断是否在地图内
	local nUserMapId = Get_UserMapId()
	if nUserMapId ~= tGangsLandLord_Const["MapId"] then
		return
	end
	--判断玩家是否有帮派
	local nGuildId = Get_UserGuildId()
	local sGuildName = Get_UserSynDicateName(nGuildId)
	if nGuildId == 0 then
		return
	end
	
	--置Boss动态码给玩家的帮派
	Sys_SetSynaGlobalData(nSysDyGlobId6,0,nGuildId)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId6,0,sGuildName)
	
	--保存帮主id
	local nWangId = Get_SynWangId(nGuildId)
	Sys_SetSynaGlobalData(nSysDyGlobId6,1,nWangId)
	--检查上限
	if not RewardTemplate_CheckSpace(tGangsLandLord_Reward["KillBoss"]) then
		--用邮件给玩家发奖
		local nActionId = tGangsLandLord_Const["Mail"]["ActionID"]
		local nExistDay = tGangsLandLord_Const["Mail"]["ExistDay"]
		local sSender = tGangsLandLord_Text["Mail"]["Sender"]
		local sTitle = tGangsLandLord_Text["Mail"]["Title"]
		local sContent = tGangsLandLord_Text["Mail"]["Content"]
		Sys_SendMail(Get_UserId(),0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	else
		--给玩家魔龙晶石
		RewardTemplate_UseItem(tGangsLandLord_Reward["KillBoss"])
	end
	--发公告
	local sText = string.format(tGangsLandLord_Text["Broadcast"]["BossDeath"],sGuildName,sUserName,sGuildName)
	Sys_SystemBroadcast(sText)
	Sys_SaveActionFestivalLog(tGangsLandLord_Log["KillBoss"])
	--杀死BOSS全图执行一个函数
	Map_UserExeFunc(nUserMapId, -1,"GangsLandLord_KillBossPointAdd")
	--地面刷新奖励
	GangsLandLord_MapDropItem(nPosX,nPosY)
end
--杀BOSS刷新地面奖励
function GangsLandLord_MapDropItem(nPosX,nPosY)
	local nMapId = tGangsLandLord_Const["MapId"]
	local nCellx = tGangsLandLord_Const["Cellx"]
	local nCelly = tGangsLandLord_Const["Celly"]
	local nExistTime = tGangsLandLord_Const["ExistTime"]
	for i,v in pairs(tGangsLandLord_Const["BossDrop"]) do
		local nItemId = v["ItemId"]
		local nItemNum = v["Num"]
		Map_DropMultiItems(nMapId, nItemId, nPosX-12, nPosY-10, nCellx, nCelly, nItemNum, nExistTime)
	end
end
--全地图的玩家积分+100
function GangsLandLord_KillBossPointAdd(nUserId)
	local nEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nData = tGangsLandLord_Stc["ActivePoint"]["DataType"]
	--积分+100
	Task_AddStatistic(nEvent,nData,tGangsLandLord_Stc["ActivePoint"]["KillBoss"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	--记录到全服积分
	GangsLandLord_CaculateFullGlobal(tGangsLandLord_Stc["ActivePoint"]["KillBoss"])
	--重置排行榜
	local nUserPoint = Get_UserStatisticValue(nEvent,nData,nUserId)
	GangsLandLord_ResetRank(nUserId,nUserPoint,Get_UserGuildId(nUserId))
end

--击破盘龙柱，帮派获得系数
function GangsLandLord_DestroyColumn(nIndex)
	local nSysDyGlobId5 = tGangsLandLord_Const["DynaGlobalData5"]
	--原占领帮派
	local nOccupyId = Get_SysDynaGlobalData(nSysDyGlobId5,nIndex-1)
	--判断玩家是否有帮派
	local nGangId = Get_UserGuildId(nUserId)
	
	if nGangId == 0 then
		return
	end
	--攻占帮派的最高系数
	local nCoefficientMax = GangsLandLord_GetCoefficient(nGangId)
	local nMapId = tGangsLandLord_Const["MapId"]
	--击破的记录击破的时间戳
	local nOsTime= os.time()
	
	--判断是否在活动期内
	if not GangsLandLord_JudgeActivityTime() then
		return
	end
	local sGangName = Get_UserSynDicateName(nGangId)
	
	Npc_SetDynaNpcOwnerId(nGangId)
	
	--将原来占领的帮派ID覆盖掉。
	Sys_SetSynaGlobalData(nSysDyGlobId5,nIndex-1,nGangId)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,nIndex-1,sGangName)
	Sys_SetSynaGlobalTime(nSysDyGlobId5,nIndex-1,nOsTime)
	Sys_SaveActionFestivalLog(tGangsLandLord_Log["KillColumn"])
	
	--查询原先该柱子是否有帮派占领
	local nColumnCoe = tGangsLandLord_Const["DragonColumnNpc"][nIndex]["Coefficient"]
	local sText = ""
	if nOccupyId ~= 0 then
		--旧帮派的名称
		local sOccupyName = Get_UserSynDicateName(nOccupyId)
		if nCoefficientMax >= nColumnCoe then
			--系数没变
			sText = string.format(tGangsLandLord_Text["Broadcast"]["NoChangeSeize"],sGangName,sOccupyName,tGangsLandLord_Text["ColumnName"][nIndex])
		else
			--系数改变
			sText = string.format(tGangsLandLord_Text["Broadcast"]["ChangeSeize"],sGangName,sOccupyName,tGangsLandLord_Text["ColumnName"][nIndex],sGangName,nColumnCoe)
		end
		Sys_SystemBroadcast(sText)
	else
		if nCoefficientMax >= nColumnCoe then
			--系数没变
			sText = string.format(tGangsLandLord_Text["Broadcast"]["NoChangeMultiple"],sGangName,tGangsLandLord_Text["ColumnName"][nIndex])
		else
			--系数改变
			sText = string.format(tGangsLandLord_Text["Broadcast"]["ChangeMultiple"],sGangName,tGangsLandLord_Text["ColumnName"][nIndex],sGangName,nColumnCoe)
		end
		Sys_SystemBroadcast(sText)
	end
end
function GangsLandLord_CheckSever()
	local nFlag = 1
	if SpecialServer_ChkNoGiftServer() then
		nFlag = 2
	end 
	return nFlag
end 

--传送玩家回双龙城
function GangsLandLord_LeaveMap()
	local nFlag = GangsLandLord_CheckSever()
	
	--传送到指定区域
	local nMapId = tGangsLandLord_Const["City"][nFlag]
	local nPosX = tGangsLandLord_Const["CityPos"][nFlag]["PosX"]
	local nPosY = tGangsLandLord_Const["CityPos"][nFlag]["PosY"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,0)
	User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["ComeBack"])
end
function GangsLandLord_ResetOwner(nIndex)
	local nSysDyGlobId5 = tGangsLandLord_Const["DynaGlobalData5"]
	local nNpcOwnerId = Get_NpcOwnerID()
	local nGuildId = Get_UserGuildId()
	
	if not nGuildId == nNpcOwnerId then
		return
	end
	--判断间隔是否一周
	local nTimestamp = Get_SysDynaGlobalTime(nSysDyGlobId5,nIndex-1)
	local nOsTime= os.time()
	local nMinite = math.floor((nOsTime - nTimestamp)/86400)
	if nMinite < 2 then
		return
	end
	
	Npc_SetDynaNpcOwnerId(0)
end
----------------------------------公用函数部分----------------------------------------
--判断新旧服
function GangsLandLord_JudgeServerNewOld()
	--data 大于1 表示新服
	if Get_SysDynaGlobalData(51974,0) >= 1 then
		return true
	else
		return false
	end
end
--通用时间判断
function GangsLandLord_JudgeActivityTime()
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		return false
	end
	--判断活动是否开启
	if not Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
		return false
	end
	return true
end
--判断是否隔7天
function GangsLandLord_StcInterval()
	local nPointEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nPointData = tGangsLandLord_Stc["ActivePoint"]["DataType"]
	local nRewardEvent = tGangsLandLord_Stc["Reward"]["EventType"]
	local nRewardData = tGangsLandLord_Stc["Reward"]["DataType"]
	local nCarnivalEvent = tGangsLandLord_Stc["CarnivalReward"]["EventType"]
	local nCarnivalData = tGangsLandLord_Stc["CarnivalReward"]["DataType"] 
	--领奖掩码
	if Task_StcInterval(tGangsLandLord_Stc["GuildId"]["EventType"],tGangsLandLord_Stc["GuildId"]["DataType"],7,4) then
		--重置积分
		Task_SetStatistic(nPointEvent,nPointData,0,1)
		Task_SetStcTimestamp(nPointEvent,nPointData,0)
		Task_SetStatistic(nRewardEvent,nRewardData,0,1)
		Task_SetStcTimestamp(nRewardEvent,nRewardData,0)
		Task_SetStatistic(nCarnivalEvent,nCarnivalData,0,1)
		Task_SetStcTimestamp(nCarnivalEvent,nCarnivalData,0)
		--重置帮派记录
		Task_SetStatistic(tGangsLandLord_Stc["GuildId"]["EventType"],tGangsLandLord_Stc["GuildId"]["DataType"],0,1)
		Task_SetStcTimestamp(tGangsLandLord_Stc["GuildId"]["EventType"],tGangsLandLord_Stc["GuildId"]["DataType"],0)
	end
end
--判断玩家等级
function GangsLandLord_JudgeUserLevel()
	local nLevel = tGangsLandLord_Const["LimitLevel"]
	local nMete = tGangsLandLord_Const["limitMete"]
	--判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return false
	end
	return true
end
--NPC对白判断等级帮派，用于判断是否显示选项
function GangsLandLord_JudgeShowOption()
	if not GangsLandLord_JudgeUserLevel() then
		return false
	end
	--判断玩家是否有帮派
	if Get_UserGuildId() == 0 then
		return false
	end
	return true
end
--判断PK,锁魂,复活触发位置是否在城墙内
function GangsLandLord_JudgeRangeReasonable(nUserPosX,nUserPosY)
	if nUserPosX >= tGangsLandLord_Const["PkRange"][1] and nUserPosX <= tGangsLandLord_Const["PkRange"][2] and nUserPosY >= tGangsLandLord_Const["PkRange"][3] and nUserPosY <= tGangsLandLord_Const["PkRange"][4] then
		return true
	else
		return false
	end
end

--查询帮派是否有占领盘龙柱
function GangsLandLord_HaveOccupyColumn(nIndex,nNpcId)
	local tOccupyTable ={}
	local nUserGuildId = Get_UserGuildId()	
	if nUserGuildId == 0 then
		return false
	end
	tOccupyTable = GangsLandLord_GetDragonColumnList(nUserGuildId,tOccupyTable)
	if next(tOccupyTable) == nil then
		return false
	end
	if nIndex ~= nil and nIndex >= 0 then
		if tOccupyTable[nIndex] ~= nil then
			return true
		else
			return false
		end
	end
	return true
end
--查询帮派最高的系数
function GangsLandLord_GetCoefficient(nGangId)
	local nGuildId = nGangId or Get_UserGuildId()
	local tOccupyTable = {}
	local nSysDyGlobId6 = tGangsLandLord_Const["DynaGlobalData6"]
	local nDragonGuild = Get_SysDynaGlobalData(nSysDyGlobId6,0)
	if nGuildId == 0 then
		return 1
	end
	if nDragonGuild == nGuildId then
		return 2
	end
	tOccupyTable = GangsLandLord_GetDragonColumnList(nGuildId,tOccupyTable)
	if next(tOccupyTable) == nil then
		return 1
	else
		local tTemp = {}
		for i,v in pairs(tOccupyTable) do
			table.insert(tTemp,v)
		end
		local nMaxIndex = 1
		local nMaxValue = tTemp[nMaxIndex]
		for i,v in pairs(tTemp) do
			if v > nMaxValue then
				nMaxIndex = i
				nMaxValue = v
			end
		end
		return nMaxValue
	end
end

--获取指定帮派的盘龙柱列表
function GangsLandLord_GetDragonColumnList(nGuildId,tOccupyTable)
	local nSysDyGlobId5 = tGangsLandLord_Const["DynaGlobalData5"]
	--占领柱子的表
	--tTable[柱子编号] = 系数
	for i=0,5 do
		local nGlobalData = Get_SysDynaGlobalData(nSysDyGlobId5,i)
		if nGlobalData == nGuildId then
			tOccupyTable[i+1] = tGangsLandLord_Const["DragonColumnNpc"][i+1]["Coefficient"]
		end
	end
	return tOccupyTable
end
--查询帮派是否杀死了BOSS
function GangsLandLord_HaveKillBoss()
	local nSysDyGlobId6 = tGangsLandLord_Const["DynaGlobalData6"]
	local nUserId = Get_UserId()
	local nUserGuildId = Get_UserGuildId(nUserId)
	local nGlobalGuilId = Get_SysDynaGlobalData(nSysDyGlobId6,0)
	if nGlobalGuilId == 0 then
		return false
	end
	if nUserGuildId == nGlobalGuilId then 
		return true
	
	end 
	return false
end
--获取翅膀拥有者记录
function GangsLandLord_GetWingOwner(nNpcId)
	local nSysDyGlobId8 = tGangsLandLord_Const["DynaGlobalData8"]
	local nIndex = 123
	for i=0,3 do
		local sIndex = "Text"..nIndex
		local sName = Get_SysDynaGlobalDataStr(nSysDyGlobId8,i)
		local sText = tGangsLandLord_Text[nNpcId][sIndex]
		if sName == "" or sName == nil then
			sText = string.format(sText,tGangsLandLord_Text["NoneHave"])
		else
			sText = string.format(sText,sName)
		end
		nIndex = nIndex+1
		tNpcGossip[nNpcId][sIndex] = sText
	end
end
--获取玩家当前积分
function GangsLandLord_GetUserPoint()
	local nEvent = tGangsLandLord_Stc["ActivePoint"]["EventType"]
	local nData = tGangsLandLord_Stc["ActivePoint"]["DataType"]
	local nUserPoint = Get_UserStatisticValue(nEvent,nData)
	return nUserPoint
end
--获取全服当前积分
function GangsLandLord_GetServerPoint()
	local nSysDyGlobId7 = tGangsLandLord_Const["DynaGlobalData7"]
	local nServerPoint = Get_SysDynaGlobalData(nSysDyGlobId7,0)
	return nServerPoint
end
--计算全服积分接口
function GangsLandLord_CaculateFullGlobal(nPoint)
	local nPoint = nPoint
	local nFullPoint = GangsLandLord_GetServerPoint()
	--计算积分
	nFullPoint = nFullPoint + nPoint
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],0,nFullPoint)
end
function GangsLandLord_GetActivityDateToText(nNpcId,sTextIndex)
	--获取活动开启次数
	local nTimes = Get_SysDynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],1)
	if nTimes >= 4 then
		nTimes = 3
	end
	local sDialogText = string.format(tGangsLandLord_Text[nNpcId][sTextIndex],tGangsLandLord_Const["OpenDate"][nTimes]["Year"],tGangsLandLord_Const["OpenDate"][nTimes]["Month"],tGangsLandLord_Const["OpenDate"][nTimes]["Day"])
	tNpcGossip[nNpcId][sTextIndex] = sDialogText
	return true
end
--获取玩家首次进入地图的帮派
function GangsLandLord_GetUserRecordGuild()
	local nEvent = tGangsLandLord_Stc["GuildId"]["EventType"]
	local nData = tGangsLandLord_Stc["GuildId"]["DataType"]
	return Get_UserStatisticValue(nEvent,nData)
end
--清空动态码
function GangsLandLord_ClearDynaGlobal()
	local nSysDyGlobId1 = tGangsLandLord_Const["DynaGlobalData1"]
	local nSysDyGlobId2 = tGangsLandLord_Const["DynaGlobalData2"]
	local nSysDyGlobId3 = tGangsLandLord_Const["DynaGlobalData3"]
	local nSysDyGlobId4 = tGangsLandLord_Const["DynaGlobalData4"]
	local nSysDyGlobId5 = tGangsLandLord_Const["DynaGlobalData5"]
	local nSysDyGlobId6 = tGangsLandLord_Const["DynaGlobalData6"]
	local nSysDyGlobId7 = tGangsLandLord_Const["DynaGlobalData7"]
	local nSysDyGlobId11 = tGangsLandLord_Const["DynaGlobalData11"]
	--nSysDyGlobId1
	Sys_SetSynaGlobalData(nSysDyGlobId1,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId1,0,"")
	Sys_SetSynaGlobalData(nSysDyGlobId1,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId1,1,"")
	Sys_SetSynaGlobalData(nSysDyGlobId1,2,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId1,2,"")
	Sys_SetSynaGlobalData(nSysDyGlobId1,3,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId1,3,"")
	Sys_SetSynaGlobalData(nSysDyGlobId1,4,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId1,4,"")
	--DynaGlobalDataGuildId
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId1"],0,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId1"],1,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId1"],2,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId1"],3,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId1"],4,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId2"],0,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId2"],1,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId2"],2,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId2"],3,0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalDataGuildId2"],4,0)
	--nSysDyGlobId2
	Sys_SetSynaGlobalData(nSysDyGlobId2,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId2,0,"")
	Sys_SetSynaGlobalData(nSysDyGlobId2,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId2,1,"")
	Sys_SetSynaGlobalData(nSysDyGlobId2,2,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId2,2,"")
	Sys_SetSynaGlobalData(nSysDyGlobId2,3,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId2,3,"")
	Sys_SetSynaGlobalData(nSysDyGlobId2,4,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId2,4,"")
	--nSysDyGlobId3
	Sys_SetSynaGlobalData(nSysDyGlobId3,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId3,0,"")
	Sys_SetSynaGlobalData(nSysDyGlobId3,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId3,1,"")
	Sys_SetSynaGlobalData(nSysDyGlobId3,2,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId3,2,"")
	Sys_SetSynaGlobalData(nSysDyGlobId3,3,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId3,3,"")
	Sys_SetSynaGlobalData(nSysDyGlobId3,4,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId3,4,"")
	--nSysDyGlobId4
	Sys_SetSynaGlobalData(nSysDyGlobId4,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId4,0,"")
	Sys_SetSynaGlobalData(nSysDyGlobId4,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId4,1,"")
	Sys_SetSynaGlobalData(nSysDyGlobId4,2,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId4,2,"")
	Sys_SetSynaGlobalData(nSysDyGlobId4,3,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId4,3,"")
	Sys_SetSynaGlobalData(nSysDyGlobId4,4,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId4,4,"")
	--nSysDyGlobId5
	Sys_SetSynaGlobalData(nSysDyGlobId5,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,0,"")
	Sys_SetSynaGlobalData(nSysDyGlobId5,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,1,"")
	Sys_SetSynaGlobalData(nSysDyGlobId5,2,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,2,"")
	Sys_SetSynaGlobalData(nSysDyGlobId5,3,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,3,"")
	Sys_SetSynaGlobalData(nSysDyGlobId5,4,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,4,"")
	Sys_SetSynaGlobalData(nSysDyGlobId5,5,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId5,5,"")
	--nSysDyGlobId6
	Sys_SetSynaGlobalData(nSysDyGlobId6,0,0)
	Sys_SetSynaGlobalData(nSysDyGlobId6,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId6,0,"")
	--nSysDyGlobId7
	Sys_SetSynaGlobalData(nSysDyGlobId7,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId7,0,"")
	--记录全服已领奖池数 pos: 天石2 金币3
	Sys_SetSynaGlobalData(nSysDyGlobId7,2,0)
	Sys_SetSynaGlobalData(nSysDyGlobId7,3,0)
	--nSysDyGlobId11
	Sys_SetSynaGlobalData(nSysDyGlobId11,0,0)
	
end

--判断奖池总量
function GangsLandLord_JudgePrizePool(nServerPoint)
	local nLevel = 0
	--大于 50000 A档
	if nServerPoint > tGangsLandLord_Const["RewardLevel"][1]["Need"] then
		EMoneyTotal = tGangsLandLord_Const["RewardLevel"][1]["Emoney"]
		nLevel = 1
	--30001 - 50000  B档
	elseif nServerPoint > tGangsLandLord_Const["RewardLevel"][2]["Need"] and nServerPoint <= tGangsLandLord_Const["RewardLevel"][1]["Need"] then
		EMoneyTotal = tGangsLandLord_Const["RewardLevel"][2]["Emoney"]
		nLevel = 2
	else
	--C档
		EMoneyTotal = tGangsLandLord_Const["RewardLevel"][3]["Emoney"]
		nLevel = 3
	end
	
	return EMoneyTotal,nLevel
end

----------------------------------时间自检-----------------------------------
--周五21:29清空动态码
function GangsLandLord_ActivityStart()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		return
	end
	--清空动态码
	GangsLandLord_ClearDynaGlobal()
	
end
--周五21:35 地图刷龙
function GangsLandLord_MapDragonAppear()
	local nMapId = tGangsLandLord_Const["MapId"]
	local nPosX = tGangsLandLord_Const["MonsterId"][2]["PosX"]
	local nPosY = tGangsLandLord_Const["MonsterId"][2]["PosY"]
	local nGenId = tGangsLandLord_Const["MonsterId"][2]["GenId"]
	local nMonsterId = tGangsLandLord_Const["MonsterId"][2]["Id"]
	local nSysDyGlobId11 = tGangsLandLord_Const["DynaGlobalData11"]
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		return
	end
	--判断活动是否开启
	if not Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
		return
	end

	local nNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nNum == 0 then
		local nGlobalData = Get_SysDynaGlobalData(nSysDyGlobId11,0)
		if nGlobalData == 0 then
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
			Sys_SetSynaGlobalData(nSysDyGlobId11,0,1)
		end 
	end
	Sys_SystemBroadcast(tGangsLandLord_Text["Broadcast"]["BossAppear"])
end
--周五22:00 清理地图、NPC，清理玩家
function GangsLandLord_MapClear()
	local nMapId = tGangsLandLord_Const["MapId"]
	local nMonsterId = tGangsLandLord_Const["MonsterId"][2]["Id"]
	--判断是否在活动期内
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		return
	end
	--判断活动是否开启
	if Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
		return
	end
	--把玩家传送出去
	Map_UserExeFunc(nMapId,-1,"GangsLandLord_AllPlayerChgMap")

	--判断龙是否还在
	local nNum = Get_SysTempData(1,nMapId,nMonsterId)
	--删龙.
	if nNum ~= 0 then
		Monster_Death(nMonsterId,nMapId)
		Monster_DelMonster(nMapId,nMonsterId)
	end
	--活动开启次数+1
	local nTimes = Get_SysDynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],1)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],1,nTimes+1)
	--本次活动总积分记录
	local nServerPoint = Get_SysDynaGlobalData(tGangsLandLord_Const["DynaGlobalData7"],0)
	Sys_SetSynaGlobalData(tGangsLandLord_Const["DynaGlobalData10"],nTimes,nServerPoint)
end
--活动结束，清理全部动态码
function GangsLandLord_AllDynaGlobalDataClear()
	local nSysDyGlobId8 = tGangsLandLord_Const["DynaGlobalData8"]
	GangsLandLord_ClearDynaGlobal()
	Sys_SetSynaGlobalData(nSysDyGlobId8,0,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId8,0,"")
	Sys_SetSynaGlobalData(nSysDyGlobId8,1,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId8,1,"")
	Sys_SetSynaGlobalData(nSysDyGlobId8,2,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId8,2,"")
	Sys_SetSynaGlobalData(nSysDyGlobId8,3,0)
	Sys_SetSynaGlobalDataStr(nSysDyGlobId8,3,"")
end
function GangsLandLord_DelDynaNpc()
	for i=1,6 do
		local sNpcName = tGangsLandLord_Text["ColumnName"][i]
		local nMapId = tGangsLandLord_Const["MapId"]
		
		--删除动态NPC
		Npc_DelDynaNpc(nMapId,"name",sWinnerName)
	end
end
function GangsLandLord_AllPlayerChgMap(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nFlag = GangsLandLord_CheckSever()
	--传送回双龙城
	local nMapId = tGangsLandLord_Const["City"][nFlag]
	local nPosX = tGangsLandLord_Const["CityPos"][nFlag]["PosX"]
	local nPosY = tGangsLandLord_Const["CityPos"][nFlag]["PosY"]
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,0,nNowUserId)
	User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["ComeBack"],nNowUserId)
end
----------------------------------NPC部分---------------------------------------------
-------------------------龙城传送使者----------------------------
tNpcFace[5907] = 105
tNpcGossip[22370]= tNpcGossip[22370] or DefaultNpc:new{}
tNpcGossip[22370]["OptionHidden"] = 1
--活动前1-1
tNpcGossip[22370]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[22370]["Text111"] = tGangsLandLord_Text[22370]["Text111"]
tNpcGossip[22370]["Text112"] = tGangsLandLord_Text[22370]["Text112"]
tNpcGossip[22370]["Text113"] = tGangsLandLord_Text[22370]["Text113"]
tNpcGossip[22370]["Text114"] = tGangsLandLord_Text[22370]["Text114"]
tNpcGossip[22370]["Text115"] = tGangsLandLord_Text[22370]["Text115"]
tNpcGossip[22370]["Text116"] = tGangsLandLord_Text[22370]["Text116"]
tNpcGossip[22370]["Text117"] = tGangsLandLord_Text[22370]["Text117"]
tNpcGossip[22370]["ChkFunc1-1"]= function()
	--初始活动时间
	GangsLandLord_GetActivityDateToText(22370,"Text113")
	GangsLandLord_StcInterval()
	return Sys_ChkFullTime(tActivityTime["GangsLandlord"]["BeforeActivityTime"])
end
tNpcGossip[22370]["tOption1-1"] = {111}
tNpcGossip[22370]["Option111"] = tGangsLandLord_Text[22370]["Option111"]

--活动中1-2
tNpcGossip[22370]["Text1-2"] = {121,122,123,124,125,126,127}
tNpcGossip[22370]["Text121"] = tGangsLandLord_Text[22370]["Text121"]
tNpcGossip[22370]["Text122"] = tGangsLandLord_Text[22370]["Text122"]
tNpcGossip[22370]["Text123"] = tGangsLandLord_Text[22370]["Text123"]
tNpcGossip[22370]["Text124"] = tGangsLandLord_Text[22370]["Text124"]
tNpcGossip[22370]["Text125"] = tGangsLandLord_Text[22370]["Text125"]
tNpcGossip[22370]["Text126"] = tGangsLandLord_Text[22370]["Text126"]
tNpcGossip[22370]["Text127"] = tGangsLandLord_Text[22370]["Text127"]
tNpcGossip[22370]["ChkFunc1-2"]= function()
	--初始活动时间
	GangsLandLord_GetActivityDateToText(22370,"Text123")
	GangsLandLord_StcInterval()
	return GangsLandLord_JudgeActivityTime()
end
--112 等级 113 没帮  114 进入  115 查看  116 攻略
tNpcGossip[22370]["tOption1-2"] = {112,114,115,116}
tNpcGossip[22370]["Option112"] = tGangsLandLord_Text[22370]["Option112"]
tNpcGossip[22370]["OptionChkFunc112"] = function ()
	if not GangsLandLord_JudgeUserLevel() then
		tNpcGossip[22370]["Option112"] = tGangsLandLord_Text[22370]["Option112"]
		return true
	else
		--判断玩家是否有帮派
		if Get_UserGuildId() == 0 then
			tNpcGossip[22370]["Option112"] = tGangsLandLord_Text[22370]["Option113"]
			return true
		end
		return false
	end
end
tNpcGossip[22370]["Option114"] = tGangsLandLord_Text[22370]["Option114"]
tNpcGossip[22370]["OptionPoint114"] = "2-1"
tNpcGossip[22370]["OptionChkFunc114"] = function ()
	return GangsLandLord_JudgeShowOption()
end
tNpcGossip[22370]["Option115"] = tGangsLandLord_Text[22370]["Option115"]
tNpcGossip[22370]["OptionFunc115"] = "GangsLandLord_LinkGossip22</N> 22370</N> 225</N>231"
tNpcGossip[22370]["OptionChkFunc115"] = function ()
	return GangsLandLord_JudgeShowOption()
end
tNpcGossip[22370]["Option116"] = tGangsLandLord_Text[22370]["Option116"]
tNpcGossip[22370]["OptionPoint116"] = "2-3"
tNpcGossip[22370]["OptionChkFunc116"] = function ()
	return GangsLandLord_JudgeShowOption()
end

--本次结束后，下次开始前 1-3
tNpcGossip[22370]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[22370]["Text131"] = tGangsLandLord_Text[22370]["Text131"]
tNpcGossip[22370]["Text132"] = tGangsLandLord_Text[22370]["Text132"]
tNpcGossip[22370]["Text133"] = tGangsLandLord_Text[22370]["Text133"]
tNpcGossip[22370]["Text134"] = tGangsLandLord_Text[22370]["Text134"]
tNpcGossip[22370]["Text135"] = tGangsLandLord_Text[22370]["Text135"]
tNpcGossip[22370]["Text136"] = tGangsLandLord_Text[22370]["Text136"]
tNpcGossip[22370]["ChkFunc1-3"]= function()
	--初始活动时间   若第四次活动结束，则显示结束对白
	if not GangsLandLord_GetActivityDateToText(22370,"Text133") then
		tNpcGossip[22370]["Text1-3"] = {141}
		tNpcGossip[22370]["Text131"] = tGangsLandLord_Text[22370]["Text141"]
		return true
	end
	GangsLandLord_StcInterval()
	if Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		--活动还未开启
		if not Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
			return true
		end
	end
	return false
end
tNpcGossip[22370]["tOption1-3"] = {131,132,133}
tNpcGossip[22370]["Option131"] = tGangsLandLord_Text[22370]["Option131"] -- 查看上次战况
tNpcGossip[22370]["OptionChkFunc131"] = function ()
	if Sys_ChkFullTime(tActivityTime["GangsLandlord"]["FirstBeforeTime"]) then
		return false
	end
	return GangsLandLord_JudgeShowOption()
end
tNpcGossip[22370]["OptionPoint131"] = "2-4"
tNpcGossip[22370]["Option132"] = tGangsLandLord_Text[22370]["Option132"] -- 夺宝要诀
tNpcGossip[22370]["OptionChkFunc132"] = function ()
	return GangsLandLord_JudgeShowOption()
end
tNpcGossip[22370]["OptionPoint132"] = "2-3"
tNpcGossip[22370]["Option133"] = tGangsLandLord_Text[22370]["Option112"]
tNpcGossip[22370]["OptionChkFunc133"] = function ()
	if not GangsLandLord_JudgeUserLevel() then
		tNpcGossip[22370]["Option133"] = tGangsLandLord_Text[22370]["Option112"]
		return true
	else
		--判断玩家是否有帮派
		if Get_UserGuildId() == 0 then
			tNpcGossip[22370]["Option133"] = tGangsLandLord_Text[22370]["Option113"]
			return true 
		end
		return false
	end
end

--活动后1-4
tNpcGossip[22370]["Text1-4"] = {141}
tNpcGossip[22370]["Text141"] = tGangsLandLord_Text[22370]["Text141"]
tNpcGossip[22370]["ChkFunc1-4"]= function()
	return not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"])
end
tNpcGossip[22370]["tOption1-4"] = {141}
tNpcGossip[22370]["Option141"] = tGangsLandLord_Text[22370]["Option141"]

--活动中2-1
tNpcGossip[22370]["Text2-1"] = {211}
tNpcGossip[22370]["Text211"] = tGangsLandLord_Text[22370]["Text211"]
tNpcGossip[22370]["tOption2-1"] = {211,212,213,214}
tNpcGossip[22370]["Option211"] = tGangsLandLord_Text[22370]["Option211"]
tNpcGossip[22370]["OptionFunc211"] = "GangsLandLord_TransActiveMap</N>22370</N>1"
tNpcGossip[22370]["Option212"] = tGangsLandLord_Text[22370]["Option212"]
tNpcGossip[22370]["OptionFunc212"] = "GangsLandLord_TransActiveMap</N>22370</N>2"
tNpcGossip[22370]["Option213"] = tGangsLandLord_Text[22370]["Option213"]
tNpcGossip[22370]["OptionFunc213"] = "GangsLandLord_TransActiveMap</N>22370</N>3"
tNpcGossip[22370]["Option214"] = tGangsLandLord_Text[22370]["Option214"]
tNpcGossip[22370]["OptionFunc214"] = "GangsLandLord_TransActiveMap</N>22370</N>4"
--活动中2-2
tNpcGossip[22370]["Text2-2"] = {221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,238}
tNpcGossip[22370]["Text221"] = tGangsLandLord_Text[22370]["Text221"]
tNpcGossip[22370]["Text222"] = tGangsLandLord_Text[22370]["Text222"]
tNpcGossip[22370]["Text223"] = tGangsLandLord_Text[22370]["Text223"]
tNpcGossip[22370]["Text224"] = tGangsLandLord_Text[22370]["Text224"]
tNpcGossip[22370]["Text225"] = tGangsLandLord_Text[22370]["Text225"]
tNpcGossip[22370]["Text226"] = tGangsLandLord_Text[22370]["Text226"]
tNpcGossip[22370]["Text227"] = tGangsLandLord_Text[22370]["Text227"]
tNpcGossip[22370]["Text228"] = tGangsLandLord_Text[22370]["Text228"]
tNpcGossip[22370]["Text229"] = tGangsLandLord_Text[22370]["Text229"]
tNpcGossip[22370]["Text230"] = tGangsLandLord_Text[22370]["Text230"]
tNpcGossip[22370]["Text231"] = tGangsLandLord_Text[22370]["Text231"]
tNpcGossip[22370]["Text232"] = tGangsLandLord_Text[22370]["Text232"]
tNpcGossip[22370]["Text233"] = tGangsLandLord_Text[22370]["Text233"]
tNpcGossip[22370]["Text234"] = tGangsLandLord_Text[22370]["Text234"]
tNpcGossip[22370]["Text235"] = tGangsLandLord_Text[22370]["Text235"]
tNpcGossip[22370]["Text236"] = tGangsLandLord_Text[22370]["Text236"]
tNpcGossip[22370]["Text238"] = tGangsLandLord_Text[22370]["Text238"]
tNpcGossip[22370]["ChkFunc2-2"] = function()
	local nServerPoint = GangsLandLord_GetServerPoint()
	local nEMoney,nLevel = GangsLandLord_JudgePrizePool(nServerPoint)
	if nLevel == 1 then
		tNpcGossip[22370]["Text236"] = string.format(tGangsLandLord_Text[22370]["Text237"],nEMoney)
	else
		tNpcGossip[22370]["Text236"] = string.format(tGangsLandLord_Text[22370]["Text236"],nEMoney,tGangsLandLord_Const["RewardLevel"][nLevel-1]["Emoney"])
	end
	return true
end

tNpcGossip[22370]["tOption2-2"] = {221}
tNpcGossip[22370]["Option221"] = tGangsLandLord_Text[22370]["Option221"]
--活动中2-3
tNpcGossip[22370]["Text2-3"] = {241,242,243,244,245,246,247,248,249,250,2251,2252,2253,2254,2255}
tNpcGossip[22370]["Text241"] = tGangsLandLord_Text[22370]["Text241"]
tNpcGossip[22370]["Text242"] = tGangsLandLord_Text[22370]["Text242"]
tNpcGossip[22370]["Text243"] = tGangsLandLord_Text[22370]["Text243"]
tNpcGossip[22370]["Text244"] = tGangsLandLord_Text[22370]["Text244"]
tNpcGossip[22370]["Text245"] = tGangsLandLord_Text[22370]["Text245"]
tNpcGossip[22370]["Text246"] = tGangsLandLord_Text[22370]["Text246"]
tNpcGossip[22370]["Text247"] = tGangsLandLord_Text[22370]["Text247"]
tNpcGossip[22370]["Text248"] = tGangsLandLord_Text[22370]["Text248"]
tNpcGossip[22370]["Text249"] = tGangsLandLord_Text[22370]["Text249"]
tNpcGossip[22370]["Text250"] = tGangsLandLord_Text[22370]["Text250"]
tNpcGossip[22370]["Text2251"] = tGangsLandLord_Text[22370]["Text251"]
tNpcGossip[22370]["Text2252"] = tGangsLandLord_Text[22370]["Text252"]
tNpcGossip[22370]["Text2253"] = tGangsLandLord_Text[22370]["Text253"]
tNpcGossip[22370]["Text2254"] = tGangsLandLord_Text[22370]["Text254"]
tNpcGossip[22370]["Text2255"] = tGangsLandLord_Text[22370]["Text255"]
-- tNpcGossip[22370]["ChkFunc2-3"]= function()
	-- local nServerPoint = GangsLandLord_GetServerPoint()
	-- tNpcGossip[22370]["Text243"] = string.format(tGangsLandLord_Text[22370]["Text243"],GangsLandLord_JudgePrizePool(nServerPoint),GangsLandLord_JudgePrizePool(nServerPoint))
	-- return true
-- end
tNpcGossip[22370]["tOption2-3"] = {231,232}
tNpcGossip[22370]["Option231"] = tGangsLandLord_Text[22370]["Option231"]
tNpcGossip[22370]["OptionPoint231"] = "3-1"
tNpcGossip[22370]["Option232"] = tGangsLandLord_Text[22370]["Option221"] -- 我明白了。

--本次结束，下次开始前 查看上次战况 2-4
tNpcGossip[22370]["Text2-4"] = {251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,268}
tNpcGossip[22370]["Text251"] = tGangsLandLord_Text[22370]["Text221"]
tNpcGossip[22370]["Text252"] = tGangsLandLord_Text[22370]["Text222"]
tNpcGossip[22370]["Text253"] = tGangsLandLord_Text[22370]["Text223"]
tNpcGossip[22370]["Text254"] = tGangsLandLord_Text[22370]["Text224"]
tNpcGossip[22370]["Text255"] = tGangsLandLord_Text[22370]["Text225"]
tNpcGossip[22370]["Text256"] = tGangsLandLord_Text[22370]["Text226"]
tNpcGossip[22370]["Text257"] = tGangsLandLord_Text[22370]["Text227"]
tNpcGossip[22370]["Text258"] = tGangsLandLord_Text[22370]["Text228"]
tNpcGossip[22370]["Text259"] = tGangsLandLord_Text[22370]["Text229"]
tNpcGossip[22370]["Text260"] = tGangsLandLord_Text[22370]["Text230"]
tNpcGossip[22370]["Text261"] = tGangsLandLord_Text[22370]["Text231"]
tNpcGossip[22370]["Text262"] = tGangsLandLord_Text[22370]["Text232"]
tNpcGossip[22370]["Text263"] = tGangsLandLord_Text[22370]["Text233"]
tNpcGossip[22370]["Text264"] = tGangsLandLord_Text[22370]["Text234"]
tNpcGossip[22370]["Text265"] = tGangsLandLord_Text[22370]["Text235"]
tNpcGossip[22370]["Text266"] = tGangsLandLord_Text[22370]["Text236"]
tNpcGossip[22370]["Text268"] = tGangsLandLord_Text[22370]["Text238"]
tNpcGossip[22370]["ChkFunc2-4"]= function()
	GangsLandLord_StcInterval()
	if Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		--活动还未开启
		if not Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
			--初始奖池奖金
			local nServerPoint = GangsLandLord_GetServerPoint()
			local nEMoney,nLevel = GangsLandLord_JudgePrizePool(nServerPoint)
			
			if nLevel == 1 then
				tNpcGossip[22370]["Text266"] = string.format(tGangsLandLord_Text[22370]["Text237"],nEMoney)
			else
				tNpcGossip[22370]["Text266"] = string.format(tGangsLandLord_Text[22370]["Text236"],nEMoney,tGangsLandLord_Const["RewardLevel"][nLevel-1]["Emoney"])
			end
			
			tNpcGossip[22370]["tOption2-4"] = {241,242}
			--判断新服增加额外奖励选项
			if GangsLandLord_JudgeServerNewOld() then 
				--判断是否是击杀boss的帮派玩家
				if GangsLandLord_HaveKillBoss() then 
					tNpcGossip[22370]["tOption2-4"] = {241,242,244}
				end 	
			end 
			
			return GangsLandLord_LinkGossipCheckFunc13(22370,255)
		end
	end
	return false
end
tNpcGossip[22370]["tOption2-4"] = {241,242}
tNpcGossip[22370]["Option241"] = tGangsLandLord_Text[22370]["Option241"]
tNpcGossip[22370]["OptionFunc241"] = "GangsLandLord_TodayReward</N>22370" 
tNpcGossip[22370]["OptionChkFunc241"] = function ()
	if Task_ChkStcValue(tGangsLandLord_Stc["ActivePoint"]["EventType"],tGangsLandLord_Stc["ActivePoint"]["DataType"],"==",0) then
		return false
	end
	if Task_ChkStcValue(tGangsLandLord_Stc["Reward"]["EventType"],tGangsLandLord_Stc["Reward"]["DataType"],"<",tGangsLandLord_Stc["Reward"]["Received"]) then
		--未领取
		tNpcGossip[22370]["Option241"] = tGangsLandLord_Text[22370]["Option241"]
		return true
	else
		--已领取
		tNpcGossip[22370]["Option241"] = tGangsLandLord_Text[22370]["Option242"]
		return true
	end
	return false
end
tNpcGossip[22370]["Option242"] = tGangsLandLord_Text[22370]["Option221"] -- 我明白了。

--额外奖励领取
tNpcGossip[22370]["Option244"] = tGangsLandLord_Text[22370]["Option244"]
tNpcGossip[22370]["OptionFunc244"] = "GangsLandLord_GetHappyReward</N>22370" 


--活动中3-1
tNpcGossip[22370]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[22370]["Text311"] = tGangsLandLord_Text[22370]["Text311"]
tNpcGossip[22370]["Text312"] = tGangsLandLord_Text[22370]["Text312"]
tNpcGossip[22370]["Text313"] = tGangsLandLord_Text[22370]["Text313"]
tNpcGossip[22370]["Text314"] = tGangsLandLord_Text[22370]["Text314"]
tNpcGossip[22370]["Text315"] = tGangsLandLord_Text[22370]["Text315"]
tNpcGossip[22370]["Text316"] = tGangsLandLord_Text[22370]["Text316"]
tNpcGossip[22370]["Text317"] = tGangsLandLord_Text[22370]["Text317"]
tNpcGossip[22370]["Text318"] = tGangsLandLord_Text[22370]["Text318"]
tNpcGossip[22370]["tOption3-1"] = {311}
tNpcGossip[22370]["Option311"] = tGangsLandLord_Text[22370]["Option311"]
tNpcGossip[22370]["OptionChkFunc311"] = function ()
	if Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		--活动还未开启
		if not Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then
			tNpcGossip[22370]["OptionPoint311"] = "1-3"
		else
			tNpcGossip[22370]["OptionPoint311"] = "1-2"
		end
		return true
	end
end

--领过奖了3-2
tNpcGossip[22370]["Text3-2"] = {321}
tNpcGossip[22370]["Text321"] = tGangsLandLord_Text[22370]["Text321"]
tNpcGossip[22370]["tOption3-2"] = {321}
tNpcGossip[22370]["Option321"] = tGangsLandLord_Text[22370]["Option221"]

-----------------------------护国祭坛--------------------------------
tNpcGossip[22371]= tNpcGossip[22371] or DefaultNpc:new{}
tNpcGossip[22371]["OptionHidden"] = 1
--活动前1-1
tNpcGossip[22371]["Text1-1"] = {111}
tNpcGossip[22371]["Text111"] = tGangsLandLord_Text[22371]["Text111"]
tNpcGossip[22371]["ChkFunc1-1"]= function()
	GangsLandLord_StcInterval()
	return Sys_ChkFullTime(tActivityTime["GangsLandlord"]["BeforeActivityTime"])
end
tNpcGossip[22371]["tOption1-1"] = {111}
tNpcGossip[22371]["Option111"] = tGangsLandLord_Text[22371]["Option111"]

--活动中1-2
tNpcGossip[22371]["Text1-2"] = {121,122,123,124,125,126,127,128,129}
tNpcGossip[22371]["Text121"] = tGangsLandLord_Text[22371]["Text121"]
tNpcGossip[22371]["Text122"] = tGangsLandLord_Text[22371]["Text122"]
tNpcGossip[22371]["Text123"] = tGangsLandLord_Text[22371]["Text123"]
tNpcGossip[22371]["Text124"] = tGangsLandLord_Text[22371]["Text124"]
tNpcGossip[22371]["Text125"] = tGangsLandLord_Text[22371]["Text125"]
tNpcGossip[22371]["Text126"] = tGangsLandLord_Text[22371]["Text126"]
tNpcGossip[22371]["Text127"] = tGangsLandLord_Text[22371]["Text127"]
tNpcGossip[22371]["Text128"] = tGangsLandLord_Text[22371]["Text128"]
tNpcGossip[22371]["Text129"] = tGangsLandLord_Text[22371]["Text129"]
tNpcGossip[22371]["ChkFunc1-2"]= function()
	GangsLandLord_StcInterval()
	--获取翅膀拥有者记录
	GangsLandLord_GetWingOwner(22371)
	return Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"])
end
tNpcGossip[22371]["tOption1-2"] = {121,122}
tNpcGossip[22371]["Option121"] = tGangsLandLord_Text[22371]["Option121"]
tNpcGossip[22371]["OptionFunc121"] = "GangsLandLord_SubmitDragonStone</N>22371"
tNpcGossip[22371]["OptionChkFunc121"] = function ()
	if Item_ChkItem(tGangsLandLord_Const["ItemId"][1]) then
		return true
	end
	return false
end
tNpcGossip[22371]["Option122"] = tGangsLandLord_Text[22371]["Option122"]

--活动后1-3
tNpcGossip[22371]["Text1-3"] = {131}
tNpcGossip[22371]["Text131"] = tGangsLandLord_Text[22371]["Text131"]
tNpcGossip[22371]["ChkFunc1-3"]= function()
	return not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"])
end
tNpcGossip[22371]["tOption1-3"] = {131}
tNpcGossip[22371]["Option131"] = tGangsLandLord_Text[22371]["Option111"] --离开

----------------------------龙城引路人-------------------------
tNpcFace[5908] = 107
tNpcGossip[22394]= tNpcGossip[22394] or DefaultNpc:new{}
tNpcGossip[22394]["OptionHidden"] = 1
--1-1
tNpcGossip[22394]["Text1-1"] = {111,112}
tNpcGossip[22394]["Text111"] = tGangsLandLord_Text[22394]["Text111"]
tNpcGossip[22394]["Text112"] = tGangsLandLord_Text[22394]["Text112"]
tNpcGossip[22394]["tOption1-1"] = {111,112,113}
tNpcGossip[22394]["Option111"] = tGangsLandLord_Text[22394]["Option111"]
tNpcGossip[22394]["OptionPoint111"] = "2-1"
tNpcGossip[22394]["OptionChkFunc111"] = function ()
	--判断帮派是否有占领柱子
	return GangsLandLord_HaveOccupyColumn()
end
tNpcGossip[22394]["Option112"] = tGangsLandLord_Text[22394]["Option112"]
tNpcGossip[22394]["OptionFunc112"] = "GangsLandLord_LinkGossip22</N>22394</N>225<N>231"
tNpcGossip[22394]["Option113"] = tGangsLandLord_Text[22394]["Option113"]
tNpcGossip[22394]["OptionFunc113"] = "GangsLandLord_LeaveMap"

--2-1
tNpcGossip[22394]["Text2-1"] = {211}
tNpcGossip[22394]["Text211"] = tGangsLandLord_Text[22394]["Text211"]
tNpcGossip[22394]["tOption2-1"] = {211,212,213,214,215,216}
tNpcGossip[22394]["Option211"] = tGangsLandLord_Text[22394]["Option211"]
tNpcGossip[22394]["OptionFunc211"] = "GangsLandLord_TransColumn</N>22394</N>1" --传送到那个柱子那边
tNpcGossip[22394]["OptionChkFunc211"] = function ()
	--根据局部表查看该柱子是否是本帮占领
	--系数也要写
	return GangsLandLord_HaveOccupyColumn(1,22394)
end
tNpcGossip[22394]["Option212"] = tGangsLandLord_Text[22394]["Option212"]
tNpcGossip[22394]["OptionFunc212"] = "GangsLandLord_TransColumn</N>22394</N>2"
tNpcGossip[22394]["OptionChkFunc212"] = function ()
	return GangsLandLord_HaveOccupyColumn(2,22394)
end
tNpcGossip[22394]["Option213"] = tGangsLandLord_Text[22394]["Option213"]
tNpcGossip[22394]["OptionFunc213"] = "GangsLandLord_TransColumn</N>22394</N>3"
tNpcGossip[22394]["OptionChkFunc213"] = function ()
	return GangsLandLord_HaveOccupyColumn(3,22394)
end
tNpcGossip[22394]["Option214"] = tGangsLandLord_Text[22394]["Option214"]
tNpcGossip[22394]["OptionFunc214"] = "GangsLandLord_TransColumn</N>22394</N>4"
tNpcGossip[22394]["OptionChkFunc214"] = function ()
	return GangsLandLord_HaveOccupyColumn(4,22394)
end
tNpcGossip[22394]["Option215"] = tGangsLandLord_Text[22394]["Option215"]
tNpcGossip[22394]["OptionFunc215"] = "GangsLandLord_TransColumn</N>22394</N>5"
tNpcGossip[22394]["OptionChkFunc215"] = function ()
	return GangsLandLord_HaveOccupyColumn(5,22394)
end
tNpcGossip[22394]["Option216"] = tGangsLandLord_Text[22394]["Option216"]
tNpcGossip[22394]["OptionFunc216"] = "GangsLandLord_TransColumn</N>22394</N>6"
tNpcGossip[22394]["OptionChkFunc216"] = function ()
	return GangsLandLord_HaveOccupyColumn(6,22394)
end

--2-2
tNpcGossip[22394]["Text2-2"] = {221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,238}
tNpcGossip[22394]["Text221"] = tGangsLandLord_Text[22394]["Text221"]
tNpcGossip[22394]["Text222"] = tGangsLandLord_Text[22394]["Text222"]
tNpcGossip[22394]["Text223"] = tGangsLandLord_Text[22394]["Text223"]
tNpcGossip[22394]["Text224"] = tGangsLandLord_Text[22394]["Text224"]
tNpcGossip[22394]["Text225"] = tGangsLandLord_Text[22394]["Text225"]
tNpcGossip[22394]["Text226"] = tGangsLandLord_Text[22394]["Text226"]
tNpcGossip[22394]["Text227"] = tGangsLandLord_Text[22394]["Text227"]
tNpcGossip[22394]["Text228"] = tGangsLandLord_Text[22394]["Text228"]
tNpcGossip[22394]["Text229"] = tGangsLandLord_Text[22394]["Text229"]
tNpcGossip[22394]["Text230"] = tGangsLandLord_Text[22394]["Text230"]
tNpcGossip[22394]["Text231"] = tGangsLandLord_Text[22394]["Text231"]
tNpcGossip[22394]["Text232"] = tGangsLandLord_Text[22394]["Text232"]
tNpcGossip[22394]["Text233"] = tGangsLandLord_Text[22394]["Text233"]
tNpcGossip[22394]["Text234"] = tGangsLandLord_Text[22394]["Text234"]
tNpcGossip[22394]["Text235"] = tGangsLandLord_Text[22394]["Text235"]
tNpcGossip[22394]["Text236"] = tGangsLandLord_Text[22394]["Text236"]
tNpcGossip[22394]["Text238"] = tGangsLandLord_Text[22394]["Text238"]
tNpcGossip[22394]["ChkFunc2-2"]= function()
	GangsLandLord_StcInterval()
	if Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ActivityTime"]) then
		--活动开启
		if Sys_ChkWeedTime(tGangsLandLord_Const["OpenTime"]) then

			local nServerPoint = GangsLandLord_GetServerPoint()
			local nEMoney,nLevel = GangsLandLord_JudgePrizePool(nServerPoint)
			if nLevel == 1 then
				tNpcGossip[22394]["Text236"] = string.format(tGangsLandLord_Text[22394]["Text237"],nEMoney)
			else
				tNpcGossip[22394]["Text236"] = string.format(tGangsLandLord_Text[22394]["Text236"],nEMoney,tGangsLandLord_Const["RewardLevel"][nLevel-1]["Emoney"])
			end
			return true
		end
	end
	return false
end
tNpcGossip[22394]["tOption2-2"] = {221}
tNpcGossip[22394]["Option221"] = tGangsLandLord_Text[22394]["Option221"]

--复制3个引路人NPC
tNpcGossip[22395]= tNpcGossip[22394] or DefaultNpc:new{}
tNpcGossip[22396]= tNpcGossip[22394] or DefaultNpc:new{}
tNpcGossip[22397]= tNpcGossip[22394] or DefaultNpc:new{}

---------------------------------物品部分---------------------------------------------
tItemFace[3306517] = 352
tItemFace[3306731] = 576
--------物品无对白模板
tItem[3306501] = tItem[3306501] or {}
tItem[3306501]["Function"] = function(nItemId,sItemName)
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ItemOutTime"]) then
		if Item_ChkItem(nItemId)then
			Item_DelItem(nItemId)
		end
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["OutTimeUseStone"])
		return 
	end
end
--护国之翼
tItem[3306502] = tItem[3306502] or {}
tItem[3306502]["Function"] = function(nItemId,sItemName)
	--判断活动期间
	if not Sys_ChkFullTime(tActivityTime["GangsLandlord"]["ItemOutTime"]) then
		if Item_ChkItem(nItemId)then
			Item_DelItem(nItemId)
		end
		User_TalkChannel2005(tGangsLandLord_Text["TalkChannel"]["OutTimeUseWing"])
		return 
	end
	GangsLandLord_UseItem(nItemId)
end
--100气力值
tItem[3306503] = tItem[3306503] or {}
tItem[3306503]["Function"] = function(nItemId,sItemName)
	GangsLandLord_UseItem(nItemId)
end
--300气力值
tItem[3306504] = tItem[3306504] or {}
tItem[3306504]["Function"] = function(nItemId,sItemName)
	GangsLandLord_UseItem(nItemId)
end

--守护龙城礼包
tItem[3306731] = tItem[3306731] or {}
tItem[3306731]["Text1-1"]={111}
tItem[3306731]["Text111"]=tGangsLandLord_Text[3306731]["Text111"]
tItem[3306731]["tOption1-1"]={111,112,113,114}
tItem[3306731]["Option111"]=tGangsLandLord_Text[3306731]["Option111"]
tItem[3306731]["OptionFunc111"]="GangsLandLord_UseActivityPackage</N>3306731</N>1"
tItem[3306731]["Option112"]=tGangsLandLord_Text[3306731]["Option112"]
tItem[3306731]["OptionFunc112"]="GangsLandLord_UseActivityPackage</N>3306731</N>2"
tItem[3306731]["Option113"]=tGangsLandLord_Text[3306731]["Option113"]
tItem[3306731]["OptionFunc113"]="GangsLandLord_UseActivityPackage</N>3306731</N>3"
tItem[3306731]["Option114"]=tGangsLandLord_Text[3306731]["Option114"]
tItem[3306731]["OptionFunc114"]="GangsLandLord_UseActivityPackage</N>3306731</N>4"
---------------------------------怪物部分---------------------------------------------
--杀小怪方法
local tGangsLandLord_KillMonster = {}
	tGangsLandLord_KillMonster[1] = {}
	tGangsLandLord_KillMonster[1]["ActivityTime"] = tActivityTime["GangsLandlord"]["ActivityTime"]
	tGangsLandLord_KillMonster[1]["Function"]= GangsLandLord_KillMonster
	tGangsLandLord_KillMonster[1]["MonsterId"] = {2843}
	tGangsLandLord_KillMonster[2] = {}
	tGangsLandLord_KillMonster[2]["ActivityTime"] = tActivityTime["GangsLandlord"]["ActivityTime"]
	tGangsLandLord_KillMonster[2]["Function"]= GangsLandLord_KillBoss
	tGangsLandLord_KillMonster[2]["MonsterId"] = {2844}
table.insert(tMonsterDrop_AreaLoad,tGangsLandLord_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tGangsLandLord_KillMonster[2])

-----------------------------------时间自检-----------------------------------
-- --活动开始（重置积分）
-- tOntimerMin_wHM[52129] = tOntimerMin_wHM[52129] or {}
-- table.insert(tOntimerMin_wHM[52129],GangsLandLord_ActivityStart)
-- --9点35分刷出BOSS
-- tOntimerMin_wHM[52135] = tOntimerMin_wHM[52135] or {}
-- table.insert(tOntimerMin_wHM[52135],GangsLandLord_MapDragonAppear)
-- --活动结束
-- tOntimerMin_wHM[52200] = tOntimerMin_wHM[52200] or {}
-- table.insert(tOntimerMin_wHM[52200],GangsLandLord_MapClear)
-- --整体活动结束 2月7日执行
-- tOntimerMin_dHM[070000] = tOntimerMin_dHM[070000] or {}
-- table.insert(tOntimerMin_dHM[070000],GangsLandLord_AllDynaGlobalDataClear)

--活动开始（重置积分）
local tGangsLandLord_Timechk = {}
	tGangsLandLord_Timechk[1] = {}
	tGangsLandLord_Timechk[1]["Type"] = 6
	tGangsLandLord_Timechk[1]["TimeType"] = 3
	tGangsLandLord_Timechk[1]["Multiple"] = {}
	tGangsLandLord_Timechk[1]["Multiple"][1] = "2 21:29 2 21:29"
	tGangsLandLord_Timechk[1]["Func"] = GangsLandLord_ActivityStart
table.insert(tSystemTime_InitialData,tGangsLandLord_Timechk[1])
--9点35分刷出BOSS
	tGangsLandLord_Timechk[2] = {}
	tGangsLandLord_Timechk[2]["Type"] = 6
	tGangsLandLord_Timechk[2]["TimeType"] = 3
	tGangsLandLord_Timechk[2]["Multiple"] = {}
	tGangsLandLord_Timechk[2]["Multiple"][1] = "2 21:35 2 21:38"
	tGangsLandLord_Timechk[2]["Func"] = GangsLandLord_MapDragonAppear
table.insert(tSystemTime_InitialData,tGangsLandLord_Timechk[2])
--活动结束
	tGangsLandLord_Timechk[3] = {}
	tGangsLandLord_Timechk[3]["Type"] = 6
	tGangsLandLord_Timechk[3]["TimeType"] = 3
	tGangsLandLord_Timechk[3]["Multiple"] = {}
	tGangsLandLord_Timechk[3]["Multiple"][1] = "2 22:00 2 22:00"
	tGangsLandLord_Timechk[3]["Func"] = GangsLandLord_MapClear
table.insert(tSystemTime_InitialData,tGangsLandLord_Timechk[3])
--整体活动结束 11月26日执行
	tGangsLandLord_Timechk[4] = {}
	tGangsLandLord_Timechk[4]["Type"] = 6
	tGangsLandLord_Timechk[4]["TimeType"] = 2
	tGangsLandLord_Timechk[4]["Multiple"] = {}
	tGangsLandLord_Timechk[4]["Multiple"][1] = "26 00:00 26 00:00"
	tGangsLandLord_Timechk[4]["Func"] = GangsLandLord_AllDynaGlobalDataClear
table.insert(tSystemTime_InitialData,tGangsLandLord_Timechk[4])
-----------------------------------杀人触发-----------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],GangsLandLord_KillAgainst)

-----------------------------------复活触发-----------------------------------
tUserSave["tFunction"] = tUserSave["tFunction"] or {}
table.insert(tUserSave["tFunction"],GangsLandLord_RevivePlayer) 

-----------------------------------锁魂触发-----------------------------------
tKeepGhost["tFunction"] = tKeepGhost["tFunction"] or {}
table.insert(tKeepGhost["tFunction"],GangsLandLord_KeepGhostPlayer)