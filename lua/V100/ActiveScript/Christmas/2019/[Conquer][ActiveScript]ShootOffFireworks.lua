------------------------------------------------------------------------------------
--Name：            191112[简体征服][活动脚本]全球圣诞元旦活动-放烟花（12.24-1.8）
--Creator:      兰瑞妹
--Created:     2019-11-12
------------------------------------------------------------------------------------
--任务需求：

-- 命名前缀
-- ShootOff_Fireworks_

-- logid 12001739

-- taskid 35065 data6 置今日完成放烟花

-- #stc 掩码说明 
-- #stc(210,34) 杀怪获得上限25 隔天清除
-- #stc(210,35) 2019圣诞礼袜打开获得碎片上限10
-- #stc(210,66) 打开签到礼包首次获得上限1 隔天清除
-- #stc(213,09) 2019圣诞礼袜每次使用上限50，隔天清除
-- #stc(213,10) 记录视频打开掩码，上限1，不清除

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tShootOff_Fireworks_Count = {}
	-- 活动时间
	tShootOff_Fireworks_Count["ActivityTime"] = tActivityTime["GlobalChristmas"]["ActivityTime"]
	tShootOff_Fireworks_Count["ItemUse"] = tActivityTime["ChristmasStocking"]["ActivityTime"]
	
	-- 等级
	tShootOff_Fireworks_Count["Level"] = 0
	tShootOff_Fireworks_Count["Meto"] = 2
	
	-- 等级限制
	tShootOff_Fireworks_Count["NewLevel"] = 80
	tShootOff_Fireworks_Count["NewMeto"] = 0
	
	-- 杀怪掉落
	tShootOff_Fireworks_Count["Min"] = 100
	tShootOff_Fireworks_Count["Max"] = 10000
	
	-- 地图限制
	tShootOff_Fireworks_Count["MapId"] = {}
	tShootOff_Fireworks_Count["MapId"][3600211] = 1002
	tShootOff_Fireworks_Count["MapId"][3600212] = 10601
	tShootOff_Fireworks_Count["NewMapId"]= 1036
	
	-- 表现形式
	tShootOff_Fireworks_Count["Show"] = {}
	tShootOff_Fireworks_Count["Show"][3600211] = 1
	tShootOff_Fireworks_Count["Show"][3600212] = 0
	
	-- 圣诞雪域烟花
	tShootOff_Fireworks_Count["CrossFire"] = 3600212
	tShootOff_Fireworks_Count["Fire"] = 3600211
	
	-- 读条时间
	tShootOff_Fireworks_Count["ExploreTime"] = 2
	-- 动作
	tShootOff_Fireworks_Count["ActionId"] = 220
	
	-- 完成任务掩码
	tShootOff_Fireworks_Count["TaskId"] = 35065
	
	-- 播放视频
	tShootOff_Fireworks_Count["VideoDialog"] = 960
	tShootOff_Fireworks_Count["VideoID"] = 11
	
	
	
-- Log表
local tShootOff_Fireworks_Log = {}
	-- 过期删除
	tShootOff_Fireworks_Log["OverDue"] = "0,0,%d,%d,12001739,1[10],0,0"
	tShootOff_Fireworks_Log["Fire"] = {}
	-- 燃放圣诞双龙烟花
	tShootOff_Fireworks_Log["Fire"][3600211]= "0,0,3600211,1,12001739,1[1],0,0"
	-- 燃放圣诞雪域烟花
	tShootOff_Fireworks_Log["Fire"][3600212] = "0,0,3600212,1,12001739,1[2],0,0"

-- stc掩码
local tShootOff_Fireworks_Stc = {}
	-- #stc(210,34) 杀怪获得上限15 隔天清除
	tShootOff_Fireworks_Stc[1] = {}
	tShootOff_Fireworks_Stc[1]["EventType"] = 210
	tShootOff_Fireworks_Stc[1]["DataType"] = 34
	tShootOff_Fireworks_Stc[1]["Limit"] = 25
	-- #stc(210,66) 打开签到礼包首次获得
	tShootOff_Fireworks_Stc[2] = {}
	tShootOff_Fireworks_Stc[2]["EventType"] = 210
	tShootOff_Fireworks_Stc[2]["DataType"] = 66
	-- #stc(213,09) 2019圣诞礼袜每次使用上限50，隔天清除
	tShootOff_Fireworks_Stc[3] = {}
	tShootOff_Fireworks_Stc[3]["EventType"] = 213
	tShootOff_Fireworks_Stc[3]["DataType"] = 09
	tShootOff_Fireworks_Stc[3]["Limit"] = 50
	-- #stc(213,10) 记录视频打开掩码，上限1，不清除
	tShootOff_Fireworks_Stc[4] = {}
	tShootOff_Fireworks_Stc[4]["EventType"] = 213
	tShootOff_Fireworks_Stc[4]["DataType"] = 10
	
-- 烟花光效
local tShootOff_Fireworks_Effect = {}
	-- 圣诞双龙烟花
	tShootOff_Fireworks_Effect[3600211] = {}
	tShootOff_Fireworks_Effect[3600211]["Effect"] = "card_beacon"
	tShootOff_Fireworks_Effect[3600211]["SzObj"] = "self"
	-- 圣诞雪域烟花
	tShootOff_Fireworks_Effect[3600212] = {}
	tShootOff_Fireworks_Effect[3600212]["Effect"] = "Attack35r"
	tShootOff_Fireworks_Effect[3600212]["SzObj"] = "self"
	
	
-- 奖励表
local tShootOff_Fireworks_Reward = {}
	-- ===每日签到礼包
	-- ===索引: tShootOff_Fireworks_Reward[3100011]
	tShootOff_Fireworks_Reward[3100011] = {}
	-- tShootOff_Fireworks_Reward[3100011]["LogId"] = 12001739
	tShootOff_Fireworks_Reward[3100011]["Log"] = "0,0,3100011,1,12001739,1[5],3600211,3"
	tShootOff_Fireworks_Reward[3100011]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3100011]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3100011]["RewardItem"][1]["Id"] = 3600211 -- 圣诞双龙烟花[3600211][属性:9][叠加:10000][金币:0], 【表格】圣诞双龙烟花*3
	tShootOff_Fireworks_Reward[3100011]["RewardItem"][1]["Attr"] = "0 3" -- 圣诞双龙烟花*3
	tShootOff_Fireworks_Reward[3100011]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3100011]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3100011]["RewardEffect"]["Effect"] = "angelwing"


	tShootOff_Fireworks_Reward[3600197] = {}
	-- ===2019圣诞礼袜
	-- ===索引: tShootOff_Fireworks_Reward[3600197]
	-- ===删除:3600197,1
	tShootOff_Fireworks_Reward[3600197]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Reward[3600197]["DeleteItem"] = {}
	tShootOff_Fireworks_Reward[3600197]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197]["DeleteItem"][1]["Id"] = 3600197 -- 【库】2019圣诞礼袜[属性:137]
	tShootOff_Fireworks_Reward[3600197]["LogId"] = 12001739
	tShootOff_Fireworks_Reward[3600197]["LogStep"] = "1[3]"
	-- 明亮星陨石 - 13%
	tShootOff_Fireworks_Reward[3600197][1] = {}
	tShootOff_Fireworks_Reward[3600197][1]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][1]["ItemChance"] = 1300
	tShootOff_Fireworks_Reward[3600197][1]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tShootOff_Fireworks_Reward[3600197][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tShootOff_Fireworks_Reward[3600197][1]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2 - 16%
	tShootOff_Fireworks_Reward[3600197][2] = {}
	tShootOff_Fireworks_Reward[3600197][2]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][2]["ItemChance"] = 1600
	tShootOff_Fireworks_Reward[3600197][2]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][2]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tShootOff_Fireworks_Reward[3600197][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tShootOff_Fireworks_Reward[3600197][2]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 20%
	tShootOff_Fireworks_Reward[3600197][3] = {}
	tShootOff_Fireworks_Reward[3600197][3]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][3]["ItemChance"] = 2000
	tShootOff_Fireworks_Reward[3600197][3]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][3]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tShootOff_Fireworks_Reward[3600197][3]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tShootOff_Fireworks_Reward[3600197][3]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 12%
	tShootOff_Fireworks_Reward[3600197][4] = {}
	tShootOff_Fireworks_Reward[3600197][4]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][4]["ItemChance"] = 1200
	tShootOff_Fireworks_Reward[3600197][4]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][4]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tShootOff_Fireworks_Reward[3600197][4]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹（赠）*5
	tShootOff_Fireworks_Reward[3600197][4]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 武器外套可选包 - 15%
	tShootOff_Fireworks_Reward[3600197][5] = {}
	tShootOff_Fireworks_Reward[3600197][5]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][5]["ItemChance"] = 1500
	tShootOff_Fireworks_Reward[3600197][5]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][5]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][5]["RewardItem"][1]["Id"] = 3314543 -- 武器外套可选包[3314543][属性:9][叠加:10000][金币:0], 【表格】武器外套可选包
	tShootOff_Fireworks_Reward[3600197][5]["RewardItem"][1]["Attr"] = "0 1" -- 武器外套可选包*1
	tShootOff_Fireworks_Reward[3600197][5]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 500气力值 - 18%
	tShootOff_Fireworks_Reward[3600197][6] = {}
	tShootOff_Fireworks_Reward[3600197][6]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][6]["ItemChance"] = 1800
	tShootOff_Fireworks_Reward[3600197][6]["RewardStrengthValue"] = {}
	tShootOff_Fireworks_Reward[3600197][6]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tShootOff_Fireworks_Reward[3600197][6]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 1.5%
	tShootOff_Fireworks_Reward[3600197][7] = {}
	tShootOff_Fireworks_Reward[3600197][7]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][7]["ItemChance"] = 150
	tShootOff_Fireworks_Reward[3600197][7]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][7]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][7]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tShootOff_Fireworks_Reward[3600197][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tShootOff_Fireworks_Reward[3600197][7]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][7]["RewardEffect"]["Effect"] = "angelwing"
	tShootOff_Fireworks_Reward[3600197][7]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600197][7]
	tShootOff_Fireworks_Reward[3600197][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+5 - 1%
	tShootOff_Fireworks_Reward[3600197][8] = {}
	tShootOff_Fireworks_Reward[3600197][8]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][8]["ItemChance"] = 100
	tShootOff_Fireworks_Reward[3600197][8]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][8]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][8]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tShootOff_Fireworks_Reward[3600197][8]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tShootOff_Fireworks_Reward[3600197][8]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][8]["RewardEffect"]["Effect"] = "angelwing"
	tShootOff_Fireworks_Reward[3600197][8]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600197][8]
	tShootOff_Fireworks_Reward[3600197][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 1%
	tShootOff_Fireworks_Reward[3600197][9] = {}
	tShootOff_Fireworks_Reward[3600197][9]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][9]["ItemChance"] = 100
	tShootOff_Fireworks_Reward[3600197][9]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][9]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][9]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tShootOff_Fireworks_Reward[3600197][9]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tShootOff_Fireworks_Reward[3600197][9]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][9]["RewardEffect"]["Effect"] = "angelwing"
	tShootOff_Fireworks_Reward[3600197][9]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600197][9]
	tShootOff_Fireworks_Reward[3600197][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 黄色神纹随机包 - 0.5%
	tShootOff_Fireworks_Reward[3600197][10] = {}
	tShootOff_Fireworks_Reward[3600197][10]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][10]["ItemChance"] = 50
	tShootOff_Fireworks_Reward[3600197][10]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][10]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][10]["RewardItem"][1]["Id"] = 3306919 -- 黄色神纹随机包[3306919][属性:9][叠加:0][金币:0], 【表格】黄色神纹随机包
	tShootOff_Fireworks_Reward[3600197][10]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹随机包*1
	tShootOff_Fireworks_Reward[3600197][10]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][10]["RewardEffect"]["Effect"] = "angelwing"
	tShootOff_Fireworks_Reward[3600197][10]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600197][10]
	tShootOff_Fireworks_Reward[3600197][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 3000气力值 - 1%
	tShootOff_Fireworks_Reward[3600197][11] = {}
	tShootOff_Fireworks_Reward[3600197][11]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][11]["ItemChance"] = 100
	tShootOff_Fireworks_Reward[3600197][11]["RewardStrengthValue"] = {}
	tShootOff_Fireworks_Reward[3600197][11]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tShootOff_Fireworks_Reward[3600197][11]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][11]["RewardEffect"]["Effect"] = "angelwing"
	tShootOff_Fireworks_Reward[3600197][11]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600197][11]
	tShootOff_Fireworks_Reward[3600197][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 光效外套碎片 - 1%
	tShootOff_Fireworks_Reward[3600197][12] = {}
	tShootOff_Fireworks_Reward[3600197][12]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Reward[3600197][12]["ItemChance"] = 100
	tShootOff_Fireworks_Reward[3600197][12]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3600197][12]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3600197][12]["RewardItem"][1]["Id"] = 3327004 --  3327004 【库里没有该物品】, 【表格】光效外套碎片
	tShootOff_Fireworks_Reward[3600197][12]["RewardItem"][1]["Attr"] = "0 1" --  3327004 【库里没有该物品】（赠）*1
	tShootOff_Fireworks_Reward[3600197][12]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3600197][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3600197][12]["RewardEffect"]["Effect"] = "angelwing"
	tShootOff_Fireworks_Reward[3600197][12]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600197][12]
	tShootOff_Fireworks_Reward[3600197][12]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【stc（210,35）】
	tShootOff_Fireworks_Reward[3600197][12]["EventType"] = 210
	tShootOff_Fireworks_Reward[3600197][12]["DataType"] = 35
	tShootOff_Fireworks_Reward[3600197][12]["RewardData"] = 20
	tShootOff_Fireworks_Reward[3600197][12]["FullIndex"] = 5

	tShootOff_Fireworks_Reward[3314543] = {}
	-- ===1天时效圣诞武器（赠）体验礼盒--长武
	-- ===索引: tShootOff_Fireworks_Reward[3314543][1]
	-- ===删除:3314543,1
	tShootOff_Fireworks_Reward[3314543][1] = {}
	tShootOff_Fireworks_Reward[3314543][1]["LogId"] = 12001739
	tShootOff_Fireworks_Reward[3314543][1]["LogStep"] = "1[4]"
	tShootOff_Fireworks_Reward[3314543][1]["DeleteItem"] = {}
	tShootOff_Fireworks_Reward[3314543][1]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][1]["DeleteItem"][1]["Id"] = 3314543 -- 【库】1天时效圣诞武器（赠）体验礼盒[属性:9]
	tShootOff_Fireworks_Reward[3314543][1]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3314543][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][1]["RewardItem"][1]["Id"] = 350171 -- 莹雪杖·璀璨（长武）[350171][属性:0][叠加:0][金币:0], 【表格】莹雪杖·璀璨（长武）
	tShootOff_Fireworks_Reward[3314543][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑莹雪杖·璀璨（长武）（赠）*1
	tShootOff_Fireworks_Reward[3314543][1]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3314543][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3314543][1]["RewardEffect"]["Effect"] = "angelwing"


	tShootOff_Fireworks_Reward[3314543][2] = {}
	-- ===1天时效圣诞武器（赠）体验礼盒--短武
	-- ===索引: tShootOff_Fireworks_Reward[3314543][2]
	-- ===删除:3314543,1
	tShootOff_Fireworks_Reward[3314543][2]["LogId"] = 12001739
	tShootOff_Fireworks_Reward[3314543][2]["LogStep"] = "1[4]"
	tShootOff_Fireworks_Reward[3314543][2]["DeleteItem"] = {}
	tShootOff_Fireworks_Reward[3314543][2]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][2]["DeleteItem"][1]["Id"] = 3314543 -- 【库】1天时效圣诞武器（赠）体验礼盒[属性:9]
	tShootOff_Fireworks_Reward[3314543][2]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3314543][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][2]["RewardItem"][1]["Id"] = 360308 -- 莹雪杖·璀璨（短武）[360308][属性:0][叠加:0][金币:0], 【表格】莹雪杖·璀璨（短武）
	tShootOff_Fireworks_Reward[3314543][2]["RewardItem"][1]["Attr"] = "0 2 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑莹雪杖·璀璨（短武）（赠）*2
	tShootOff_Fireworks_Reward[3314543][2]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3314543][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3314543][2]["RewardEffect"]["Effect"] = "angelwing"


	tShootOff_Fireworks_Reward[3314543][3] = {}
	-- ===1天时效圣诞武器（赠）体验礼盒--弓
	-- ===索引: tShootOff_Fireworks_Reward[3314543][3]
	-- ===删除:3314543,1
	tShootOff_Fireworks_Reward[3314543][3]["LogId"] = 12001739
	tShootOff_Fireworks_Reward[3314543][3]["LogStep"] = "1[4]"
	tShootOff_Fireworks_Reward[3314543][3]["DeleteItem"] = {}
	tShootOff_Fireworks_Reward[3314543][3]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][3]["DeleteItem"][1]["Id"] = 3314543 -- 【库】1天时效圣诞武器（赠）体验礼盒[属性:9]
	tShootOff_Fireworks_Reward[3314543][3]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3314543][3]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][3]["RewardItem"][1]["Id"] = 370051 -- 钻石星尘弓·鸿影[370051][属性:0][叠加:0][金币:0], 【表格】钻石星尘弓·鸿影
	tShootOff_Fireworks_Reward[3314543][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑钻石星尘弓·鸿影（赠）*1
	tShootOff_Fireworks_Reward[3314543][3]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3314543][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3314543][3]["RewardEffect"]["Effect"] = "angelwing"


	tShootOff_Fireworks_Reward[3314543][4] = {}
	-- ===1天时效圣诞武器（赠）体验礼盒--盾
	-- ===索引: tShootOff_Fireworks_Reward[3314543][4]
	-- ===删除:3314543,1
	tShootOff_Fireworks_Reward[3314543][4]["LogId"] = 12001739
	tShootOff_Fireworks_Reward[3314543][4]["LogStep"] = "1[4]"
	tShootOff_Fireworks_Reward[3314543][4]["DeleteItem"] = {}
	tShootOff_Fireworks_Reward[3314543][4]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][4]["DeleteItem"][1]["Id"] = 3314543 -- 【库】1天时效圣诞武器（赠）体验礼盒[属性:9]
	tShootOff_Fireworks_Reward[3314543][4]["RewardItem"] = {}
	tShootOff_Fireworks_Reward[3314543][4]["RewardItem"][1] = {}
	tShootOff_Fireworks_Reward[3314543][4]["RewardItem"][1]["Id"] = 380060 -- 冰晶神盾·寒鳞[380060][属性:0][叠加:0][金币:0], 【表格】冰晶神盾·寒鳞
	tShootOff_Fireworks_Reward[3314543][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑冰晶神盾·寒鳞（赠）*1
	tShootOff_Fireworks_Reward[3314543][4]["RewardEffect"] = {}
	tShootOff_Fireworks_Reward[3314543][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_Reward[3314543][4]["RewardEffect"]["Effect"] = "angelwing"


local tShootOff_Fireworks_Random = {}
	-- ===燃放圣诞双龙烟花随机获得--中文
	-- ===索引: tShootOff_Fireworks_Random[3600211][1]
	-- ===删除:3600211,1
	tShootOff_Fireworks_Random[3600211] = {}
	tShootOff_Fireworks_Random[3600211][1] = {}
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600211][1]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600211][1]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][1]["DeleteItem"][1]["Id"] = 3600211 -- 【库】圣诞双龙烟花[属性:9]
	tShootOff_Fireworks_Random[3600211][1]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600211][1]["LogStep"] = "1[6]"
	-- 2019圣诞礼袜-- 【自身概率】 - 10%
	tShootOff_Fireworks_Random[3600211][1][1] = {}
	tShootOff_Fireworks_Random[3600211][1][1]["RandomItemChanceType"] = 3
	tShootOff_Fireworks_Random[3600211][1][1]["ItemSelfChanceSum"] = 10000
	tShootOff_Fireworks_Random[3600211][1][1]["ItemChance"] = 1000
	tShootOff_Fireworks_Random[3600211][1][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][1][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][1][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600211][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【中文】圣诞帽-- 【必给】
	tShootOff_Fireworks_Random[3600211][1][2] = {}
	tShootOff_Fireworks_Random[3600211][1][2]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600211][1][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][1][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][1][2]["RewardItem"][1]["Id"] = 3600198 -- 【中文】圣诞帽[3600198][属性:137][叠加:1000][金币:0], 【表格】【中文】圣诞帽
	tShootOff_Fireworks_Random[3600211][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞帽*1


	tShootOff_Fireworks_Random[3600211][2] = {}
	-- ===燃放圣诞双龙烟花随机获得--英文
	-- ===索引: tShootOff_Fireworks_Random[3600211][2]
	-- ===删除:3600211,1
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600211][2]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600211][2]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][2]["DeleteItem"][1]["Id"] = 3600211 -- 【库】圣诞双龙烟花[属性:9]
	tShootOff_Fireworks_Random[3600211][2]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600211][2]["LogStep"] = "1[6]"
	-- 2019圣诞礼袜-- 【自身概率】 - 10%
	tShootOff_Fireworks_Random[3600211][2][1] = {}
	tShootOff_Fireworks_Random[3600211][2][1]["RandomItemChanceType"] = 3
	tShootOff_Fireworks_Random[3600211][2][1]["ItemSelfChanceSum"] = 10000
	tShootOff_Fireworks_Random[3600211][2][1]["ItemChance"] = 1000
	tShootOff_Fireworks_Random[3600211][2][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][2][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][2][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600211][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【英文】圣诞帽-- 【必给】
	tShootOff_Fireworks_Random[3600211][2][2] = {}
	tShootOff_Fireworks_Random[3600211][2][2]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600211][2][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][2][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][2][2]["RewardItem"][1]["Id"] = 3600199 -- 【英文】圣诞帽[3600199][属性:137][叠加:1000][金币:0], 【表格】【英文】圣诞帽
	tShootOff_Fireworks_Random[3600211][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞帽*1


	tShootOff_Fireworks_Random[3600211][3] = {}
	-- ===燃放圣诞双龙烟花随机获得--西语
	-- ===索引: tShootOff_Fireworks_Random[3600211][3]
	-- ===删除:3600211,1
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600211][3]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600211][3]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][3]["DeleteItem"][1]["Id"] = 3600211 -- 【库】圣诞双龙烟花[属性:9]
	tShootOff_Fireworks_Random[3600211][3]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600211][3]["LogStep"] = "1[6]"
	-- 2019圣诞礼袜-- 【自身概率】 - 10%
	tShootOff_Fireworks_Random[3600211][3][1] = {}
	tShootOff_Fireworks_Random[3600211][3][1]["RandomItemChanceType"] = 3
	tShootOff_Fireworks_Random[3600211][3][1]["ItemSelfChanceSum"] = 10000
	tShootOff_Fireworks_Random[3600211][3][1]["ItemChance"] = 1000
	tShootOff_Fireworks_Random[3600211][3][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][3][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][3][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600211][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【西语】圣诞帽-- 【必给】
	tShootOff_Fireworks_Random[3600211][3][2] = {}
	tShootOff_Fireworks_Random[3600211][3][2]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600211][3][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][3][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][3][2]["RewardItem"][1]["Id"] = 3600201 -- 【西语】圣诞帽[3600201][属性:137][叠加:1000][金币:0], 【表格】【西语】圣诞帽
	tShootOff_Fireworks_Random[3600211][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞帽*1


	tShootOff_Fireworks_Random[3600211][4] = {}
	-- ===燃放圣诞双龙烟花随机获得--阿语
	-- ===索引: tShootOff_Fireworks_Random[3600211][4]
	-- ===删除:3600211,1
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600211][4]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600211][4]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][4]["DeleteItem"][1]["Id"] = 3600211 -- 【库】圣诞双龙烟花[属性:9]
	tShootOff_Fireworks_Random[3600211][4]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600211][4]["LogStep"] = "1[6]"
	-- 2019圣诞礼袜-- 【自身概率】 - 10%
	tShootOff_Fireworks_Random[3600211][4][1] = {}
	tShootOff_Fireworks_Random[3600211][4][1]["RandomItemChanceType"] = 3
	tShootOff_Fireworks_Random[3600211][4][1]["ItemSelfChanceSum"] = 10000
	tShootOff_Fireworks_Random[3600211][4][1]["ItemChance"] = 1000
	tShootOff_Fireworks_Random[3600211][4][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][4][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][4][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600211][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【阿语】圣诞帽-- 【必给】
	tShootOff_Fireworks_Random[3600211][4][2] = {}
	tShootOff_Fireworks_Random[3600211][4][2]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600211][4][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][4][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][4][2]["RewardItem"][1]["Id"] = 3600200 -- 【阿语】圣诞帽[3600200][属性:137][叠加:1000][金币:0], 【表格】【阿语】圣诞帽
	tShootOff_Fireworks_Random[3600211][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞帽*1


	tShootOff_Fireworks_Random[3600211][5] = {}
	-- ===燃放圣诞双龙烟花2转以上玩家
	-- ===索引: tShootOff_Fireworks_Random[3600211][5]
	tShootOff_Fireworks_Random[3600211][5]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600211][5]["LogStep"] = "1[7]"
	-- 圣诞雪域烟花-- 【自身概率】 - 10%
	tShootOff_Fireworks_Random[3600211][5][1] = {}
	tShootOff_Fireworks_Random[3600211][5][1]["RandomItemChanceType"] = 3
	tShootOff_Fireworks_Random[3600211][5][1]["ItemSelfChanceSum"] = 10000
	tShootOff_Fireworks_Random[3600211][5][1]["ItemChance"] = 1000
	tShootOff_Fireworks_Random[3600211][5][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600211][5][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600211][5][1]["RewardItem"][1]["Id"] = 3600212 -- 圣诞雪域烟花[3600212][属性:137][叠加:10000][金币:0], 【表格】圣诞雪域烟花
	tShootOff_Fireworks_Random[3600211][5][1]["RewardItem"][1]["Attr"] = "0 1" -- 圣诞雪域烟花*1
	tShootOff_Fireworks_Random[3600211][5][1]["RewardBroadCast"] = tShootOff_Fireworks_Text[3600212]["Broadcast"]
	tShootOff_Fireworks_Random[3600211][5][1]["RewardBroadCastType"] = 2005
	
	tShootOff_Fireworks_Random[3600212] = {}
	-- ===燃放圣诞雪域烟花随机获得--中文
	-- ===索引: tShootOff_Fireworks_Random[3600212][1]
	-- ===删除:3600212,1
	tShootOff_Fireworks_Random[3600212][1] = {}
	tShootOff_Fireworks_Random[3600212][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600212][1]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600212][1]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][1]["DeleteItem"][1]["Id"] = 3600212 -- 【库】圣诞雪域烟花[属性:137]
	tShootOff_Fireworks_Random[3600212][1]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600212][1]["LogStep"] = "1[8]"
	-- 2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][1][1] = {}
	tShootOff_Fireworks_Random[3600212][1][1]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600212][1][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][1][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][1][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【英文】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][1][2] = {}
	tShootOff_Fireworks_Random[3600212][1][2]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][1][2]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][1][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][1][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][1][2]["RewardItem"][1]["Id"] = 3600199 -- 【英文】圣诞帽[3600199][属性:137][叠加:1000][金币:0], 【表格】【英文】圣诞帽
	tShootOff_Fireworks_Random[3600212][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞帽*1
	-- 【阿语】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][1][3] = {}
	tShootOff_Fireworks_Random[3600212][1][3]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][1][3]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][1][3]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][1][3]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][1][3]["RewardItem"][1]["Id"] = 3600200 -- 【阿语】圣诞帽[3600200][属性:137][叠加:1000][金币:0], 【表格】【阿语】圣诞帽
	tShootOff_Fireworks_Random[3600212][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞帽*1
	-- 【西语】圣诞帽 - 34%
	tShootOff_Fireworks_Random[3600212][1][4] = {}
	tShootOff_Fireworks_Random[3600212][1][4]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][1][4]["ItemChance"] = 3400
	tShootOff_Fireworks_Random[3600212][1][4]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][1][4]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][1][4]["RewardItem"][1]["Id"] = 3600201 -- 【西语】圣诞帽[3600201][属性:137][叠加:1000][金币:0], 【表格】【西语】圣诞帽
	tShootOff_Fireworks_Random[3600212][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞帽*1

	tShootOff_Fireworks_Random[3600212][2] = {}
	-- ===燃放圣诞雪域烟花随机获得--英文
	-- ===索引: tShootOff_Fireworks_Random[3600212][2]
	-- ===删除:3600212,1
	tShootOff_Fireworks_Random[3600212][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600212][2]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600212][2]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][2]["DeleteItem"][1]["Id"] = 3600212 -- 【库】圣诞雪域烟花[属性:137]
	tShootOff_Fireworks_Random[3600212][2]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600212][2]["LogStep"] = "1[8]"
	-- 2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][2][1] = {}
	tShootOff_Fireworks_Random[3600212][2][1]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600212][2][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][2][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][2][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【中文】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][2][2] = {}
	tShootOff_Fireworks_Random[3600212][2][2]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][2][2]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][2][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][2][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][2][2]["RewardItem"][1]["Id"] = 3600198 -- 【中文】圣诞帽[3600198][属性:137][叠加:1000][金币:0], 【表格】【中文】圣诞帽
	tShootOff_Fireworks_Random[3600212][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞帽*1
	-- 【阿语】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][2][3] = {}
	tShootOff_Fireworks_Random[3600212][2][3]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][2][3]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][2][3]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][2][3]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][2][3]["RewardItem"][1]["Id"] = 3600200 -- 【阿语】圣诞帽[3600200][属性:137][叠加:1000][金币:0], 【表格】【阿语】圣诞帽
	tShootOff_Fireworks_Random[3600212][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞帽*1
	-- 【西语】圣诞帽 - 34%
	tShootOff_Fireworks_Random[3600212][2][4] = {}
	tShootOff_Fireworks_Random[3600212][2][4]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][2][4]["ItemChance"] = 3400
	tShootOff_Fireworks_Random[3600212][2][4]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][2][4]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][2][4]["RewardItem"][1]["Id"] = 3600201 -- 【西语】圣诞帽[3600201][属性:137][叠加:1000][金币:0], 【表格】【西语】圣诞帽
	tShootOff_Fireworks_Random[3600212][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞帽*1


	tShootOff_Fireworks_Random[3600212][3] = {}
	-- ===燃放圣诞雪域烟花随机获得--西语
	-- ===索引: tShootOff_Fireworks_Random[3600212][3]
	-- ===删除:3600212,1
	tShootOff_Fireworks_Random[3600212][3]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600212][3]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600212][3]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][3]["DeleteItem"][1]["Id"] = 3600212 -- 【库】圣诞雪域烟花[属性:137]
	tShootOff_Fireworks_Random[3600212][3]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600212][3]["LogStep"] = "1[8]"
	-- 2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][3][1] = {}
	tShootOff_Fireworks_Random[3600212][3][1]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600212][3][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][3][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][3][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【中文】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][3][2] = {}
	tShootOff_Fireworks_Random[3600212][3][2]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][3][2]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][3][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][3][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][3][2]["RewardItem"][1]["Id"] = 3600198 -- 【中文】圣诞帽[3600198][属性:137][叠加:1000][金币:0], 【表格】【中文】圣诞帽
	tShootOff_Fireworks_Random[3600212][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞帽*1
	-- 【英文】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][3][3] = {}
	tShootOff_Fireworks_Random[3600212][3][3]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][3][3]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][3][3]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][3][3]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][3][3]["RewardItem"][1]["Id"] = 3600199 -- 【英文】圣诞帽[3600199][属性:137][叠加:1000][金币:0], 【表格】【英文】圣诞帽
	tShootOff_Fireworks_Random[3600212][3][3]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞帽*1
	-- 【阿语】圣诞帽 - 34%
	tShootOff_Fireworks_Random[3600212][3][4] = {}
	tShootOff_Fireworks_Random[3600212][3][4]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][3][4]["ItemChance"] = 3400
	tShootOff_Fireworks_Random[3600212][3][4]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][3][4]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][3][4]["RewardItem"][1]["Id"] = 3600200 -- 【阿语】圣诞帽[3600200][属性:137][叠加:1000][金币:0], 【表格】【阿语】圣诞帽
	tShootOff_Fireworks_Random[3600212][3][4]["RewardItem"][1]["Attr"] = "0 1" -- 【阿语】圣诞帽*1
	

	tShootOff_Fireworks_Random[3600212][4] = {}
	-- ===燃放圣诞雪域烟花随机获得--阿语
	-- ===索引: tShootOff_Fireworks_Random[3600212][4]
	-- ===删除:3600212,1
	tShootOff_Fireworks_Random[3600212][4]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tShootOff_Fireworks_Random[3600212][4]["DeleteItem"] = {}
	tShootOff_Fireworks_Random[3600212][4]["DeleteItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][4]["DeleteItem"][1]["Id"] = 3600212 -- 【库】圣诞雪域烟花[属性:137]
	tShootOff_Fireworks_Random[3600212][4]["LogId"] = 12001739
	tShootOff_Fireworks_Random[3600212][4]["LogStep"] = "1[8]"
	-- 2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][4][1] = {}
	tShootOff_Fireworks_Random[3600212][4][1]["RandomItemChanceType"] = 1
	tShootOff_Fireworks_Random[3600212][4][1]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][4][1]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][4][1]["RewardItem"][1]["Id"] = 3600197 -- 2019圣诞礼袜[3600197][属性:137][叠加:10000][金币:0], 【表格】2019圣诞礼袜
	tShootOff_Fireworks_Random[3600212][4][1]["RewardItem"][1]["Attr"] = "0 1" -- 2019圣诞礼袜*1
	-- 【中文】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][4][2] = {}
	tShootOff_Fireworks_Random[3600212][4][2]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][4][2]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][4][2]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][4][2]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][4][2]["RewardItem"][1]["Id"] = 3600198 -- 【中文】圣诞帽[3600198][属性:137][叠加:1000][金币:0], 【表格】【中文】圣诞帽
	tShootOff_Fireworks_Random[3600212][4][2]["RewardItem"][1]["Attr"] = "0 1" -- 【中文】圣诞帽*1
	-- 【英文】圣诞帽 - 33%
	tShootOff_Fireworks_Random[3600212][4][3] = {}
	tShootOff_Fireworks_Random[3600212][4][3]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][4][3]["ItemChance"] = 3300
	tShootOff_Fireworks_Random[3600212][4][3]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][4][3]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][4][3]["RewardItem"][1]["Id"] = 3600199 -- 【英文】圣诞帽[3600199][属性:137][叠加:1000][金币:0], 【表格】【英文】圣诞帽
	tShootOff_Fireworks_Random[3600212][4][3]["RewardItem"][1]["Attr"] = "0 1" -- 【英文】圣诞帽*1
	-- 【西语】圣诞帽 - 34%
	tShootOff_Fireworks_Random[3600212][4][4] = {}
	tShootOff_Fireworks_Random[3600212][4][4]["RandomItemChanceType"] = 2
	tShootOff_Fireworks_Random[3600212][4][4]["ItemChance"] = 3400
	tShootOff_Fireworks_Random[3600212][4][4]["RewardItem"] = {}
	tShootOff_Fireworks_Random[3600212][4][4]["RewardItem"][1] = {}
	tShootOff_Fireworks_Random[3600212][4][4]["RewardItem"][1]["Id"] = 3600201 -- 【西语】圣诞帽[3600201][属性:137][叠加:1000][金币:0], 【表格】【西语】圣诞帽
	tShootOff_Fireworks_Random[3600212][4][4]["RewardItem"][1]["Attr"] = "0 1" -- 【西语】圣诞帽*1
	

local tShootOff_Fireworks_MonsterReward = {}
	-- ===击杀片区怪物
	-- ===索引: tShootOff_Fireworks_MonsterReward[1]
	tShootOff_Fireworks_MonsterReward[1] = {}
	tShootOff_Fireworks_MonsterReward[1]["LogId"] = 12001739
	tShootOff_Fireworks_MonsterReward[1]["LogStep"] = "1[9]"
	tShootOff_Fireworks_MonsterReward[1]["RewardItem"] = {}
	tShootOff_Fireworks_MonsterReward[1]["RewardItem"][1] = {}
	tShootOff_Fireworks_MonsterReward[1]["RewardItem"][1]["Id"] = 3600211 -- 圣诞双龙烟花[3600211][属性:9][叠加:10000][金币:0], 【表格】圣诞双龙烟花
	tShootOff_Fireworks_MonsterReward[1]["RewardItem"][1]["Attr"] = "0 1" -- 圣诞双龙烟花*1
	tShootOff_Fireworks_MonsterReward[1]["RewardEffect"] = {}
	tShootOff_Fireworks_MonsterReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tShootOff_Fireworks_MonsterReward[1]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function ShootOff_Fireworks_GetStcValue(nShootOff_Fireworks_Index,nShootOff_Fireworks_UserId)
	local nShootOff_Fireworks_Event = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["EventType"]
	local nShootOff_Fireworks_Type = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["DataType"]
	
	local nShootOff_Fireworks_Data = Get_UserStatisticValue(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,nShootOff_Fireworks_UserId)
	return nShootOff_Fireworks_Data
end

--设置掩码值
function ShootOff_Fireworks_SetStcValue(nShootOff_Fireworks_Index,nShootOff_Fireworks_Data,nShootOff_Fireworks_UserId)
	local nShootOff_Fireworks_Event = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["EventType"]
	local nShootOff_Fireworks_Type = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["DataType"]
	
	Task_SetStatistic(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,nShootOff_Fireworks_Data,1,nShootOff_Fireworks_UserId)
	Task_SetStcTimestamp(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,0,nShootOff_Fireworks_UserId)
end

-- 增加掩码值
function ShootOff_Fireworks_AddStcValue(nShootOff_Fireworks_Index,nShootOff_Fireworks_Data,nShootOff_Fireworks_UserId)
	local nShootOff_Fireworks_Event = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["EventType"]
	local nShootOff_Fireworks_Type = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["DataType"]
	
	Task_AddStatistic(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,nShootOff_Fireworks_Data,1,nShootOff_Fireworks_UserId)
	Task_SetStcTimestamp(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,0,nShootOff_Fireworks_UserId)
end

-- 隔天重置
function ShootOff_Fireworks_ClearStcInterval(nShootOff_Fireworks_Index,nShootOff_Fireworks_UserId)
	local nShootOff_Fireworks_Event = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["EventType"]
	local nShootOff_Fireworks_Type = tShootOff_Fireworks_Stc[nShootOff_Fireworks_Index]["DataType"]
	
	if Task_StcInterval(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,1,4,nShootOff_Fireworks_UserId) then
		Task_SetStatistic(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,0,1,nShootOff_Fireworks_UserId)
		Task_SetStcTimestamp(nShootOff_Fireworks_Event,nShootOff_Fireworks_Type,0,nShootOff_Fireworks_UserId)
	end
end
--------------------------------------每日签到
function ShootOff_Fireworks_DailyPack(nShootOff_Fireworks_ItemId)
	-- 活动过期
	if not Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nShootOff_Fireworks_NewLevel = tShootOff_Fireworks_Count["NewLevel"]
	local nShootOff_Fireworks_NewMete = tShootOff_Fireworks_Count["NewMeto"]
	if not User_JudgeLevelAndMetempsychosis(nShootOff_Fireworks_NewLevel,nShootOff_Fireworks_NewMete) then
		return
	end
	
	ShootOff_Fireworks_ClearStcInterval(2)
	local nShootOff_Fireworks_Data = ShootOff_Fireworks_GetStcValue(2)
	if nShootOff_Fireworks_Data >= 1 then
		return
	end
	
	ShootOff_Fireworks_SetStcValue(2,1)
	-- 给圣诞双龙烟花
	RewardTemplate_UseItemAndMsg(tShootOff_Fireworks_Reward[nShootOff_Fireworks_ItemId])
	
	-- 2转判断是否给圣诞雪域烟花
	local nShootOff_Fireworks_FireWorksId = tShootOff_Fireworks_Count["Fire"]
	local nShootOff_Fireworks_Level = tShootOff_Fireworks_Count["Level"]
	local nShootOff_Fireworks_Metempsychosis = tShootOff_Fireworks_Count["Meto"]
	if User_JudgeLevelAndMetempsychosis(nShootOff_Fireworks_Level,nShootOff_Fireworks_Metempsychosis) then
		RewardTemplate_NewRandom(tShootOff_Fireworks_Random[nShootOff_Fireworks_FireWorksId],5)
	end
end

--------------------------------------宣传视频
-- 宣传视频
-- function ShootOff_Fireworks_OpenVideo()
	-- -- 判断国家
	-- local nShootOff_Fireworks_Language = User_ChkLanguage()
	-- if nShootOff_Fireworks_Language ~= 1 then
		-- return true
	-- end
	
	-- -- 判断第一次
	-- local nShootOff_Fireworks_VideoData = ShootOff_Fireworks_GetStcValue(4)
	-- if nShootOff_Fireworks_VideoData >= 1 then
		-- return true
	-- end
	
	-- ShootOff_Fireworks_SetStcValue(4,1)
	-- -- 播视频
	-- User_OpenVideo(tShootOff_Fireworks_Count["VideoDialog"],tShootOff_Fireworks_Count["VideoID"])
	-- return false
-- end
--------------------------------------npc使用
-- 我要放圣诞双龙烟花
function ShootOff_Fireworks_Fire(nShootOff_Fireworks_NpcId)
	-- 活动过期
	if not Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) then
		return
	end
	
	-- 判断地图
	local nShootOff_Fireworks_Language = User_ChkLanguage()
	local nShootOff_Fireworks_UserMapId = Get_UserMapId()
	local nShootOff_Fireworks_ItemId = tShootOff_Fireworks_Count["CrossFire"]
	local nShootOff_Fireworks_UserMapDoc = Get_MapDoc(nShootOff_Fireworks_UserMapId)
	local tShootOff_Fireworks_TextTip = tShootOff_Fireworks_Text[nShootOff_Fireworks_ItemId][nShootOff_Fireworks_Language]
	if nShootOff_Fireworks_UserMapDoc ~= tShootOff_Fireworks_Count["MapId"][nShootOff_Fireworks_ItemId] then
		Sys_MsgBox(tShootOff_Fireworks_TextTip["NotInMap"])
		return
	end
	
	local nShootOff_Fireworks_TaskId = tShootOff_Fireworks_Count["TaskId"]
	if Task_ChkTaskDetail(nShootOff_Fireworks_TaskId) then
		if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6",">=",1) then
			-- 非首次判断烟花
			-- 无烟花
			if not Item_ChkItem(nShootOff_Fireworks_ItemId) then
				Sys_MsgBox(tShootOff_Fireworks_TextTip["NoItem"])
				return
			end
		end
	else
		-- 非首次判断烟花
		-- 无烟花
		if not Item_ChkItem(nShootOff_Fireworks_ItemId) then
			Sys_MsgBox(tShootOff_Fireworks_TextTip["NoItem"])
			return
		end
	end
	
	-- 判断背包空间
	local tShootOff_Fireworks_Reward = tShootOff_Fireworks_Random[nShootOff_Fireworks_ItemId]
	local nShootOff_Fireworks_SpaceReward = RewardTemplate_GetRandomSpace(tShootOff_Fireworks_Reward,nShootOff_Fireworks_Language)
	if nShootOff_Fireworks_SpaceReward > 0 and not User_CheckLeftSpace(nShootOff_Fireworks_SpaceReward) then
		Sys_MsgBox(tShootOff_Fireworks_TextTip["NoSpace"])
		return
	end
	
	--读条
	local nShootOff_Fireworks_ExploreTime = tShootOff_Fireworks_Count["ExploreTime"]
	local nShootOff_Fireworks_ActionId = tShootOff_Fireworks_Count["ActionId"]
	local sShootOff_Fireworks_Content = tShootOff_Fireworks_Text["Explore"][nShootOff_Fireworks_Language]
	local sShootOff_Fireworks_Func = string.format("ShootOff_Fireworks_SureFire</N>%d</N>%d",nShootOff_Fireworks_ItemId,1)
	User_SetExplore(nShootOff_Fireworks_ExploreTime,sShootOff_Fireworks_Content,nShootOff_Fireworks_ActionId,sShootOff_Fireworks_Func)
end

-- 读条播放
function ShootOff_Fireworks_SureFire(nItemId,nFlag,nShootOff_Fireworks_UserId)
	-- 活动过期
	if not Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0,nil,nil,nShootOff_Fireworks_UserId)
		if Item_ChkItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) and Item_DelAllItemByType(nItemId,nShootOff_Fireworks_UserId) then
			User_TalkChannel2005(tShootOff_Fireworks_Text["OverDue"],nShootOff_Fireworks_UserId)
			local sLog = tShootOff_Fireworks_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum),nShootOff_Fireworks_UserId)
 		end
		return
	end
	local nShootOff_Fireworks_Language = User_ChkLanguage(nShootOff_Fireworks_UserId)
	local tShootOff_Fireworks_TextTip = tShootOff_Fireworks_Text[nItemId]
	if nItemId == tShootOff_Fireworks_Count["CrossFire"] then 
		tShootOff_Fireworks_TextTip = tShootOff_Fireworks_Text[nItemId][nShootOff_Fireworks_Language]
	end
	
	-- 判断地图
	local nUserMapId = Get_UserMapId(nShootOff_Fireworks_UserId)
	if nItemId == tShootOff_Fireworks_Count["CrossFire"] then
		local nUserMapDoc = Get_MapDoc(nUserMapId)
		if nUserMapDoc ~= tShootOff_Fireworks_Count["MapId"][nItemId] then
			Sys_MsgBox(tShootOff_Fireworks_TextTip["NotInMap"],nil,nil,nShootOff_Fireworks_UserId)
			return
		end
	else
		if nUserMapId ~= tShootOff_Fireworks_Count["MapId"][nItemId] and nUserMapId ~= tShootOff_Fireworks_Count["NewMapId"] then
			Sys_MsgBox(tShootOff_Fireworks_TextTip["NotInMap"],nil,nil,nShootOff_Fireworks_UserId)
			return
		end
	end
	
	-- 无烟花
	local nShootOff_Fireworks_TaskId = tShootOff_Fireworks_Count["TaskId"]
	local bHaveTask = false
	if nFlag == 1 then
		if Task_ChkTaskDetail(nShootOff_Fireworks_TaskId,nShootOff_Fireworks_UserId) then 
			if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6",">=",1,nShootOff_Fireworks_UserId) then
				-- 非首次判断烟花
				if not Item_ChkItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) then
					Sys_MsgBox(tShootOff_Fireworks_TextTip["NoItem"],nil,nil,nShootOff_Fireworks_UserId)
					return
				end
			end
			bHaveTask = true
		else
			-- 非首次判断烟花
			if not Item_ChkItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) then
				Sys_MsgBox(tShootOff_Fireworks_TextTip["NoItem"],nil,nil,nShootOff_Fireworks_UserId)
				return
			end
		end
	elseif nFlag == 0 then
		if not Item_ChkItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) then
			Sys_MsgBox(tShootOff_Fireworks_TextTip["NoItem"],nil,nil,nShootOff_Fireworks_UserId)
			return
		end
	end
	
	-- 判断背包空间
	local tReward = tShootOff_Fireworks_Random[nItemId]
	local nSpaceReward = RewardTemplate_GetRandomSpace(tReward,nShootOff_Fireworks_Language,nShootOff_Fireworks_UserId)
	if nSpaceReward > 0 and not User_CheckLeftSpace(nSpaceReward,nShootOff_Fireworks_UserId) then
		Sys_MsgBox(tShootOff_Fireworks_TextTip["NoSpace"],nil,nil,nShootOff_Fireworks_UserId)
		return
	end
	
	local bGive = false
	if nFlag == 0 and Item_DelItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) then
		bGive = true
	end
	if nFlag == 1 and bHaveTask then
		if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6","<",1,nShootOff_Fireworks_UserId) then
			bGive = true
		else
			-- 有任务不免费次数
			if Item_DelItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) then
				bGive = true
			end
		end
	end
	-- 无任务不判断免费次数
	if nFlag == 1 and not bHaveTask then
		if Item_DelItem(nItemId,nil,nil,nShootOff_Fireworks_UserId) then
			bGive = true
		end
	end
	
	if bGive then
		-- 置完成
		local nShootOff_Fireworks_ItemId = tShootOff_Fireworks_Count["CrossFire"]
		if nItemId == nShootOff_Fireworks_ItemId and bHaveTask then
			if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6","<",1,nShootOff_Fireworks_UserId) then
				--掩码存在逻辑
				Task_SetTaskDetailData6(nShootOff_Fireworks_TaskId,1,nShootOff_Fireworks_UserId)
				GuidePlayers_TaskComplete(nShootOff_Fireworks_UserId)
			end
		end
		
		RewardTemplate_NewRandom(tReward,nShootOff_Fireworks_Language,nShootOff_Fireworks_UserId)
		
		-- 燃放烟花
		local sSzObj = tShootOff_Fireworks_Effect[nItemId]["SzObj"]
		local sEffect = tShootOff_Fireworks_Effect[nItemId]["Effect"]
		local nShow = tShootOff_Fireworks_Count["Show"][nItemId]
		-- 播放两次
		User_EffectAddNew(sSzObj,sEffect,nShow,nShootOff_Fireworks_UserId)
		local sFunc = "ShootOff_Fireworks_AddEffect</N>" .. nItemId
		User_SetTimer(2,sFunc,0,nShootOff_Fireworks_UserId)

		Sys_SaveActionFestivalLog(tShootOff_Fireworks_Log["Fire"][nItemId],nShootOff_Fireworks_UserId)
	end
end

-- 放烟花光效
function ShootOff_Fireworks_AddEffect(nShootOff_Fireworks_ItemId,nShootOff_Fireworks_UserId)
	-- 燃放烟花
	local sShootOff_Fireworks_SzObj = tShootOff_Fireworks_Effect[nShootOff_Fireworks_ItemId]["SzObj"]
	local sShootOff_Fireworks_Effect = tShootOff_Fireworks_Effect[nShootOff_Fireworks_ItemId]["Effect"]
	local nShootOff_Fireworks_Show = tShootOff_Fireworks_Count["Show"][nShootOff_Fireworks_ItemId]
	User_EffectAddNew(sShootOff_Fireworks_SzObj,sShootOff_Fireworks_Effect,nShootOff_Fireworks_Show,nShootOff_Fireworks_UserId)
end

--------------------------------------物品使用
-- 3600211,'圣诞双龙烟花'
function ShootOff_Fireworks_UserFire(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tShootOff_Fireworks_Text["OverDue"])
			local sLog = tShootOff_Fireworks_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return
	end
	
	
	local nLanguage = User_ChkLanguage()
	local tShootOff_Fireworks_TextTip = tShootOff_Fireworks_Text[nItemId]
	if nItemId == tShootOff_Fireworks_Count["CrossFire"] then 
		tShootOff_Fireworks_TextTip = tShootOff_Fireworks_Text[nItemId][nLanguage]
	end
	-- 礼炮判断并寻路
	local nUserMapId = Get_UserMapId()
	if nItemId == tShootOff_Fireworks_Count["CrossFire"] then
		local nUserMapDoc = Get_MapDoc(nUserMapId)
		if nUserMapDoc ~= tShootOff_Fireworks_Count["MapId"][nItemId] then
			-- 判断是否双龙城
			if nUserMapId == tShootOff_Fireworks_Count["MapId"][3600211] then
				-- 25660,'圣诞麋鹿'
				NpcPosition_PathFind(25660)
				return
			else
				Sys_MsgBox(tShootOff_Fireworks_TextTip["NotInMap"])
				return
			end
		end
	else
		-- 判断是否双龙城
		if nUserMapId ~= tShootOff_Fireworks_Count["MapId"][nItemId] and nUserMapId ~= tShootOff_Fireworks_Count["NewMapId"] then
			Sys_MsgBox(tShootOff_Fireworks_TextTip["NotInMap"])
			return
		end
	end
	
	
	-- 判断背包空间
	local tReward = tShootOff_Fireworks_Random[nItemId]
	local nSpaceReward = RewardTemplate_GetRandomSpace(tReward,nLanguage)
	if nSpaceReward > 0 and not User_CheckLeftSpace(nSpaceReward) then
		Sys_MsgBox(tShootOff_Fireworks_TextTip["NoSpace"])
		return
	end
	
	--读条
	local nExploreTime = tShootOff_Fireworks_Count["ExploreTime"]
	local nActionId = tShootOff_Fireworks_Count["ActionId"]
	local sContent = tShootOff_Fireworks_Text["Explore"][nLanguage]
	local sFunc = string.format("ShootOff_Fireworks_SureFire</N>%d</N>%d",nItemId,0)
	User_SetExplore(nExploreTime,sContent,nActionId,sFunc)
end

-- 3600197,'2019圣诞礼袜'
function ShootOff_Fireworks_OpenItem(nItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tShootOff_Fireworks_Count["ItemUse"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tShootOff_Fireworks_Text["OverDue"])
			local sLog = tShootOff_Fireworks_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return
	end
	
	
	-- 上限50次
	local nShootOff_Fireworks_ItemLimit = tShootOff_Fireworks_Stc[3]["Limit"]
	ShootOff_Fireworks_ClearStcInterval(3)
	local nShootOff_Fireworks_OpenData = ShootOff_Fireworks_GetStcValue(3)
	if nShootOff_Fireworks_OpenData >= nShootOff_Fireworks_ItemLimit then
		local sShootOff_Fireworks_Uplimit = tShootOff_Fireworks_Text[nItemId]["Uplimit"]
		Sys_MsgBox(string.format(sShootOff_Fireworks_Uplimit,nShootOff_Fireworks_ItemLimit))
		return
	end
	
	-- 判断背包空间
	local nSpaceReward = RewardTemplate_GetRandomSpace(tShootOff_Fireworks_Reward,nItemId)
	if nSpaceReward > 0 and not User_CheckLeftSpace(nSpaceReward) then
		Sys_MsgBox(tShootOff_Fireworks_Text[nItemId]["NoSpace"])
		return
	end
	if Item_DelItem(nItemId,nil,nil) then
		ShootOff_Fireworks_AddStcValue(3,1)
		RewardTemplate_NewRandom(tShootOff_Fireworks_Reward,nItemId)
	end
end

-- 3314543,'武器外套可选包'
function ShootOff_Fireworks_ChooseItem(nItemId,nChooseItemId)
	RewardTemplate_UseItemAndMsg(tShootOff_Fireworks_Reward[nItemId][nChooseItemId])
end
--------------------------------------怪物掉落
function ShootOff_Fireworks_KillMonster(nMonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nShootOff_Fireworks_NewLevel = tShootOff_Fireworks_Count["NewLevel"]
	local nShootOff_Fireworks_NewMete = tShootOff_Fireworks_Count["NewMeto"]
	if not User_JudgeLevelAndMetempsychosis(nShootOff_Fireworks_NewLevel,nShootOff_Fireworks_NewMete) then
		return
	end
	
	-- 隔天重置
	ShootOff_Fireworks_ClearStcInterval(1)
	local nLimit = tShootOff_Fireworks_Stc[1]["Limit"]
	-- 今日上限15次
	local nData = ShootOff_Fireworks_GetStcValue(1)
	if nData >= nLimit then
		return
	end
	
	local nSpaceNum = RewardTemplate_GetRewardSpace(tShootOff_Fireworks_MonsterReward[1])
	-- 2转判断圣诞雪域烟花
	local nLevel = tShootOff_Fireworks_Count["Level"]
	local nMetempsychosis = tShootOff_Fireworks_Count["Meto"]
	local bLevelJudgy = false
	local nItemId = tShootOff_Fireworks_Count["Fire"]
	local tReward = tShootOff_Fireworks_Random[nItemId]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		local nNewSpace = RewardTemplate_GetRandomSpace(tReward,5)
		bLevelJudgy = true
		nSpaceNum = nSpaceNum + nNewSpace
	end
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(tShootOff_Fireworks_Text["KillMoster"]["NoSpace"])
		return
	end
	
	local nMin = tShootOff_Fireworks_Count["Min"]
	local nMax = tShootOff_Fireworks_Count["Max"]
	if Sys_Random(nMin,nMax) then
		-- 打掩码
		ShootOff_Fireworks_AddStcValue(1,1)
		-- 给奖励
		RewardTemplate_UseItem(tShootOff_Fireworks_MonsterReward[1])
		-- 2转以上额外获得
		if bLevelJudgy then
			RewardTemplate_NewRandom(tReward,5)
		end
		
		-- 最后一个给105弹框提示
		if nData+1 == nLimit then
			-- 置掩码
			ShootOff_Fireworks_AddStcValue(1,100)
			Sys_MsgBox(tShootOff_Fireworks_Text["KillMoster"]["Limit"])
		end
	end
end

--------------------------------------NPC模块--------------------------------------
-- 25507,'沈梦溪'
tNpcFace[5742] = 46
tNpcGossip[25507] = tNpcGossip[25507] or DefaultNpc:new{}
tNpcGossip[25507]["OptionHidden"] = 1
tNpcGossip[25507]["DialogueText"] = tShootOff_Fireworks_Text[25507] 
-- 活动前
tNpcGossip[25507]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tNpcGossip[25507]["tOption1-1"] = {111,112}
tNpcGossip[25507]["ChkFunc1-1"] = function ()
	local nLanguage = User_ChkLanguage()
	local sFree = ""
	local nShootOff_Fireworks_TaskId = tShootOff_Fireworks_Count["TaskId"]
	if Task_ChkTaskDetail(nShootOff_Fireworks_TaskId) then
		if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6","<",1) then
			sFree = tShootOff_Fireworks_Text["Free"][nLanguage]
		end
	end
	tNpcGossip[25507]["Option111"] = string.format(tShootOff_Fireworks_Text[25507]["Option111"],sFree)
	if Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) and nLanguage == 1 then
		return true
	end
	return false
end
-- 1、我要放圣诞双龙烟花
tNpcGossip[25507]["OptionFunc111"] = "ShootOff_Fireworks_Fire</N>25507"
-- 2、如何获得烟花
tNpcGossip[25507]["OptionPoint112"] = "2-1"
-- 英文
tNpcGossip[25507]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210}
tNpcGossip[25507]["tOption1-2"] = {121,122}
tNpcGossip[25507]["ChkFunc1-2"] = function ()
	local nLanguage = User_ChkLanguage()
	local sFree = ""
	local nShootOff_Fireworks_TaskId = tShootOff_Fireworks_Count["TaskId"]
	if Task_ChkTaskDetail(nShootOff_Fireworks_TaskId) then
		if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6","<",1) then
			sFree = tShootOff_Fireworks_Text["Free"][nLanguage]
		end
	end
	tNpcGossip[25507]["Option121"] = string.format(tShootOff_Fireworks_Text[25507]["Option121"],sFree)
	if Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) and nLanguage == 2 then
		return true
	end
	return false
end
tNpcGossip[25507]["OptionFunc121"] = "ShootOff_Fireworks_Fire</N>25507"
tNpcGossip[25507]["OptionPoint122"] = "2-2"
-- 西语
tNpcGossip[25507]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310}
tNpcGossip[25507]["tOption1-3"] = {131,132}
tNpcGossip[25507]["ChkFunc1-3"] = function ()
	local nLanguage = User_ChkLanguage()
	local sFree = ""
	local nShootOff_Fireworks_TaskId = tShootOff_Fireworks_Count["TaskId"]
	if Task_ChkTaskDetail(nShootOff_Fireworks_TaskId) then
		if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6","<",1) then
			sFree = tShootOff_Fireworks_Text["Free"][nLanguage]
		end
	end
	tNpcGossip[25507]["Option131"] = string.format(tShootOff_Fireworks_Text[25507]["Option131"],sFree)
	if Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) and nLanguage == 3 then
		return true
	end
	return false
end
tNpcGossip[25507]["OptionFunc131"] = "ShootOff_Fireworks_Fire</N>25507"
tNpcGossip[25507]["OptionPoint132"] = "2-3"
-- 阿语
tNpcGossip[25507]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[25507]["tOption1-4"] = {141,142}
tNpcGossip[25507]["ChkFunc1-4"] = function ()
	local nLanguage = User_ChkLanguage()
	local sFree = ""
	local nShootOff_Fireworks_TaskId = tShootOff_Fireworks_Count["TaskId"]
	if Task_ChkTaskDetail(nShootOff_Fireworks_TaskId) then
		if Task_ChkTaskDetailValue(nShootOff_Fireworks_TaskId,"6","<",1) then
			sFree = tShootOff_Fireworks_Text["Free"][nLanguage]
		end
	end
	tNpcGossip[25507]["Option141"] = string.format(tShootOff_Fireworks_Text[25507]["Option141"],sFree)
	if Sys_ChkFullTime(tShootOff_Fireworks_Count["ActivityTime"]) and nLanguage == 4 then
		return true
	end
	return false
end
tNpcGossip[25507]["OptionFunc141"] = "ShootOff_Fireworks_Fire</N>25507"
tNpcGossip[25507]["OptionPoint142"] = "2-4"

-- 接2、如何获得烟花
tNpcGossip[25507]["Text2-1"] = {211,212,213,214,215,216,217}
tNpcGossip[25507]["tOption2-1"] = {211}
tNpcGossip[25507]["OptionPoint211"] = 1
-- 英文
tNpcGossip[25507]["Text2-2"] = {221,222,223,224,225,226,227}
tNpcGossip[25507]["tOption2-2"] = {221}
tNpcGossip[25507]["OptionPoint221"] = 1
-- 西语
tNpcGossip[25507]["Text2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[25507]["tOption2-3"] = {231}
tNpcGossip[25507]["OptionPoint231"] = 1
-- 阿语
tNpcGossip[25507]["Text2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[25507]["tOption2-4"] = {241}
tNpcGossip[25507]["OptionPoint241"] = 1

-- 25739,'沈梦溪'
-- 25740,'沈梦溪'
-- 25741,'沈梦溪'
tNpcGossip[25739] = tNpcGossip[25507]
tNpcGossip[25740] = tNpcGossip[25507]
tNpcGossip[25741] = tNpcGossip[25507]


--------------------------------------物品模块--------------------------------------
-- 3600211,'圣诞双龙烟花'
tItem[3600211] = tItem[3600211] or {}
tItem[3600211]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetBeforeActivityTime(tShootOff_Fireworks_Count["ActivityTime"]) then
		Sys_MsgBox(tShootOff_Fireworks_Text["NotTime"])
		return
	end
	ShootOff_Fireworks_UserFire(nItemId)
end
-- 3600212,'圣诞雪域烟花'
tItem[3600212] = tItem[3600211] or {}

-- 3600197,'2019圣诞礼袜'
tItem[3600197] = tItem[3600197] or {}
tItem[3600197]["Function"] = function(nItemId,sItemName)
	if CommonFunc_GetBeforeActivityTime(tShootOff_Fireworks_Count["ItemUse"]) then
		Sys_MsgBox(tShootOff_Fireworks_Text["NotTime"])
		return
	end
	ShootOff_Fireworks_OpenItem(nItemId)
end

-- 3314543,'武器外套可选包'
tItemFace[3314543] = 2590
tItem[3314543] = tItem[3314543] or {}
tItem[3314543]["DialogueText"] = tShootOff_Fireworks_Text[3314543]
tItem[3314543]["Text1-1"] = {111}
tItem[3314543]["tOption1-1"] = {111,112,113,114}
-- 长武
tItem[3314543]["OptionFunc112"] = "ShootOff_Fireworks_ChooseItem</N>3314543</N>1"
-- 短武*2
tItem[3314543]["OptionFunc113"] = "ShootOff_Fireworks_ChooseItem</N>3314543</N>2"
-- 弓
tItem[3314543]["OptionFunc111"] = "ShootOff_Fireworks_ChooseItem</N>3314543</N>3"
-- 盾
tItem[3314543]["OptionFunc114"] = "ShootOff_Fireworks_ChooseItem</N>3314543</N>4"

---------------------------------怪物部分---------------------------------------------
-- 普通服
local tShootOff_Fireworks_KillMonster = {}
tShootOff_Fireworks_KillMonster["ActivityTime"] = tShootOff_Fireworks_Count["ActivityTime"]
tShootOff_Fireworks_KillMonster["Function"]= ShootOff_Fireworks_KillMonster
table.insert(tMonsterDrop_AreaLoad,tShootOff_Fireworks_KillMonster)

-- 激情服
local tShootOff_Fireworks_KillMonsterNoGift = {}
tShootOff_Fireworks_KillMonsterNoGift["ActivityTime"] = tShootOff_Fireworks_Count["ActivityTime"]
tShootOff_Fireworks_KillMonsterNoGift["Function"]= ShootOff_Fireworks_KillMonster
tShootOff_Fireworks_KillMonsterNoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tShootOff_Fireworks_KillMonsterNoGift)

