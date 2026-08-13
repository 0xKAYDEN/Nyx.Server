------------------------------------------------------------------------------------
--Name：            200319[简体征服][活动脚本]全球周年庆-一起来养龙
--Creator:      林嘉鑫
--Created:     2020-03-19
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAniversary2020Dragon_Data = {}
	-- 喂养道具
	tAniversary2020Dragon_Data["FeedItemId"] = {}
	tAniversary2020Dragon_Data["FeedItemId"][1] = 3330460
	tAniversary2020Dragon_Data["FeedItemId"][2] = 3330461
	-- 道具经验
	tAniversary2020Dragon_Data["FeedExp"] = {}
	tAniversary2020Dragon_Data["FeedExp"][1] = 100
	tAniversary2020Dragon_Data["FeedExp"][2] = 1000
	tAniversary2020Dragon_Data["NPCId"] = {}
	-- 主NPC id
	tAniversary2020Dragon_Data["NPCId"][1] = 26069
	-- 入口NPC id
	tAniversary2020Dragon_Data["NPCId"][2] = 26201
	-- 入口NPC id
	tAniversary2020Dragon_Data["NPCId"][3] = 26252
	-- 技能
	tAniversary2020Dragon_Data["Skill"] = {}
	tAniversary2020Dragon_Data["Skill"][1] = 16570
	tAniversary2020Dragon_Data["Skill"][2] = 16580
	tAniversary2020Dragon_Data["Skill"][3] = 16590
	tAniversary2020Dragon_Data["Skill"][4] = 16600
	-- 最高等级
	tAniversary2020Dragon_Data["MaxLev"] = 30
	-- 升级经验
	tAniversary2020Dragon_Data["Exp"] = {}
	tAniversary2020Dragon_Data["Exp"]["Rank"] =  {500,500, 1000,1000,1500,1500,2000,2000, 2500, 2500, 3000, 5000, 7500, 10000,12500,15000,17500,20000, 25000, 30000, 35000, 40000, 45000, 50000, 55000, 60000, 65000, 70000, 75000, 75000}
	tAniversary2020Dragon_Data["Exp"]["Total"] = {500,1000,2000,3000,4500,6000,8000,10000,12500,15000,18000,23000,30500,40500,53000,68000,85500,105500,130500,160500,195500,235500,280500,330500,385500,445500,510500,580500,655500,730500}
	-- 光效
	tAniversary2020Dragon_Data["Effect"] = {}
	tAniversary2020Dragon_Data["Effect"][0] = "zf2-e128"
	tAniversary2020Dragon_Data["Effect"][1] = "task078"
	tAniversary2020Dragon_Data["Effect"]["ChaWindow"] = "angelwing"
	-- 碎片需求
	tAniversary2020Dragon_Data["Pieces"] = {}
	tAniversary2020Dragon_Data["Pieces"][1] = 30
	tAniversary2020Dragon_Data["Pieces"][2] = 3
	-- 外套id
	tAniversary2020Dragon_Data["Coat"] = {}
	tAniversary2020Dragon_Data["Coat"]["NoLight"] = 196215
	tAniversary2020Dragon_Data["Coat"]["Light"] = 196225
	tAniversary2020Dragon_Data["Coat"]["Mount"] = 205003
	-- 限量掩码
	tAniversary2020Dragon_Data["GlobalId"] = 54377
	-- 排行榜id
	tAniversary2020Dragon_Data["RankIndex"] = 260690
	-- 等级限制
	tAniversary2020Dragon_Data["Level"] = 80
	tAniversary2020Dragon_Data["Metempsychosis"] = 0
	-- 阶段奖励
	tAniversary2020Dragon_Data["RankGoal"] = {5,10,15,20,25,30}
	-- 成长阶段
	tAniversary2020Dragon_Data["Rank"] = {{1,9},{10,19},{20,29}}
	-- 页面
	tAniversary2020Dragon_Data["Web"] = {}
	tAniversary2020Dragon_Data["Web"][1] = "https://wtop.zf.99.com/znq/nqCn/"
	tAniversary2020Dragon_Data["Web"][2] = "https://wtop.zf.99.com/znq/nqEn/"
	tAniversary2020Dragon_Data["Web"][3] = "https://wtop.zf.99.com/znq/nqSp/"
	tAniversary2020Dragon_Data["Web"][4] = "https://wtop.zf.99.com/znq/nqAr/"
	
local tAniversary2020Dragon_Stc = {}
	-- 跟宠经验
	tAniversary2020Dragon_Stc["Exp"] = {}
	tAniversary2020Dragon_Stc["Exp"]["EventType"] = 300
	tAniversary2020Dragon_Stc["Exp"]["DataType"] = 00
	-- 技能面板清理
	tAniversary2020Dragon_Stc["Clear"] = {}
	tAniversary2020Dragon_Stc["Clear"]["EventType"] = 217
	tAniversary2020Dragon_Stc["Clear"]["DataType"] = 75
	-- 跟宠等级
	tAniversary2020Dragon_Stc["Lev"] = {}
	tAniversary2020Dragon_Stc["Lev"]["EventType"] = 217
	tAniversary2020Dragon_Stc["Lev"]["DataType"] = 98
	-- 首次喂养
	tAniversary2020Dragon_Stc["Daily"] = {}
	tAniversary2020Dragon_Stc["Daily"]["EventType"] = 217
	tAniversary2020Dragon_Stc["Daily"]["DataType"] = 99
	-- 碎片上限
	tAniversary2020Dragon_Stc["Pieces"] = {}
	tAniversary2020Dragon_Stc["Pieces"]["EventType"] = 220
	tAniversary2020Dragon_Stc["Pieces"]["DataType"] = 26
	-- 选项判断
	tAniversary2020Dragon_Stc[1] = {}
	tAniversary2020Dragon_Stc[1]["EventType"] = 217
	tAniversary2020Dragon_Stc[1]["DataType"] = 80
	tAniversary2020Dragon_Stc[2] = {}
	tAniversary2020Dragon_Stc[2]["EventType"] = 217
	tAniversary2020Dragon_Stc[2]["DataType"] = 81

local tAniversary2020Dragon_Reward = {}
	-- 每日喂养奖励
	tAniversary2020Dragon_Reward["Daily"] = {}
	-- 1~9级
	tAniversary2020Dragon_Reward["Daily"][1] = {}
	tAniversary2020Dragon_Reward["Daily"][1]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["Daily"][1]["LogStep"] = "2[2]"
	tAniversary2020Dragon_Reward["Daily"][1]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["Daily"][1]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["Daily"][1]["RewardItem"][1]["Id"] = 3330464
	tAniversary2020Dragon_Reward["Daily"][1]["RewardItem"][1]["Attr"] = "0 1"
	tAniversary2020Dragon_Reward["Daily"][1]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["Daily"][1]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["Daily"][1]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["Daily"][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 10~19级
	tAniversary2020Dragon_Reward["Daily"][2] = {}
	tAniversary2020Dragon_Reward["Daily"][2]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["Daily"][2]["LogStep"] = "2[2]"
	tAniversary2020Dragon_Reward["Daily"][2]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["Daily"][2]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["Daily"][2]["RewardItem"][1]["Id"] = 3330464
	tAniversary2020Dragon_Reward["Daily"][2]["RewardItem"][1]["Attr"] = "0 2"
	tAniversary2020Dragon_Reward["Daily"][2]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["Daily"][2]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["Daily"][2]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["Daily"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 20~29级
	tAniversary2020Dragon_Reward["Daily"][3] = {}
	tAniversary2020Dragon_Reward["Daily"][3]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["Daily"][3]["LogStep"] = "2[2]"
	tAniversary2020Dragon_Reward["Daily"][3]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["Daily"][3]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["Daily"][3]["RewardItem"][1]["Id"] = 3330464
	tAniversary2020Dragon_Reward["Daily"][3]["RewardItem"][1]["Attr"] = "0 3"
	tAniversary2020Dragon_Reward["Daily"][3]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["Daily"][3]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["Daily"][3]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["Daily"][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 升级奖励
	tAniversary2020Dragon_Reward["RankUp"] = {}
	-- 2级奖励
	tAniversary2020Dragon_Reward["RankUp"][2] = {}
	tAniversary2020Dragon_Reward["RankUp"][2]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][2]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardItem"][1]["Id"] = 3330474
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardItem"][1]["Attr"] = "0 1"
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 5级奖励
	tAniversary2020Dragon_Reward["RankUp"][5] = {}
	tAniversary2020Dragon_Reward["RankUp"][5]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][5]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardItem"][1]["Id"] = 196215
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10级奖励
	tAniversary2020Dragon_Reward["RankUp"][10] = {}
	tAniversary2020Dragon_Reward["RankUp"][10]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][10]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"][1]["Id"] = 3330465
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"][1]["Attr"] = "0 1"
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"][2] = {}
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"][2]["Id"] = 3330482
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardItem"][2]["Attr"] = "0 1 0 43200 1"
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 15级奖励
	tAniversary2020Dragon_Reward["RankUp"][15] = {}
	tAniversary2020Dragon_Reward["RankUp"][15]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][15]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardItem"][1]["Id"] = 196215
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 20级奖励
	tAniversary2020Dragon_Reward["RankUp"][20] = {}
	tAniversary2020Dragon_Reward["RankUp"][20]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][20]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"][1]["Id"] = 3330465
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"][1]["Attr"] = "0 2"
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"][2] = {}
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"][2]["Id"] = 196225
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardItem"][2]["Attr"] = "0 1 3 21600 1 0 0 1"
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 25级奖励
	tAniversary2020Dragon_Reward["RankUp"][25] = {}
	tAniversary2020Dragon_Reward["RankUp"][25]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][25]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardItem"][1]["Id"] = 3330475
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardItem"][1]["Attr"] = "0 1"
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 30级奖励
	tAniversary2020Dragon_Reward["RankUp"][30] = {}
	tAniversary2020Dragon_Reward["RankUp"][30]["LogId"] = 12001906
	tAniversary2020Dragon_Reward["RankUp"][30]["LogStep"] = "2[3]"
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"] = {}
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"][1]["Id"] = 3330465
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"][1]["Attr"] = "0 3"
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"][2] = {}
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"][2]["Id"] = 196225
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardItem"][2]["Attr"] = "0 1 3 0 1 0 0 1"
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardNoNeedTip"] = 1 -- 不出对白
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward["RankUp"][30]["RewardEffect"]["Effect"] = "angelwing"
	
	tAniversary2020Dragon_Reward["RankUp"][3] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][4] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][6] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][7] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][8] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][9] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][11] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][12] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][13] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][14] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][16] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][17] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][18] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][19] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][21] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][22] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][23] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][24] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][26] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][27] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][28] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][29] = tAniversary2020Dragon_Reward["RankUp"][2]
	tAniversary2020Dragon_Reward["RankUp"][31] = tAniversary2020Dragon_Reward["RankUp"][2]
	
	-- ===见龙在天礼包
	-- ===索引: tAniversary2020Dragon_Reward[3330464]
	-- ===删除:3330464,1
	tAniversary2020Dragon_Reward[3330464] = {}
	tAniversary2020Dragon_Reward[3330464]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAniversary2020Dragon_Reward[3330464]["DeleteItem"] = {}
	tAniversary2020Dragon_Reward[3330464]["DeleteItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464]["DeleteItem"][1]["Id"] = 3330464 -- 【库】见龙在天礼包[属性:9]
	tAniversary2020Dragon_Reward[3330464]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330464]["LogStep"] = "2[4]"
	-- 赤炼石+1 - 25%
	tAniversary2020Dragon_Reward[3330464][1] = {}
	tAniversary2020Dragon_Reward[3330464][1]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][1]["ItemChance"] = 2500
	tAniversary2020Dragon_Reward[3330464][1]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][1]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tAniversary2020Dragon_Reward[3330464][1]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*2
	tAniversary2020Dragon_Reward[3330464][1]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 25%
	tAniversary2020Dragon_Reward[3330464][2] = {}
	tAniversary2020Dragon_Reward[3330464][2]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][2]["ItemChance"] = 2500
	tAniversary2020Dragon_Reward[3330464][2]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][2]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tAniversary2020Dragon_Reward[3330464][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的微光星陨石*3
	tAniversary2020Dragon_Reward[3330464][2]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 19%
	tAniversary2020Dragon_Reward[3330464][3] = {}
	tAniversary2020Dragon_Reward[3330464][3]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][3]["ItemChance"] = 1900
	tAniversary2020Dragon_Reward[3330464][3]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][3]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tAniversary2020Dragon_Reward[3330464][3]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tAniversary2020Dragon_Reward[3330464][3]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 19%
	tAniversary2020Dragon_Reward[3330464][4] = {}
	tAniversary2020Dragon_Reward[3330464][4]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][4]["ItemChance"] = 1900
	tAniversary2020Dragon_Reward[3330464][4]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][4]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAniversary2020Dragon_Reward[3330464][4]["RewardItem"][1]["Attr"] = "0 5 3" -- 万能神纹精粹*5
	tAniversary2020Dragon_Reward[3330464][4]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 2%
	tAniversary2020Dragon_Reward[3330464][5] = {}
	tAniversary2020Dragon_Reward[3330464][5]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][5]["ItemChance"] = 200
	tAniversary2020Dragon_Reward[3330464][5]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][5]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAniversary2020Dragon_Reward[3330464][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tAniversary2020Dragon_Reward[3330464][5]["GlobalId"] = 54377
	tAniversary2020Dragon_Reward[3330464][5]["MaxData"] = 1
	tAniversary2020Dragon_Reward[3330464][5]["FullIndex"] = 1
	tAniversary2020Dragon_Reward[3330464][5]["Pos"] = 0
	tAniversary2020Dragon_Reward[3330464][5]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][5]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330464][5]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330464][1] -- 全服公告
	tAniversary2020Dragon_Reward[3330464][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 2.5%
	tAniversary2020Dragon_Reward[3330464][6] = {}
	tAniversary2020Dragon_Reward[3330464][6]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][6]["ItemChance"] = 250
	tAniversary2020Dragon_Reward[3330464][6]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][6]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAniversary2020Dragon_Reward[3330464][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tAniversary2020Dragon_Reward[3330464][6]["GlobalId"] = 54377
	tAniversary2020Dragon_Reward[3330464][6]["MaxData"] = 1
	tAniversary2020Dragon_Reward[3330464][6]["FullIndex"] = 1
	tAniversary2020Dragon_Reward[3330464][6]["Pos"] = 1
	tAniversary2020Dragon_Reward[3330464][6]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][6]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330464][6]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330464][2] -- 全服公告
	tAniversary2020Dragon_Reward[3330464][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 辉月果 - 2.5%
	tAniversary2020Dragon_Reward[3330464][7] = {}
	tAniversary2020Dragon_Reward[3330464][7]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][7]["ItemChance"] = 250
	tAniversary2020Dragon_Reward[3330464][7]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][7]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][7]["RewardItem"][1]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tAniversary2020Dragon_Reward[3330464][7]["RewardItem"][1]["Attr"] = "0 2" -- 辉月果*2
	tAniversary2020Dragon_Reward[3330464][7]["GlobalId"] = 54377
	tAniversary2020Dragon_Reward[3330464][7]["MaxData"] = 1
	tAniversary2020Dragon_Reward[3330464][7]["FullIndex"] = 1
	tAniversary2020Dragon_Reward[3330464][7]["Pos"] = 2
	tAniversary2020Dragon_Reward[3330464][7]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][7]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330464][7]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330464][3] -- 全服公告
	tAniversary2020Dragon_Reward[3330464][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 万能神纹精粹 - 2.5%
	tAniversary2020Dragon_Reward[3330464][8] = {}
	tAniversary2020Dragon_Reward[3330464][8]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][8]["ItemChance"] = 250
	tAniversary2020Dragon_Reward[3330464][8]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][8]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][8]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAniversary2020Dragon_Reward[3330464][8]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹*100
	tAniversary2020Dragon_Reward[3330464][8]["GlobalId"] = 54377
	tAniversary2020Dragon_Reward[3330464][8]["MaxData"] = 1
	tAniversary2020Dragon_Reward[3330464][8]["FullIndex"] = 1
	tAniversary2020Dragon_Reward[3330464][8]["Pos"] = 3
	tAniversary2020Dragon_Reward[3330464][8]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][8]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330464][8]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330464][4] -- 全服公告
	tAniversary2020Dragon_Reward[3330464][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 1000万爵位勋章 - 2.5%
	tAniversary2020Dragon_Reward[3330464][9] = {}
	tAniversary2020Dragon_Reward[3330464][9]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330464][9]["ItemChance"] = 250
	tAniversary2020Dragon_Reward[3330464][9]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330464][9]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330464][9]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tAniversary2020Dragon_Reward[3330464][9]["RewardItem"][1]["Attr"] = "0 3 3 10080 1" -- 7天时效(激活)的1000万爵位勋章（赠）*3
	tAniversary2020Dragon_Reward[3330464][9]["GlobalId"] = 54377
	tAniversary2020Dragon_Reward[3330464][9]["MaxData"] = 1
	tAniversary2020Dragon_Reward[3330464][9]["FullIndex"] = 1
	tAniversary2020Dragon_Reward[3330464][9]["Pos"] = 4
	tAniversary2020Dragon_Reward[3330464][9]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330464][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330464][9]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330464][9]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330464][5] -- 全服公告
	tAniversary2020Dragon_Reward[3330464][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】


	tAniversary2020Dragon_Reward[3330465] = {}
	-- ===龙腾四海礼包
	-- ===索引: tAniversary2020Dragon_Reward[3330465]
	-- ===删除:3330465,1
	tAniversary2020Dragon_Reward[3330465]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAniversary2020Dragon_Reward[3330465]["DeleteItem"] = {}
	tAniversary2020Dragon_Reward[3330465]["DeleteItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465]["DeleteItem"][1]["Id"] = 3330465 -- 【库】龙腾四海礼包[属性:9]
	tAniversary2020Dragon_Reward[3330465]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330465]["LogStep"] = "2[5]"
	-- 赤炼石+5 - 17%
	tAniversary2020Dragon_Reward[3330465][1] = {}
	tAniversary2020Dragon_Reward[3330465][1]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][1]["ItemChance"] = 1700
	tAniversary2020Dragon_Reward[3330465][1]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][1]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][1]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tAniversary2020Dragon_Reward[3330465][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+5赤炼石（赠）*1
	tAniversary2020Dragon_Reward[3330465][1]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][1]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][1]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][1] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][1]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 璀璨星陨石 - 14%
	tAniversary2020Dragon_Reward[3330465][2] = {}
	tAniversary2020Dragon_Reward[3330465][2]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][2]["ItemChance"] = 1400
	tAniversary2020Dragon_Reward[3330465][2]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][2]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][2]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石
	tAniversary2020Dragon_Reward[3330465][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的璀璨星陨石*2
	tAniversary2020Dragon_Reward[3330465][2]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][2]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][2]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][2] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 龙鳞果 - 17%
	tAniversary2020Dragon_Reward[3330465][3] = {}
	tAniversary2020Dragon_Reward[3330465][3]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][3]["ItemChance"] = 1700
	tAniversary2020Dragon_Reward[3330465][3]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][3]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tAniversary2020Dragon_Reward[3330465][3]["RewardItem"][1]["Attr"] = "0 10" -- 龙鳞果*10
	tAniversary2020Dragon_Reward[3330465][3]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][3]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][3]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][3] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][3]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 万能神纹精粹 - 17%
	tAniversary2020Dragon_Reward[3330465][4] = {}
	tAniversary2020Dragon_Reward[3330465][4]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][4]["ItemChance"] = 1700
	tAniversary2020Dragon_Reward[3330465][4]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][4]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAniversary2020Dragon_Reward[3330465][4]["RewardItem"][1]["Attr"] = "0 150 3" -- 万能神纹精粹*150（[错误]物品数量超100个）
	tAniversary2020Dragon_Reward[3330465][4]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][4]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][4]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][4] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][4]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 6阶灵珠 - 8%
	tAniversary2020Dragon_Reward[3330465][5] = {}
	tAniversary2020Dragon_Reward[3330465][5]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][5]["ItemChance"] = 800
	tAniversary2020Dragon_Reward[3330465][5]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][5]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][5]["RewardItem"][1]["Id"] = 4200006 -- 6阶灵珠[4200006][属性:72][叠加:99][金币:0], 【表格】6阶灵珠
	tAniversary2020Dragon_Reward[3330465][5]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tAniversary2020Dragon_Reward[3330465][5]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//灵珠试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAniversary2020Dragon_Reward[3330465][5]["GlobalId"] = 54378
	tAniversary2020Dragon_Reward[3330465][5]["MaxData"] = 10
	tAniversary2020Dragon_Reward[3330465][5]["FullIndex"] = 4
	tAniversary2020Dragon_Reward[3330465][5]["Pos"] = 0
	tAniversary2020Dragon_Reward[3330465][5]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][5]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][5]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][5] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][5]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 赤炼石+6 - 4%
	tAniversary2020Dragon_Reward[3330465][6] = {}
	tAniversary2020Dragon_Reward[3330465][6]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][6]["ItemChance"] = 400
	tAniversary2020Dragon_Reward[3330465][6]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][6]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][6]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】赤炼石+6
	tAniversary2020Dragon_Reward[3330465][6]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+6赤炼石（赠）*1
	tAniversary2020Dragon_Reward[3330465][6]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][6]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][6]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][6] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][6]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 晶莹星陨石 - 5%
	tAniversary2020Dragon_Reward[3330465][7] = {}
	tAniversary2020Dragon_Reward[3330465][7]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][7]["ItemChance"] = 500
	tAniversary2020Dragon_Reward[3330465][7]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][7]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][7]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAniversary2020Dragon_Reward[3330465][7]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的晶莹星陨石*5
	tAniversary2020Dragon_Reward[3330465][7]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][7]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][7]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][7] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][7]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 天灵果 - 5%
	tAniversary2020Dragon_Reward[3330465][8] = {}
	tAniversary2020Dragon_Reward[3330465][8]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][8]["ItemChance"] = 500
	tAniversary2020Dragon_Reward[3330465][8]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][8]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][8]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tAniversary2020Dragon_Reward[3330465][8]["RewardItem"][1]["Attr"] = "0 3" -- 天灵果*3
	tAniversary2020Dragon_Reward[3330465][8]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][8]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][8]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][8] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][8]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 万能神纹精粹 - 5%
	tAniversary2020Dragon_Reward[3330465][9] = {}
	tAniversary2020Dragon_Reward[3330465][9]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][9]["ItemChance"] = 500
	tAniversary2020Dragon_Reward[3330465][9]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][9]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAniversary2020Dragon_Reward[3330465][9]["RewardItem"][1]["Attr"] = "0 500 3" -- 万能神纹精粹*500（[错误]物品数量超100个）
	tAniversary2020Dragon_Reward[3330465][9]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][9]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][9]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][9] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][9]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 1亿爵位勋章 - 5%
	tAniversary2020Dragon_Reward[3330465][10] = {}
	tAniversary2020Dragon_Reward[3330465][10]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][10]["ItemChance"] = 500
	tAniversary2020Dragon_Reward[3330465][10]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][10]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][10]["RewardItem"][1]["Id"] = 3322813 -- 1亿爵位勋章[3322813][属性:8][叠加:1][金币:0], 【表格】1亿爵位勋章
	tAniversary2020Dragon_Reward[3330465][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的1亿爵位勋章（赠）*1
	tAniversary2020Dragon_Reward[3330465][10]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][10]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][10]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][10] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][10]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 7阶灵珠 - 3%
	tAniversary2020Dragon_Reward[3330465][11] = {}
	tAniversary2020Dragon_Reward[3330465][11]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][11]["ItemChance"] = 300
	tAniversary2020Dragon_Reward[3330465][11]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][11]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][11]["RewardItem"][1]["Id"] = 4200007 -- 7阶灵珠[4200007][属性:72][叠加:99][金币:0], 【表格】7阶灵珠
	tAniversary2020Dragon_Reward[3330465][11]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tAniversary2020Dragon_Reward[3330465][11]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//灵珠试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAniversary2020Dragon_Reward[3330465][11]["GlobalId"] = 54378
	tAniversary2020Dragon_Reward[3330465][11]["MaxData"] = 5
	tAniversary2020Dragon_Reward[3330465][11]["FullIndex"] = 12
	tAniversary2020Dragon_Reward[3330465][11]["Pos"] = 1
	tAniversary2020Dragon_Reward[3330465][11]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][11]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][11]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][11] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][11]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	-- 万能神纹精粹 - 0%
	tAniversary2020Dragon_Reward[3330465][12] = {}
	tAniversary2020Dragon_Reward[3330465][12]["RandomItemChanceType"] = 2
	tAniversary2020Dragon_Reward[3330465][12]["ItemChance"] = 0
	tAniversary2020Dragon_Reward[3330465][12]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330465][12]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330465][12]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tAniversary2020Dragon_Reward[3330465][12]["RewardItem"][1]["Attr"] = "0 1000 3" -- 万能神纹精粹*1000（[错误]物品数量超100个）
	tAniversary2020Dragon_Reward[3330465][12]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330465][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330465][12]["RewardEffect"]["Effect"] = "angelwing"
	tAniversary2020Dragon_Reward[3330465][12]["RewardBroadCast"] = tAniversary2020Dragon_Text["Board"]["Open"][3330465][12] -- 全服公告
	tAniversary2020Dragon_Reward[3330465][12]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
	
	-- 双人骑宠碎片
	tAniversary2020Dragon_Reward[3330474] = {}
	tAniversary2020Dragon_Reward[3330474][1] = {}
	tAniversary2020Dragon_Reward[3330474][1]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330474][1]["LogStep"] = "2[6]"
	tAniversary2020Dragon_Reward[3330474][1]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330474][1]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330474][1]["RewardItem"][1]["Id"] = 205003
	tAniversary2020Dragon_Reward[3330474][1]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tAniversary2020Dragon_Reward[3330474][1]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330474][1]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward[3330474][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 双人骑宠碎片
	tAniversary2020Dragon_Reward[3330474][2] = {}
	tAniversary2020Dragon_Reward[3330474][2]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330474][2]["LogStep"] = "2[6]"
	tAniversary2020Dragon_Reward[3330474][2]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330474][2]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330474][2]["RewardItem"][1]["Id"] = 205003
	tAniversary2020Dragon_Reward[3330474][2]["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
	tAniversary2020Dragon_Reward[3330474][2]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330474][2]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward[3330474][2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 双人骑宠碎片
	tAniversary2020Dragon_Reward[3330474][3] = {}
	tAniversary2020Dragon_Reward[3330474][3]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330474][3]["LogStep"] = "2[7]"
	tAniversary2020Dragon_Reward[3330474][3]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330474][3]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330474][3]["RewardItem"][1]["Id"] = 3330474
	tAniversary2020Dragon_Reward[3330474][3]["RewardItem"][1]["Attr"] = "0 2"
	tAniversary2020Dragon_Reward[3330474][3]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330474][3]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward[3330474][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 洗赠道具
	tAniversary2020Dragon_Reward[3330475] = {}
	tAniversary2020Dragon_Reward[3330475][1] = {}
	tAniversary2020Dragon_Reward[3330475][1]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330475][1]["LogStep"] = "2[8]"
	tAniversary2020Dragon_Reward[3330475][1]["DeleteItem"] = {}
	tAniversary2020Dragon_Reward[3330475][1]["DeleteItem"][1] = {}
	tAniversary2020Dragon_Reward[3330475][1]["DeleteItem"][1]["Id"] = 3330475
	tAniversary2020Dragon_Reward[3330475][1]["RewardItem"] = {}
	tAniversary2020Dragon_Reward[3330475][1]["RewardItem"][1] = {}
	tAniversary2020Dragon_Reward[3330475][1]["RewardItem"][1]["Id"] = 196225
	tAniversary2020Dragon_Reward[3330475][1]["RewardItem"][1]["Attr"] = "0 1 0 0 1 0 0 1"
	tAniversary2020Dragon_Reward[3330475][1]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330475][1]["RewardEffect"]["SzObj"] = "self"
	tAniversary2020Dragon_Reward[3330475][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tAniversary2020Dragon_Reward[3330475][2] = {}
	tAniversary2020Dragon_Reward[3330475][2]["LogId"] = 12001906
	tAniversary2020Dragon_Reward[3330475][2]["LogStep"] = "2[8]"
	tAniversary2020Dragon_Reward[3330475][2]["DeleteItem"] = {}
	tAniversary2020Dragon_Reward[3330475][2]["DeleteItem"][1] = {}
	tAniversary2020Dragon_Reward[3330475][2]["DeleteItem"][1]["Id"] = 3330475
	tAniversary2020Dragon_Reward[3330475][2]["RewardStrengthValue"] = {}
	tAniversary2020Dragon_Reward[3330475][2]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】50000点气力值
	tAniversary2020Dragon_Reward[3330475][2]["RewardEffect"] = {}
	tAniversary2020Dragon_Reward[3330475][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAniversary2020Dragon_Reward[3330475][2]["RewardEffect"]["Effect"] = "angelwing"
	
local tAniversary2020Dragon_Log = {}
	tAniversary2020Dragon_Log["DelItem"] = "0,0,%d,%d,12001906,2[1],0,0" -- 删除任务物品
----------------------------------逻辑部分---------------------------------------------
-- 喂养判断
function Aniversary2020Dragon_FeedSelect(nNpcId,nType)
	local nItemId = tAniversary2020Dragon_Data["FeedItemId"][nType]
	local nTextId = 1
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["FireworksTime"]) then
		nTextId = 0
	else
		nTextId = 2
	end
	if not Item_ChkItem(nItemId) then
		nTextId = nTextId + nType
		LinkNpcGossipFunc_New(nNpcId,"2-"..nTextId)
		return
	end
	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-6")
	end
end

-- 喂养神龙
function Aniversary2020Dragon_Feed(nNpcId,nType,nNum)
	local nUserId = Get_UserId()
	local nItemId = tAniversary2020Dragon_Data["FeedItemId"][nType]
	if not Item_ChkItem(nItemId) then
		return
	end
	if nNum == 0 then
		nNum = Get_CountItemType(nItemId,0)
	end
	local nExpEvent = tAniversary2020Dragon_Stc["Exp"]["EventType"]
	local nExpType = tAniversary2020Dragon_Stc["Exp"]["DataType"]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
	local nFeedExp = tAniversary2020Dragon_Data["FeedExp"][nType] * nNum
	local nDailyEvent = tAniversary2020Dragon_Stc["Daily"]["EventType"]
	local nDailyType = tAniversary2020Dragon_Stc["Daily"]["DataType"]
	local nDailyData = Get_UserStatisticValue(nDailyEvent,nDailyType)
	-- 神龙等级
	local nLevEvent = tAniversary2020Dragon_Stc["Lev"]["EventType"]
	local nLevType = tAniversary2020Dragon_Stc["Lev"]["DataType"]
	local nLevData = Get_UserStatisticValue(nLevEvent,nLevType)
	local nRank = 3
	if nLevData < tAniversary2020Dragon_Data["MaxLev"] then
		for m, n in pairs(tAniversary2020Dragon_Data["Rank"]) do
			if n[1] <= nLevData and n[2] >= nLevData then
				nRank = m
				break
			end
		end
	end
	-- 背包空间判断
	local nSpace = 0
	if nDailyData == 0 then
		nSpace = nSpace + RewardTemplate_GetRewardSpace(tAniversary2020Dragon_Reward["Daily"][nRank])
	end
	local nTempFeedExp = nFeedExp
	local nTempSpace = 0
	for i = nLevData,100 do
		local nNowLev = i
		local nOverLev = 0
		if nNowLev >= tAniversary2020Dragon_Data["MaxLev"] then
			nNowLev = tAniversary2020Dragon_Data["MaxLev"]
			nOverLev = i - tAniversary2020Dragon_Data["MaxLev"]
		end
		if nExpData + nTempFeedExp >= tAniversary2020Dragon_Data["Exp"]["Total"][nNowLev] + tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]] * nOverLev then
			if (nNowLev + 1) % 5 == 0 then
				nSpace = nSpace + RewardTemplate_GetRewardSpace(tAniversary2020Dragon_Reward["RankUp"][nNowLev+1])
			else
				nTempSpace = 1
			end
		else
			nSpace = nSpace + nTempSpace
			break
		end
	end
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tAniversary2020Dragon_Text["Msg"]["FeedNoSpace"],nSpace))
		return
	end
	
	-- 删除打掩码给奖励出对白
	if Item_ChkItem(nItemId) and Item_DelMulItem(nItemId,nItemId,nNum) then
		local sDelItemLog = string.format(tAniversary2020Dragon_Log["DelItem"],nItemId,nNum)
		Sys_SaveActionFestivalLog(sDelItemLog)
		Task_AddStatistic(nExpEvent,nExpType,nFeedExp,1,nUserId)
		Task_SetStcTimestamp(nExpEvent,nExpType,0,nUserId)
		local nNowExpData = Get_UserStatisticValue(nExpEvent,nExpType)
		RankingFunc_SetInfo(tAniversary2020Dragon_Data["RankIndex"],nNowExpData,nUserId)
		User_TalkChannel2005(string.format(tAniversary2020Dragon_Text["Board"]["FirstFeed"],nNum,tAniversary2020Dragon_Text["Word"]["FeedItem"][nType],nFeedExp))
		if nDailyData == 0 then
			RewardTemplate_UseItemAndMsg(tAniversary2020Dragon_Reward["Daily"][nRank])
			Sys_MsgBox(string.format(tAniversary2020Dragon_Text["Msg"]["FirstFeed"],nRank))
			Task_SetStatistic(nDailyEvent,nDailyType,1,1,nUserId)
			Task_SetStcTimestamp(nDailyEvent,nDailyType,0,nUserId)
		end
		local nTempFeedExp = nFeedExp
		local nTempReward = 0
		local sRealRewardStr = ""
		local bRankUp = 0
		for i = nLevData,10000 do
			local nNowLev = i
			local nOverLev = 0
			if nNowLev >= tAniversary2020Dragon_Data["MaxLev"] then
				nNowLev = tAniversary2020Dragon_Data["MaxLev"]
				nOverLev = i - tAniversary2020Dragon_Data["MaxLev"]
			end
			if nExpData + nTempFeedExp >= tAniversary2020Dragon_Data["Exp"]["Total"][nNowLev] + tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]] * nOverLev then
				Task_AddStatistic(nLevEvent,nLevType,1,1,nUserId)
				Aniversary2020Dragon_GetMagic()
				bRankUp = 1
				if (nNowLev + 1) % 5 == 0 then
					local bFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tAniversary2020Dragon_Reward["RankUp"][nNowLev+1])
					if sRealRewardStr == "" then
						sRealRewardStr = sRewardStr
					else
						sRealRewardStr = string.format(tAniversary2020Dragon_Text["Word"]["Link"],sRealRewardStr,sRewardStr)
					end
				else
					nTempReward = nTempReward + 1
				end
			else
				if nTempReward > 0 then
					local tReward = CommonFunc_Copy(tAniversary2020Dragon_Reward["RankUp"][2])
					tReward["RewardItem"][1]["Attr"] = "0 "..nTempReward
					local bFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tReward)
					if sRealRewardStr == "" then
						sRealRewardStr = sRewardStr
					else
						sRealRewardStr = string.format(tAniversary2020Dragon_Text["Word"]["Link"],sRealRewardStr,sRewardStr)
					end
				end
				break
			end
		end
		if sRealRewardStr ~= "" then
			Sys_MsgBox(string.format(tAniversary2020Dragon_Text["Msg"]["RankUp"],sRealRewardStr))
		end
		local sUserName = Get_UserName(nUserId)
		local nNowLevData = Get_UserStatisticValue(nLevEvent,nLevType)
		if nLevData <= 9 and nNowLevData > 9 then
			if SpecialServer_ChkNoGiftServer() then
				User_PlayPlot(52) --成长期
			else
				User_PlayPlot(50) --成长期
			end
			Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["LevUp"][1])
			Sys_TalkBroadcast(string.format(tAniversary2020Dragon_Text["Board"]["LevUp"][1],sUserName))
		end
		if nLevData <= 19 and nNowLevData > 19 then
			if SpecialServer_ChkNoGiftServer() then
				User_PlayPlot(53) --成龙期
			else
				User_PlayPlot(51) --成龙期
			end
			Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["LevUp"][2])
			Sys_TalkBroadcast(string.format(tAniversary2020Dragon_Text["Board"]["LevUp"][2],sUserName))
		end
		if nLevData <= 29 and nNowLevData > 29 then
			Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["LevUp"][3])
			Sys_TalkBroadcast(string.format(tAniversary2020Dragon_Text["Board"]["LevUp"][3],sUserName))
		end
		User_EffectAdd("self",tAniversary2020Dragon_Data["Effect"][bRankUp])
	end
	if nType == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	else
		LinkNpcGossipFunc_New(nNpcId,"2-6")
	end
end

-- 升级技能
function Aniversary2020Dragon_GetMagic()
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["SkillTime"]) then
		return false
	end
	-- 神龙等级
	local nLevEvent = tAniversary2020Dragon_Stc["Lev"]["EventType"]
	local nLevType = tAniversary2020Dragon_Stc["Lev"]["DataType"]
	local nLevData = Get_UserStatisticValue(nLevEvent,nLevType) or 0
	if nLevData == nil or nLevData == 0 then
		return false
	end
	if nLevData > tAniversary2020Dragon_Data["MaxLev"] + 1 then
		nLevData = tAniversary2020Dragon_Data["MaxLev"] + 1
	end
	local nRank = math.floor((nLevData - 1) / 10) + 1
	local nLev = (nLevData - 1) % 10
	if nRank > 3 then
		nRank = 4
	end
	local nMagicType = tAniversary2020Dragon_Data["Skill"][nRank]
	if not Magic_ChkType(nMagicType) then
		Magic_Learn(nMagicType,nUserId)
	end
	if nRank > 1 then
		for i = 1,nRank - 1 do
			local nOldMagicType = tAniversary2020Dragon_Data["Skill"][i]
			if Magic_ChkType(nOldMagicType) then
				Magic_Del(nOldMagicType,nUserId)
			end
		end
	end
	if nLevData > tAniversary2020Dragon_Data["MaxLev"] then
		return true
	end
	for i = 0,nLev do
		if Magic_ChkLev(nMagicType,nLev) then
			break
		end
		Magic_UpLev(nMagicType)
	end
	return true
end

-- 碎片合成外套
function Aniversary2020Dragon_MakeOne(nItemId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nNum = tAniversary2020Dragon_Data["Pieces"][1]
	if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
		RewardTemplate_UseItemAndMsg(tAniversary2020Dragon_Reward[nItemId][1])
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["CoatChange"])
		Sys_SystemBroadcast(string.format(tAniversary2020Dragon_Text["Board"]["CoatChange"],sUserName))
	else
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["NoPieces"])
	end
end

-- 2个碎片合成
function Aniversary2020Dragon_MakeTwo(nItemId)
	local nUserId = Get_UserId()
	local sFunc = "Aniversary2020Dragon_MakeTwo</N>"..nItemId
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local bFlag = 0
		local nPiecesEvent = tAniversary2020Dragon_Stc["Pieces"]["EventType"]
		local nPiecesType = tAniversary2020Dragon_Stc["Pieces"]["DataType"]
		local nPiecesData = Get_UserStatisticValue(nPiecesEvent,nPiecesType) or 0
		if nPiecesData >= 5 then
			bFlag = 0
		elseif Sys_Random(48,100) then
			bFlag = 1
		else
			bFlag = 0
		end
		if bFlag == 1 then
			RewardTemplate_UseItemAndMsg(tAniversary2020Dragon_Reward[nItemId][3])
			Task_AddStatistic(nPiecesEvent,nPiecesType,1,1,nUserId)
			Task_SetStcTimestamp(nPiecesEvent,nPiecesType,0,nUserId)
			Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["TwoPiceSuccess"],sFunc)
		elseif nPiecesData > 0 then
			Task_AddStatistic(nPiecesEvent,nPiecesType,-1,1,nUserId)
			Task_SetStcTimestamp(nPiecesEvent,nPiecesType,0,nUserId)
			Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["TwoPiceFail"],sFunc)
		else
			Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["TwoPiceFail"],sFunc)
		end
	else
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["NoPieces3"])
	end
end

-- 去除赠属性
function Aniversary2020Dragon_OutGift(nItemId)
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["NoPieces2"])
		return
	end
	-- 是否有洗赠外套
	local nCoatItemId = tAniversary2020Dragon_Data["Coat"]["Mount"]
	-- 时效外套
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) then
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["NoMount"])
		return
	end
	
	local nNum = tAniversary2020Dragon_Data["Pieces"][2]
	if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) then
		RewardTemplate_UseItem(tAniversary2020Dragon_Reward[nItemId][2])
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["HaveMount"])
		return
	end
	Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["NoPieces2"])
end

-- 洗赠道具
function Aniversary2020Dragon_WashGift(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ItemTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAniversary2020Dragon_Text["Msg"]["OverTime"])
 		end
		return
	end
	-- 是否有洗赠外套
	local nCoatItemId = tAniversary2020Dragon_Data["Coat"]["Light"]
	-- 时效外套
	local nUserId = Get_UserId()
	if not Item_ChkMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) then
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["NoCoat"])
		return
	end
	
	if Item_DelMulItem(nCoatItemId,nCoatItemId,1,2,0,nUserId,0) then
		RewardTemplate_UseItem(tAniversary2020Dragon_Reward[nItemId][1])
		Sys_MsgBox(tAniversary2020Dragon_Text["Msg"]["HaveCoat"])
	end
end

function Aniversary2020Dragon_NoWash(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ItemTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAniversary2020Dragon_Text["Msg"]["OverTime"])
 		end
		return
	end
	RewardTemplate_UseItem(tAniversary2020Dragon_Reward[nItemId][2])
end

-- 选择面板
function Aniversary2020Dragon_ChooseWindow(nItemId,nIndex)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAniversary2020Dragon_Text["Msg"]["OverTime"])
 		end
		return
	end
	Aniversary2020Dragon_ChgWindow(nIndex)
	Sys_MsgBox(tAniversary2020Dragon_Text["Board"]["ChgWindow"][nIndex])
	User_EffectAdd("self",tAniversary2020Dragon_Data["Effect"]["ChaWindow"])
end

-- 切换面板
function Aniversary2020Dragon_ChgWindow(nIndex)
	local nUserId = Get_UserId()
	User_NotifyChgWindow(131,nIndex, nUserId)
end

-- 寻路
function Aniversary2020Dragon_FindNPC(nNum)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		return
	end
	
	NpcPosition_PathFind(tAniversary2020Dragon_Data["NPCId"][nNum])
end

-- 清理面板
function Aniversary2020Dragon_ClearWindow()
	-- 判断时间
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["SkillTime"]) then
		return
	end
	local nClearEvent = tAniversary2020Dragon_Stc["Clear"]["EventType"]
	local nClearType = tAniversary2020Dragon_Stc["Clear"]["DataType"]
	local nClearData = Get_UserStatisticValue(nClearEvent,nClearType) or 0
	if nClearData == 1 then
		return
	end
	Aniversary2020Dragon_ChgWindow(0)
	for i = 1,4 do
		local nOldMagicType = tAniversary2020Dragon_Data["Skill"][i]
		if Magic_ChkType(nOldMagicType) then
			Magic_Del(nOldMagicType)
		end
	end
	Task_SetStatistic(nClearEvent,nClearType,1,1)
	Task_SetStcTimestamp(nClearEvent,nClearType,0)
end

--跳转线下页面
function Aniversary2020Dragon_Link()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["RankTime"]) then 
		return 
	end 
	local nLanguage = User_ChkLanguage()
	User_SendWebDialog(tAniversary2020Dragon_Data["Web"][nLanguage])
end 

-- 清理表限制
function Aniversary2020Dragon_ClearGlobalId()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"]) then
		return
	end
	local nGlobalId = tAniversary2020Dragon_Data["GlobalId"]
	Sys_ResetAllSynaGlobalData(nGlobalId)
end

----------------------------------NPC部分---------------------------------------------
-- 喂养神龙
tNpcFace[4944] = 2894
tNpcGossip[26248]= tNpcGossip[26248] or DefaultNpc:new{}
tNpcGossip[26248]["OptionHidden"] = 1
tNpcGossip[26248]["DialogueText"] = tAniversary2020Dragon_Text[26248]
tNpcGossip[26248]["Text1-1"] = {111,112,113,114,115,116,117,119,1110,1111}
tNpcGossip[26248]["ChkFunc1-1"]= function()
	local nUserId = Get_UserId()
	local nDailyEvent = tAniversary2020Dragon_Stc["Daily"]["EventType"]
	local nDailyType = tAniversary2020Dragon_Stc["Daily"]["DataType"]
	local nDailyData = Get_UserStatisticValue(nDailyEvent,nDailyType)
	if Task_StcInterval(nDailyEvent, nDailyType, 1, 4, nUserId) then
		Task_SetStatistic(nDailyEvent,nDailyType,0,1,nUserId)
		Task_SetStcTimestamp(nDailyEvent,nDailyType,0,nUserId)
	end
	-- 神龙等级
	local nLevEvent = tAniversary2020Dragon_Stc["Lev"]["EventType"]
	local nLevType = tAniversary2020Dragon_Stc["Lev"]["DataType"]
	local nLevData = Get_UserStatisticValue(nLevEvent,nLevType)
	if nLevData == 0 or nLevData == nil then
		Task_SetStatistic(nLevEvent,nLevType,1,1,nUserId)
		nLevData = 1
	end
	local nRank = 4
	if nLevData < tAniversary2020Dragon_Data["MaxLev"] then
		for m, n in pairs(tAniversary2020Dragon_Data["Rank"]) do
			if n[1] <= nLevData and n[2] >= nLevData then
				nRank = m
				break
			end
		end
	end
	local sLevText = tAniversary2020Dragon_Text["Word"]["Rank"][nRank]
	if nLevData < tAniversary2020Dragon_Data["MaxLev"] then
		sLevText = string.format(tAniversary2020Dragon_Text["Word"]["Rank"][nRank],nLevData)
	end
	tNpcGossip[26248]["Text113"] = string.format(tAniversary2020Dragon_Text[26248]["Text113"],sLevText)
	-- 养成值
	local nExpEvent = tAniversary2020Dragon_Stc["Exp"]["EventType"]
	local nExpType = tAniversary2020Dragon_Stc["Exp"]["DataType"]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
	local nRankExp = nExpData
	local nRankTotalExp = tAniversary2020Dragon_Data["Exp"]["Rank"][nLevData]
	if nLevData > tAniversary2020Dragon_Data["MaxLev"] then
		nRankExp = nExpData - tAniversary2020Dragon_Data["Exp"]["Total"][tAniversary2020Dragon_Data["MaxLev"]] - tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]] * (nLevData - tAniversary2020Dragon_Data["MaxLev"] - 1)
		nRankTotalExp = tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]]
	elseif nLevData > 1 then
		nRankExp = nExpData - tAniversary2020Dragon_Data["Exp"]["Total"][nLevData-1]
	end
	local sExpPic = ""
	local nExpWord = 10
	for i = 1,10 do
		if nRankExp / nRankTotalExp < i/10 then
			nExpWord = i - 1
			break
		end
	end
	sExpPic = tAniversary2020Dragon_Text["Word"]["Exp"][nExpWord]
	tNpcGossip[26248]["Text115"] = string.format(tAniversary2020Dragon_Text[26248]["Text115"],sExpPic,nRankExp,nRankTotalExp)
	-- 阶段目标
	if nLevData >= tAniversary2020Dragon_Data["MaxLev"] then
		tNpcGossip[26248]["Text1-1"] = {111,112,113,114,115,117,118,119,1110,1111}
	else
		tNpcGossip[26248]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
		for k, v in pairs(tAniversary2020Dragon_Data["RankGoal"]) do
			if v > nLevData then
				tNpcGossip[26248]["Text116"] = string.format(tAniversary2020Dragon_Text[26248]["Text116"],v,tAniversary2020Dragon_Text["Word"]["Goal"][v])
				break
			end
		end
	end
	-- 首次喂养选项
	if nExpData == 0 or nExpData == nil then
		tNpcGossip[26248]["tOption1-1"] = {111}
	else
		tNpcGossip[26248]["tOption1-1"] = {111,112,113,114}
	end
	-- 最后一天排行榜
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["LastTime"]) then
		tNpcGossip[26248]["tOption1-1"] = {113}
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tAniversary2020Dragon_Data["Level"], tAniversary2020Dragon_Data["Metempsychosis"]) then
		return false
	end
	if Get_UserStatisticValue(tAniversary2020Dragon_Stc[1]["EventType"],tAniversary2020Dragon_Stc[1]["DataType"]) >= 2 and Get_UserStatisticValue(tAniversary2020Dragon_Stc[2]["EventType"],tAniversary2020Dragon_Stc[2]["DataType"]) > 0 then
		return true
	else
		return false
	end
end
tNpcGossip[26248]["tOption1-1"] = {111,112,113,114,115}
tNpcGossip[26248]["OptionFunc111"] = "Aniversary2020Dragon_FeedSelect</N>26248</N>1"
tNpcGossip[26248]["OptionFunc112"] = "Aniversary2020Dragon_FeedSelect</N>26248</N>2"
tNpcGossip[26248]["OptionPoint113"] = "4-1"
tNpcGossip[26248]["OptionPoint114"] = "12-1"
-- 闲时对白
tNpcGossip[26248]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[26248]["ChkFunc1-2"]= function()
	return true
end
tNpcGossip[26248]["tOption1-2"] = {121,122,123}
tNpcGossip[26248]["OptionFunc121"] = "Aniversary2020Dragon_FindNPC</N>1"
tNpcGossip[26248]["OptionFunc122"] = "Aniversary2020Dragon_FindNPC</N>1"
tNpcGossip[26248]["OptionFunc123"] = "Aniversary2020Dragon_FindNPC</N>1"

-- 1-2周，无灵龙草
tNpcGossip[26248]["Text2-1"] = {201,202,211}
tNpcGossip[26248]["ChkFunc2-1"]= function()
	return true
end
tNpcGossip[26248]["tOption2-1"] = {211,212,213}
tNpcGossip[26248]["OptionFunc211"] = "Aniversary2020Dragon_FindNPC</N>2"
tNpcGossip[26248]["OptionFunc212"] = "Aniversary2020Dragon_FindNPC</N>3"
-- 3-4周，无灵龙草
tNpcGossip[26248]["Text2-2"] = {201,202,221}
tNpcGossip[26248]["ChkFunc2-2"]= function()
	return true
end
tNpcGossip[26248]["tOption2-2"] = {221,222,223}
tNpcGossip[26248]["OptionFunc221"] = "Aniversary2020Dragon_FindNPC</N>2"
tNpcGossip[26248]["OptionFunc222"] = "Aniversary2020Dragon_FindNPC</N>3"
-- 1-2周，无圣龙果
tNpcGossip[26248]["Text2-3"] = {201,202,231}
tNpcGossip[26248]["ChkFunc2-3"]= function()
	return true
end
tNpcGossip[26248]["tOption2-3"] = {231,232,233}
tNpcGossip[26248]["OptionFunc231"] = "Aniversary2020Dragon_FindNPC</N>2"
tNpcGossip[26248]["OptionFunc232"] = "Aniversary2020Dragon_FindNPC</N>3"
-- 3-4周，无圣龙果
tNpcGossip[26248]["Text2-4"] = {201,202,241}
tNpcGossip[26248]["ChkFunc2-4"]= function()
	return true
end
tNpcGossip[26248]["tOption2-4"] = {241,242,243}
tNpcGossip[26248]["OptionFunc241"] = "Aniversary2020Dragon_FindNPC</N>2"
tNpcGossip[26248]["OptionFunc242"] = "Aniversary2020Dragon_FindNPC</N>3"
-- 喂养二次确认 灵龙草
tNpcGossip[26248]["Text2-5"] = {201,202,251}
tNpcGossip[26248]["ChkFunc2-5"]= function()
	local nUserId = Get_UserId()
	-- 神龙等级
	local nLevEvent = tAniversary2020Dragon_Stc["Lev"]["EventType"]
	local nLevType = tAniversary2020Dragon_Stc["Lev"]["DataType"]
	local nLevData = Get_UserStatisticValue(nLevEvent,nLevType)
	local nExpEvent = tAniversary2020Dragon_Stc["Exp"]["EventType"]
	local nExpType = tAniversary2020Dragon_Stc["Exp"]["DataType"]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
	local nRankExp = nExpData
	local nRankTotalExp = tAniversary2020Dragon_Data["Exp"]["Rank"][nLevData]
	if nLevData > tAniversary2020Dragon_Data["MaxLev"] then
		nRankExp = nExpData - tAniversary2020Dragon_Data["Exp"]["Total"][tAniversary2020Dragon_Data["MaxLev"]] - tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]] * (nLevData - tAniversary2020Dragon_Data["MaxLev"] - 1)
		nRankTotalExp = tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]]
	elseif nLevData > 1 then
		nRankExp = nExpData - tAniversary2020Dragon_Data["Exp"]["Total"][nLevData-1]
	end
	local nNum = math.ceil((nRankTotalExp - nRankExp)/tAniversary2020Dragon_Data["FeedExp"][1])
	local nItemId = tAniversary2020Dragon_Data["FeedItemId"][1]
	if nNum >= 1 and Item_ChkMulItem(nItemId,nItemId,nNum) then
		tNpcGossip[26248]["tOption2-5"] = {251,252,253,254}
		tNpcGossip[26248]["Option252"] = string.format(tAniversary2020Dragon_Text[26248]["Option252"],nNum)
		tNpcGossip[26248]["OptionFunc252"] = "Aniversary2020Dragon_Feed</N>26248</N>1</N>"..nNum
	else
		tNpcGossip[26248]["tOption2-5"] = {251,253,254}
	end
	return true
end
tNpcGossip[26248]["tOption2-5"] = {251,252,253,254}
tNpcGossip[26248]["OptionFunc251"] = "Aniversary2020Dragon_Feed</N>26248</N>1</N>1"
tNpcGossip[26248]["OptionFunc253"] = "Aniversary2020Dragon_Feed</N>26248</N>1</N>0"
tNpcGossip[26248]["OptionPoint254"] = "1-1"
-- 喂养二次确认 圣龙果
tNpcGossip[26248]["Text2-6"] = {201,202,261}
tNpcGossip[26248]["ChkFunc2-6"]= function()
	local nUserId = Get_UserId()
	-- 神龙等级
	local nLevEvent = tAniversary2020Dragon_Stc["Lev"]["EventType"]
	local nLevType = tAniversary2020Dragon_Stc["Lev"]["DataType"]
	local nLevData = Get_UserStatisticValue(nLevEvent,nLevType)
	local nExpEvent = tAniversary2020Dragon_Stc["Exp"]["EventType"]
	local nExpType = tAniversary2020Dragon_Stc["Exp"]["DataType"]
	local nExpData = Get_UserStatisticValue(nExpEvent,nExpType)
	local nRankExp = nExpData
	local nRankTotalExp = tAniversary2020Dragon_Data["Exp"]["Rank"][nLevData]
	if nLevData > tAniversary2020Dragon_Data["MaxLev"] then
		nRankExp = nExpData - tAniversary2020Dragon_Data["Exp"]["Total"][tAniversary2020Dragon_Data["MaxLev"]] - tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]] * (nLevData - tAniversary2020Dragon_Data["MaxLev"] - 1)
		nRankTotalExp = tAniversary2020Dragon_Data["Exp"]["Rank"][tAniversary2020Dragon_Data["MaxLev"]]
	elseif nLevData > 1 then
		nRankExp = nExpData - tAniversary2020Dragon_Data["Exp"]["Total"][nLevData-1]
	end
	local nNum = math.ceil((nRankTotalExp - nRankExp)/tAniversary2020Dragon_Data["FeedExp"][2])
	local nItemId = tAniversary2020Dragon_Data["FeedItemId"][2]
	if nNum >= 1 and Item_ChkMulItem(nItemId,nItemId,nNum) then
		tNpcGossip[26248]["tOption2-6"] = {261,262,263,264}
		tNpcGossip[26248]["Option262"] = string.format(tAniversary2020Dragon_Text[26248]["Option262"],nNum)
		tNpcGossip[26248]["OptionFunc262"] = "Aniversary2020Dragon_Feed</N>26248</N>2</N>"..nNum
	else
		tNpcGossip[26248]["tOption2-6"] = {261,263,264}
	end
	return true
end
tNpcGossip[26248]["tOption2-6"] = {261,262,263,264}
tNpcGossip[26248]["OptionFunc261"] = "Aniversary2020Dragon_Feed</N>26248</N>2</N>1"
tNpcGossip[26248]["OptionFunc263"] = "Aniversary2020Dragon_Feed</N>26248</N>2</N>0"
tNpcGossip[26248]["OptionPoint264"] = "1-1"

-- 查看养成奖励
tNpcGossip[26248]["Text12-1"] = {1201,1202,1211,1212,1213,1214,1215,1216,1217,1218,1219,12110,12111,12112,12113,12114}
tNpcGossip[26248]["ChkFunc12-1"]= function()
	return true
end
tNpcGossip[26248]["tOption12-1"] = {1211,1212,1213}
tNpcGossip[26248]["OptionPoint1211"] = "12-2"
tNpcGossip[26248]["OptionPoint1212"] = "12-3"
tNpcGossip[26248]["OptionPoint1213"] = "1-1"
-- 成长期奖励
tNpcGossip[26248]["Text12-2"] = {1201,1202,1221,1222,1223,1224,1225,1226,1227,1228,1229,12210,12211,12212,12213,12214,12215}
tNpcGossip[26248]["ChkFunc12-1"]= function()
	return true
end
tNpcGossip[26248]["tOption12-2"] = {1221,1222,1223}
tNpcGossip[26248]["OptionPoint1221"] = "12-1"
tNpcGossip[26248]["OptionPoint1222"] = "12-3"
tNpcGossip[26248]["OptionPoint1223"] = "1-1"
-- 乘龙期奖励
tNpcGossip[26248]["Text12-3"] = {1201,1202,1231,1232,1233,1234,1235,1236,1237,1238,1239,12310,12311,12312,12313,12314,12315,12316}
tNpcGossip[26248]["ChkFunc12-3"]= function()
	return true
end
tNpcGossip[26248]["tOption12-3"] = {1231,1232,1233}
tNpcGossip[26248]["OptionPoint1231"] = "12-1"
tNpcGossip[26248]["OptionPoint1232"] = "12-2"
tNpcGossip[26248]["OptionPoint1233"] = "1-1"

--养成排行榜
tNpcGossip[26248]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429}
tNpcGossip[26248]["tOption4-1"] = {411,412,413}
tNpcGossip[26248]["ChkFunc4-1"] = function()
	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["RankTime"]) then 
		local nAniversary2020Dragon_Index =415
		local tRankData = RankingFunc_GetNowData(tAniversary2020Dragon_Data["RankIndex"])
		local sAniversary2020Rank_Name = ""
		local sAniversary2020Rank_Score = ""
		for i = 1, 10 do
			if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
				sAniversary2020Rank_Score = tostring(tRankData[i]["Score"])
				sAniversary2020Rank_Name = tRankData[i]["UserName"]
			else
				sAniversary2020Rank_Score = tAniversary2020Dragon_Text["Word"]["Score"]
				sAniversary2020Rank_Name = tAniversary2020Dragon_Text["Word"]["Name"]
			end
			
			-- 名字处理 -- 海外使用
			sAniversary2020Rank_Name = string.gsub(sAniversary2020Rank_Name, "<", " ")
			sAniversary2020Rank_Name = string.gsub(sAniversary2020Rank_Name, ">", " ")
			
			local sAniversary2020Rank_Text1=Sys_CenterAline(tostring(i), 8,tostring(sAniversary2020Rank_Score), 23, tostring(sAniversary2020Rank_Name), 42)
			local sAniversary2020Rank_Text2=""
			tNpcGossip[26248]["Text" .. nAniversary2020Dragon_Index + i] = string.format(tAniversary2020Dragon_Text[26248]["Text" .. nAniversary2020Dragon_Index + i],sAniversary2020Rank_Text1,sAniversary2020Rank_Text2)
		end 
		local nAniversary2020Dragon_UserId=Get_UserId()
		local nAniversary2020Dragon_GrowEvent=tAniversary2020Dragon_Stc["Exp"]["EventType"]
		local nAniversary2020Dragon_GrowType=tAniversary2020Dragon_Stc["Exp"]["DataType"]
		local nAniversary2020Dragon_NowGrowData=Get_UserStatisticValue(nAniversary2020Dragon_GrowEvent,nAniversary2020Dragon_GrowType)
		tNpcGossip[26248]["Text428"]= string.format(tAniversary2020Dragon_Text[26248]["Text428"],nAniversary2020Dragon_NowGrowData)
		
		local nAniversary2020Dragon_Rank=RankingFunc_GetUserInRank(tAniversary2020Dragon_Data["RankIndex"],nAniversary2020Dragon_UserId)
		if nAniversary2020Dragon_Rank==0 then 
			tNpcGossip[26248]["Text429"]=tAniversary2020Dragon_Text[26248]["Text430"]
		else
			tNpcGossip[26248]["Text429"]=string.format(tAniversary2020Dragon_Text[26248]["Text429"],nAniversary2020Dragon_Rank)
		end 
		return true
	else
		return false
	end 
end 
tNpcGossip[26248]["OptionPoint411"] = "4-2"
tNpcGossip[26248]["OptionFunc412"] = "Aniversary2020Dragon_Link"
tNpcGossip[26248]["OptionPoint413"] = "1-1"

--查看排名奖励
tNpcGossip[26248]["Text4-2"] = {441,442,443,444,445,446,447,448,449,4410}
tNpcGossip[26248]["tOption4-2"] = {421,422}
tNpcGossip[26248]["OptionPoint421"] = "4-1"


tNpcFace[4945] = 2895
tNpcFace[4946] = 2896
tNpcGossip[26249]= tNpcGossip[26248]
tNpcGossip[26250]= tNpcGossip[26248]
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3330460] = tItem[3330460] or {}
tItem[3330460]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ActivityTime"] ) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAprilFoolsDay2020Bottle_Text["Msg"]["ItemLimit"])
			local sLog = tAniversary2020Dragon_Log["DelItem"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return
	end
	-- 导航
	LinkNpcGossipFunc_New(26248,"1-1")
end
tItem[3330461] = tItem[3330460]

tItem[3330464] = tItem[3330464] or {}
tItem[3330464]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tAniversary2020Dragon_Reward,nItemId)
end
tItem[3330465] = tItem[3330464]

tItemFace[3330474] = 2893
tItem[3330474] = tItem[3330474] or {}
tItem[3330474]["DialogueText"] = tAniversary2020Dragon_Text[3330474]
tItem[3330474]["Text1-1"] = {111,112,113}
tItem[3330474]["tOption1-1"] = {111,112,113}
tItem[3330474]["OptionFunc111"] = "Aniversary2020Dragon_MakeOne</N>3330474"
tItem[3330474]["OptionFunc112"] = "Aniversary2020Dragon_OutGift</N>3330474"
tItem[3330474]["OptionFunc113"] = "Aniversary2020Dragon_MakeTwo</N>3330474"

tItemFace[3330475] = 2897
tItem[3330475] = tItem[3330475] or {}
tItem[3330475]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["ItemTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAniversary2020Dragon_Text["Msg"]["OverTime"])
 		end
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330475]["DialogueText"] = tAniversary2020Dragon_Text[3330475]
tItem[3330475]["Text1-1"] = {111}
tItem[3330475]["tOption1-1"] = {111,112}
tItem[3330475]["OptionFunc111"] = "Aniversary2020Dragon_WashGift</N>3330475"
tItem[3330475]["OptionPoint112"] = "2-1"
tItem[3330475]["Text2-1"] = {211}
tItem[3330475]["tOption2-1"] = {211,212}
tItem[3330475]["OptionFunc211"] = "Aniversary2020Dragon_NoWash</N>3330475"

tItemFace[3330482] = 2891
tItem[3330482] = tItem[3330482] or {}
tItem[3330482]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["SkillTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tAniversary2020Dragon_Text["Msg"]["OverTime"])
 		end
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3330482]["DialogueText"] = tAniversary2020Dragon_Text[3330482]
tItem[3330482]["Text1-1"] = {111,112}
tItem[3330482]["tOption1-1"] = {111,112}
tItem[3330482]["OptionFunc111"] = "Aniversary2020Dragon_ChooseWindow</N>3330482</N>2"
tItem[3330482]["OptionFunc112"] = "Aniversary2020Dragon_ChooseWindow</N>3330482</N>0"

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,Aniversary2020Dragon_ClearWindow)

---------------------------------时间自检---------------------------------------------
-- 每小时全服限量1
local tAniversary2020Dragon_TimeChk = {}
	tAniversary2020Dragon_TimeChk[1] = {}
	tAniversary2020Dragon_TimeChk[1]["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
	tAniversary2020Dragon_TimeChk[1]["Type"] = 2
	tAniversary2020Dragon_TimeChk[1]["TimeType"] = 5  --每小时
	tAniversary2020Dragon_TimeChk[1]["Multiple"] = {}
	tAniversary2020Dragon_TimeChk[1]["Multiple"][1]  = "00 00"
	tAniversary2020Dragon_TimeChk[1]["Func"] = Aniversary2020Dragon_ClearGlobalId
	
table.insert(tSystemTime_InitialData,tAniversary2020Dragon_TimeChk[1])
