------------------------------------------------------------------------------------
--Name：     190218[英文征服][活动脚本]3月准点在线博奖(3.7-3.11)
--Creator:   吴燕柚
--Created:   2019/02/25
------------------------------------------------------------------------------------
--任务需求：
-- 见附件

--命名规范 OnTimeGamble_

--stc(19104) 背包信
--stc(19105) 记录玩家领取道具 1为领取过轮盘 2为领取过金币包

--global 53254
--data0 全服金币礼包限量 data1 data2 data3 为普通轮盘限量 data4为锦鲤券限量 data5为记录清数据内容

--logid 12001310

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

local tOnTimeGamble_Stc = {}
	tOnTimeGamble_Stc["Get"] = {}
	tOnTimeGamble_Stc["Get"]["Event"] = 191
	tOnTimeGamble_Stc["Get"]["Data"] = 05

local tOnTimeGamble_Data = {}
	tOnTimeGamble_Data["Global"] = 53254
	tOnTimeGamble_Data["Stc"] = {}--存放在stc中的领奖信息
	tOnTimeGamble_Data["Stc"][23789] = 1
	tOnTimeGamble_Data["Stc"][23790] = 2
	tOnTimeGamble_Data["NpcPlace"] = {}--NPC活动位置
	tOnTimeGamble_Data["NpcPlace"][23789] = {}
	tOnTimeGamble_Data["NpcPlace"][23789]["MapId"] = 1002
	tOnTimeGamble_Data["NpcPlace"][23789]["X"] = 352
	tOnTimeGamble_Data["NpcPlace"][23789]["Y"] = 432
	tOnTimeGamble_Data["NpcPlace"][23790] = {}
	tOnTimeGamble_Data["NpcPlace"][23790]["MapId"] = 3053
	tOnTimeGamble_Data["NpcPlace"][23790]["X"] = 217
	tOnTimeGamble_Data["NpcPlace"][23790]["Y"] = 143
	tOnTimeGamble_Data["NpcPlaceAfter"] = {}
	tOnTimeGamble_Data["NpcPlaceAfter"]["MapId"] = 5000
	tOnTimeGamble_Data["NpcPlaceAfter"]["X"] = 100
	tOnTimeGamble_Data["NpcPlaceAfter"]["Y"] = 100
	tOnTimeGamble_Data["Npc"] = {23789, 23790}--NPCID
	tOnTimeGamble_Data["Web"] = {}
	tOnTimeGamble_Data["Web"]["ConnectGM"] = "https://account.99.com/v3/index.htm"
	tOnTimeGamble_Data["Level"] = 80
	tOnTimeGamble_Data["Mete"] = 0
	tOnTimeGamble_Data["SliverBagLimit"] = 1000
 
local tOnTimeGamble_Reward = {}
	--NPC奖励
	--轮盘
	tOnTimeGamble_Reward[23789] = {}
	tOnTimeGamble_Reward[23789]["LogId"] = 12001310
	tOnTimeGamble_Reward[23789]["RewardEffect"] = {}
	tOnTimeGamble_Reward[23789]["RewardEffect"]["SzObj"] = "self"
	tOnTimeGamble_Reward[23789]["RewardEffect"]["Effect"] = "angelwing"
	tOnTimeGamble_Reward[23789]["RewardItem"] = {}
	tOnTimeGamble_Reward[23789]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[23789]["RewardItem"][1]["Id"] = 3312056
	tOnTimeGamble_Reward[23789]["RewardItem"][1]["Attr"] = "0 1"
	tOnTimeGamble_Reward[23789]["RewardItem"][2] = {}
	tOnTimeGamble_Reward[23789]["RewardItem"][2]["Id"] = 3312057
	tOnTimeGamble_Reward[23789]["RewardItem"][2]["Attr"] = "0 1"
	--金币包
	tOnTimeGamble_Reward[23790] = {}
	tOnTimeGamble_Reward[23790]["LogId"] = 12001310
	tOnTimeGamble_Reward[23790]["RewardEffect"] = {}
	tOnTimeGamble_Reward[23790]["RewardEffect"]["SzObj"] = "self"
	tOnTimeGamble_Reward[23790]["RewardEffect"]["Effect"] = "angelwing"
	tOnTimeGamble_Reward[23790]["RewardItem"] = {}
	tOnTimeGamble_Reward[23790]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[23790]["RewardItem"][1]["Id"] = 721073
	tOnTimeGamble_Reward[23790]["RewardItem"][1]["Attr"] = "0 1"
	tOnTimeGamble_Reward[23790]["RewardItem"][2] = {}
	tOnTimeGamble_Reward[23790]["RewardItem"][2]["Id"] = 3312057
	tOnTimeGamble_Reward[23790]["RewardItem"][2]["Attr"] = "0 1"
	

	--=========[3.07-3.11转盘,3312056,1]=========
	tOnTimeGamble_Reward[3312056] = {}
	tOnTimeGamble_Reward[3312056]["ItemChanceSum"] = 10000
	tOnTimeGamble_Reward[3312056]["LogId"] = 12001310
	-- 赠神纹源晶*1 - 30.00%
	tOnTimeGamble_Reward[3312056][1] = {}
	tOnTimeGamble_Reward[3312056][1]["RewardName"] = "RuneCrystal(B)*1"
	tOnTimeGamble_Reward[3312056][1]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][1]["ItemChance"] = 3000
	tOnTimeGamble_Reward[3312056][1]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][1]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][1]["RewardItem"][1]["Id"] = 3311759 -- 【库】神纹源晶[属性:8]【表格】赠神纹源晶*1
	tOnTimeGamble_Reward[3312056][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 神纹源晶(赠)*1
	tOnTimeGamble_Reward[3312056][1]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠强炼丹*10 - 11.00%
	tOnTimeGamble_Reward[3312056][2] = {}
	tOnTimeGamble_Reward[3312056][2]["RewardName"] = "FavoredTrainingPill(B)*10"
	tOnTimeGamble_Reward[3312056][2]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][2]["ItemChance"] = 1100
	tOnTimeGamble_Reward[3312056][2]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][2]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][2]["RewardItem"][1]["Id"] = 3003124 -- 【库】免费强炼丹[属性:0]【表格】赠强炼丹*10
	tOnTimeGamble_Reward[3312056][2]["RewardItem"][1]["Attr"] = "0 10 3" -- 免费强炼丹(赠)*10
	tOnTimeGamble_Reward[3312056][2]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠大爆丹*10 - 11.00%
	tOnTimeGamble_Reward[3312056][3] = {}
	tOnTimeGamble_Reward[3312056][3]["RewardName"] = "SeniorTrainingPill(B)*10"
	tOnTimeGamble_Reward[3312056][3]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][3]["ItemChance"] = 1100
	tOnTimeGamble_Reward[3312056][3]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][3]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][3]["RewardItem"][1]["Id"] = 3003126 -- 【库】究极通神丹[属性:0]【表格】赠大爆丹*10
	tOnTimeGamble_Reward[3312056][3]["RewardItem"][1]["Attr"] = "0 10 3" -- 究极通神丹(赠)*10
	tOnTimeGamble_Reward[3312056][3]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠赤炼石+3*1 - 30.00%
	tOnTimeGamble_Reward[3312056][4] = {}
	tOnTimeGamble_Reward[3312056][4]["RewardName"] = "Stone(+3)(B)*1"
	tOnTimeGamble_Reward[3312056][4]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][4]["ItemChance"] = 3000
	tOnTimeGamble_Reward[3312056][4]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][4]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][4]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赠赤炼石+3*1
	tOnTimeGamble_Reward[3312056][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石(赠)*1
	tOnTimeGamble_Reward[3312056][4]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*4 - 8.00%
	tOnTimeGamble_Reward[3312056][5] = {}
	tOnTimeGamble_Reward[3312056][5]["RewardName"] = "BrightStarStone(B)*4"
	tOnTimeGamble_Reward[3312056][5]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][5]["ItemChance"] = 800
	tOnTimeGamble_Reward[3312056][5]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][5]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][5]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石*4
	tOnTimeGamble_Reward[3312056][5]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的明亮星陨石*4
	tOnTimeGamble_Reward[3312056][5]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tOnTimeGamble_Reward[3312056][5]["GlobalId"] = 53254 -- 需手动配：[cq_dyna_global_data]表id
	tOnTimeGamble_Reward[3312056][5]["Pos"] = 1 -- 全服限量data位
	tOnTimeGamble_Reward[3312056][5]["MaxData"] = 1000 -- 全服限量总数
	tOnTimeGamble_Reward[3312056][5]["FullIndex"] = 9 -- 全服限量超出给其他【下标】奖励
	-- 500点赠品天石 - 7.00%
	tOnTimeGamble_Reward[3312056][6] = {}
	tOnTimeGamble_Reward[3312056][6]["RewardName"] = "500CPs(B)"
	tOnTimeGamble_Reward[3312056][6]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][6]["ItemChance"] = 700
	tOnTimeGamble_Reward[3312056][6]["RewardEMoneyMono"] = {}
	tOnTimeGamble_Reward[3312056][6]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）
	tOnTimeGamble_Reward[3312056][6]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠龙珠卷*1 - 2.00%
	tOnTimeGamble_Reward[3312056][7] = {}
	tOnTimeGamble_Reward[3312056][7]["RewardName"] = "DBScroll*1"
	tOnTimeGamble_Reward[3312056][7]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][7]["ItemChance"] = 200
	tOnTimeGamble_Reward[3312056][7]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][7]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][7]["RewardItem"][1]["Id"] = 3200822 -- 【库】龙珠卷[属性:9]【表格】赠龙珠卷*1
	tOnTimeGamble_Reward[3312056][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙珠卷*1
	tOnTimeGamble_Reward[3312056][7]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tOnTimeGamble_Reward[3312056][7]["GlobalId"] = 53254 -- 需手动配：[cq_dyna_global_data]表id
	tOnTimeGamble_Reward[3312056][7]["Pos"] = 2 -- 全服限量data位
	tOnTimeGamble_Reward[3312056][7]["MaxData"] = 100 -- 全服限量总数
	tOnTimeGamble_Reward[3312056][7]["FullIndex"] = 9 -- 全服限量超出给其他【下标】奖励
	-- 200点非赠 - 1.00%
	tOnTimeGamble_Reward[3312056][8] = {}
	tOnTimeGamble_Reward[3312056][8]["RewardName"] = "200CPs"
	tOnTimeGamble_Reward[3312056][8]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][8]["ItemChance"] = 100
	tOnTimeGamble_Reward[3312056][8]["RewardEMoney"] = {}
	tOnTimeGamble_Reward[3312056][8]["RewardEMoney"]["Value"] = 200 -- 天石
	tOnTimeGamble_Reward[3312056][8]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tOnTimeGamble_Reward[3312056][8]["GlobalId"] = 53254 -- 需手动配：[cq_dyna_global_data]表id
	tOnTimeGamble_Reward[3312056][8]["Pos"] = 3 -- 全服限量data位
	tOnTimeGamble_Reward[3312056][8]["MaxData"] = 10 -- 全服限量总数
	tOnTimeGamble_Reward[3312056][8]["FullIndex"] = 9 -- 全服限量超出给其他【下标】奖励
	-- 赠大爆丹*4 - 0.00%
	tOnTimeGamble_Reward[3312056][9] = {}
	tOnTimeGamble_Reward[3312056][9]["RewardName"] = "SeniorTrainingPill(B)*4"
	tOnTimeGamble_Reward[3312056][9]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312056][9]["ItemChance"] = 0
	tOnTimeGamble_Reward[3312056][9]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312056][9]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312056][9]["RewardItem"][1]["Id"] = 3003126 -- 【库】究极通神丹[属性:0]【表格】赠大爆丹*4
	tOnTimeGamble_Reward[3312056][9]["RewardItem"][1]["Attr"] = "0 4 3" -- 究极通神丹(赠)*4
	tOnTimeGamble_Reward[3312056][9]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312056][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312056][9]["RewardEffect"]["Effect"] = "angelwing"

	
	
	
		--=========[3.12转盘,3312057,1]=========
	tOnTimeGamble_Reward[3312057] = {}
	tOnTimeGamble_Reward[3312057]["ItemChanceSum"] = 10000
	tOnTimeGamble_Reward[3312057]["LogId"] = 12001310
	-- 赠神器源晶*10 - 20.00%
	tOnTimeGamble_Reward[3312057][1] = {}
	tOnTimeGamble_Reward[3312057][1]["RewardName"] = "RuneCrystal(B)*10"
	tOnTimeGamble_Reward[3312057][1]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][1]["ItemChance"] = 2000
	tOnTimeGamble_Reward[3312057][1]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][1]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][1]["RewardItem"][1]["Id"] = 3311759 -- 【库】神纹源晶[属性:8]【表格】赠神器源晶*10
	tOnTimeGamble_Reward[3312057][1]["RewardItem"][1]["Attr"] = "0 10 3" -- 神纹源晶(赠)*10
	tOnTimeGamble_Reward[3312057][1]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠黄色神纹碎片*1 - 11.00%
	tOnTimeGamble_Reward[3312057][2] = {}
	tOnTimeGamble_Reward[3312057][2]["RewardName"] = "YellowRuneFragment(B)*1"
	tOnTimeGamble_Reward[3312057][2]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][2]["ItemChance"] = 1100
	tOnTimeGamble_Reward[3312057][2]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][2]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][2]["RewardItem"][1]["Id"] = 3306370 -- 【库】黄色神纹碎片[属性:9]【表格】赠黄色神纹碎片*1
	tOnTimeGamble_Reward[3312057][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹碎片*1
	tOnTimeGamble_Reward[3312057][2]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄碎片*1 - 11.00%
	tOnTimeGamble_Reward[3312057][3] = {}
	tOnTimeGamble_Reward[3312057][3]["RewardName"] = "EpicSpiritFragment(B)*1"
	tOnTimeGamble_Reward[3312057][3]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][3]["ItemChance"] = 1100
	tOnTimeGamble_Reward[3312057][3]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][3]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][3]["RewardItem"][1]["Id"] = 3305426 -- 【库】神兵灵魄碎片[属性:9]【表格】神兵灵魄碎片*1
	tOnTimeGamble_Reward[3312057][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 神兵灵魄碎片*1
	tOnTimeGamble_Reward[3312057][3]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠赤炼石+3*1 - 20.00%
	tOnTimeGamble_Reward[3312057][4] = {}
	tOnTimeGamble_Reward[3312057][4]["RewardName"] = "Stone(+3)(B)*1"
	tOnTimeGamble_Reward[3312057][4]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][4]["ItemChance"] = 2000
	tOnTimeGamble_Reward[3312057][4]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][4]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][4]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0]【表格】赠赤炼石+3*1
	tOnTimeGamble_Reward[3312057][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石(赠)*1
	tOnTimeGamble_Reward[3312057][4]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 锦鲤券*1 - 8.00%
	tOnTimeGamble_Reward[3312057][5] = {}
	tOnTimeGamble_Reward[3312057][5]["RewardName"] = "FortuneCertificate(B)*1"
	tOnTimeGamble_Reward[3312057][5]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][5]["ItemChance"] = 800
	tOnTimeGamble_Reward[3312057][5]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][5]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][5]["RewardItem"][1]["Id"] = 3312058 -- 【库】 3312058 【cnzf1库里没有该物品】[属性:]【表格】锦鲤券*1
	tOnTimeGamble_Reward[3312057][5]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" --  3312058 【cnzf1库里没有该物品】(赠)*1
	tOnTimeGamble_Reward[3312057][5]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 全服cq_dyna_global_data存储表
	tOnTimeGamble_Reward[3312057][5]["GlobalId"] = 53254 -- 需手动配：[cq_dyna_global_data]表id
	tOnTimeGamble_Reward[3312057][5]["Pos"] = 4 -- 全服限量data位
	tOnTimeGamble_Reward[3312057][5]["MaxData"] = 1 -- 全服限量总数
	tOnTimeGamble_Reward[3312057][5]["FullIndex"] = 4 -- 全服限量超出给其他【下标】奖励
	-- 炽热天石碎片*1 - 12.00%
	tOnTimeGamble_Reward[3312057][6] = {}
	tOnTimeGamble_Reward[3312057][6]["RewardName"] = "BlazingCPFragment(B)*1"
	tOnTimeGamble_Reward[3312057][6]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][6]["ItemChance"] = 1200
	tOnTimeGamble_Reward[3312057][6]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][6]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][6]["RewardItem"][1]["Id"] = 3008727 -- 【库】炽热天石碎片[属性:9]【表格】炽热天石碎片*1
	tOnTimeGamble_Reward[3312057][6]["RewardItem"][1]["Attr"] = "0 1" -- 炽热天石碎片*1
	tOnTimeGamble_Reward[3312057][6]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*1 - 8.00%
	tOnTimeGamble_Reward[3312057][7] = {}
	tOnTimeGamble_Reward[3312057][7]["RewardName"] = "BrightStarStone*1"
	tOnTimeGamble_Reward[3312057][7]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][7]["ItemChance"] = 800
	tOnTimeGamble_Reward[3312057][7]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312057][7]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312057][7]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9]【表格】明亮星陨石*1
	tOnTimeGamble_Reward[3312057][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tOnTimeGamble_Reward[3312057][7]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 50点赠品 - 10.00%
	tOnTimeGamble_Reward[3312057][8] = {}
	tOnTimeGamble_Reward[3312057][8]["RewardName"] = "50CPs(B)*1"
	tOnTimeGamble_Reward[3312057][8]["RandomItemChanceType"] = 2
	tOnTimeGamble_Reward[3312057][8]["ItemChance"] = 1000
	tOnTimeGamble_Reward[3312057][8]["RewardEMoneyMono"] = {}
	tOnTimeGamble_Reward[3312057][8]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）
	tOnTimeGamble_Reward[3312057][8]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312057][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312057][8]["RewardEffect"]["Effect"] = "angelwing"
	
	

	-- 单服锦鲤礼包,3312059,1
	tOnTimeGamble_Reward[3312059] = {}
	tOnTimeGamble_Reward[3312059]["LogId"] = 12001310
	tOnTimeGamble_Reward[3312059]["DeleteItem"] = {}
	tOnTimeGamble_Reward[3312059]["DeleteItem"][1] = {}
	tOnTimeGamble_Reward[3312059]["DeleteItem"][1]["Id"] = 3312059 -- 【库】SupremeFortuneBox[属性:9]
	tOnTimeGamble_Reward[3312059]["RewardItem"] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][1] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0]【表格】赠品赤练石+8*12
	tOnTimeGamble_Reward[3312059]["RewardItem"][1]["Attr"] = "0 12 3 10080 1" -- +8Stone(赠)*12
	tOnTimeGamble_Reward[3312059]["RewardItem"][2] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][2]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8]【表格】赠品神纹源晶*100
	tOnTimeGamble_Reward[3312059]["RewardItem"][2]["Attr"] = "0 100 3" -- RuneCrystal*100
	tOnTimeGamble_Reward[3312059]["RewardItem"][3] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][3]["Id"] = 3005945 -- 【库】HonorableMoneyBag[属性:0]【表格】2亿金币包
	tOnTimeGamble_Reward[3312059]["RewardItem"][3]["Attr"] = "0 1 3" -- HonorableMoneyBag(赠)*1
	tOnTimeGamble_Reward[3312059]["RewardItem"][4] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][4]["Id"] = 1200005 -- 【库】ToughDrill[属性:0]【表格】赠品金钢尖钻*4
	tOnTimeGamble_Reward[3312059]["RewardItem"][4]["Attr"] = "0 4 3" -- ToughDrill(赠)*4
	tOnTimeGamble_Reward[3312059]["RewardItem"][5] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][5]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0]【表格】赠品大爆丹*200
	tOnTimeGamble_Reward[3312059]["RewardItem"][5]["Attr"] = "0 200 3" -- SeniorTrainingPill(赠)*200
	tOnTimeGamble_Reward[3312059]["RewardItem"][6] = {}
	tOnTimeGamble_Reward[3312059]["RewardItem"][6]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0]【表格】赠品强练丹*200
	tOnTimeGamble_Reward[3312059]["RewardItem"][6]["Attr"] = "0 200 3" -- FavoredTrainingPill(赠)*200
	tOnTimeGamble_Reward[3312059]["RewardRepairValue"] = {}
	tOnTimeGamble_Reward[3312059]["RewardRepairValue"]["Value"] = 50000 -- 修为值
	tOnTimeGamble_Reward[3312059]["RewardEffect"] = {}
	tOnTimeGamble_Reward[3312059]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOnTimeGamble_Reward[3312059]["RewardEffect"]["Effect"] = "angelwing"



----------------------------------逻辑部分---------------------------------------------

--隔天清数据
function OnTimeGamble_Clear()
	local nGlobal = tOnTimeGamble_Data["Global"]
	--data5为记录清数据内容 data5有数据时不再重复清
	if (Get_SysDynaGlobalData(nGlobal, 5) ~= 0) then
		return
	end
	for i = 0, 3 do
		Sys_SetSynaGlobalData(nGlobal, i, 0)
	end
	--标记已清过数据
	Sys_SetSynaGlobalData(nGlobal, 5, 1)
end
--公告提示
function OnTimeGamble_Broadcast()

	--金币服不上此活动
	if CommonFunc_ChkGoldServer() then
		return
	end
	
	Sys_TalkBroadcast(tOnTimeGamble_Text["Broadcast"]["BeforeBegin"])
	--NPC分别公告
	for i, v in pairs(tOnTimeGamble_Data["Npc"]) do
		Sys_TalkBroadcast(string.format(tOnTimeGamble_Text["Broadcast"][v], tOnTimeGamble_Data["NpcPlace"][v]["X"], tOnTimeGamble_Data["NpcPlace"][v]["Y"]))
	end
	
end
-- 删除清数据标记
function OnTimeGamble_ClearMark()
	--清掉清数据记录 以备第二天使用
	local nGlobal = tOnTimeGamble_Data["Global"]
	Sys_SetSynaGlobalData(nGlobal, 5, 0)
end


--领取物品
function OnTimeGamble_GetItem(nNpcId)
	local nUserId = Get_UserId()
	local nEvent = tOnTimeGamble_Stc["Get"]["Event"]
	local nData = tOnTimeGamble_Stc["Get"]["Data"]
	--80级以上才能领
	if not User_JudgeLevelAndMetempsychosis(tOnTimeGamble_Data["Level"], tOnTimeGamble_Data["Mete"]) then
		Sys_MsgBox(tOnTimeGamble_Text["MsgBox"]["NotLevel"])
		return
	end
	
	--隔天清掩码
	if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
		Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
	end
	
	local nStatus = Get_UserStatisticValue(nEvent, nData, nUserId) or 0
	
	--nStatus 为1 代表领取过转盘 为2 代表领取过金币包
	if (nStatus ~= 0) then
		Sys_MsgBox(tOnTimeGamble_Text["Talk"][nStatus][nNpcId])
		return
	end
	
	--今日未领取则发放NPC对应奖励
	if (nStatus == 0) then
		--金币包已被领取1000份则无法再领取
		local nGlobal = tOnTimeGamble_Data["Global"]
		local nCount = Get_SysDynaGlobalData(nGlobal, 0)
		if ((nCount >= tOnTimeGamble_Data["SliverBagLimit"]) and (nNpcId == 23790)) then
			Sys_MsgBox(tOnTimeGamble_Text["MsgBox"]["GoldRunOut"])
			return
		end
		--背包空间不足不发放 不记掩码
		if not RewardTemplate_UpperLimit(tOnTimeGamble_Reward[nNpcId]) then
			
			return
		end
		
		Task_SetStatistic(nEvent, nData, tOnTimeGamble_Data["Stc"][nNpcId], 1, nUserId)
		Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
		
		--领取金币包记录+1
		if (nNpcId == 23790) then
			Sys_SetSynaGlobalData(nGlobal, 0, (nCount + 1))
		end
		
		RewardTemplate_UseItemAndMsg(tOnTimeGamble_Reward[nNpcId], nUserId)
		User_TalkChannel2005(tOnTimeGamble_Text["Talk"]["Get"][nNpcId], nUserId)
	end
	
end
--公告寻路
function OnTimeGamble_FindPath(nNpcId)
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)
	local nNpcMapId = Get_NpcMapID(nNpcId)
	
	if (nUserMapId == nNpcMapId) then
		NpcPosition_PathFind(nNpcId)
	else
		local sText = string.format(tOnTimeGamble_Text["MsgBox"]["FindPath"][nNpcId], tOnTimeGamble_Data["NpcPlace"][nNpcId]["X"], tOnTimeGamble_Data["NpcPlace"][nNpcId]["Y"])
		Sys_MsgBox(sText)
	end
end
--使用物品
function OnTimeGamble_UseItem(nItemId)
	local nUserId =Get_UserId()

	--检测是否过期
	if not Sys_ChkFullTime(tActivityTime["OnTimeGamble"]["WheelDelTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tOnTimeGamble_Text[nItemId]["TimeOut"], nUserId)
		end
		return
	end
	
	--检测是否幸运星转盘
	if (tActivityTime["OnTimeGamble"][nItemId] ~= nil) then
		if CommonFunc_GetBeforeActivityTime(tActivityTime["OnTimeGamble"][nItemId]) then
			User_TalkChannel2005(tOnTimeGamble_Text[nItemId]["NotTime"], nUserId)
			return
		elseif not Sys_ChkFullTime(tActivityTime["OnTimeGamble"][nItemId]) then
			if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelMulItem(nItemId, nItemId, 1) then
				User_TalkChannel2005(tOnTimeGamble_Text[nItemId]["TimeOut"], nUserId)
			end
			return
		end
	end
	-- 使用礼包
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tOnTimeGamble_Reward, nItemId)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tOnTimeGamble_Text["MsgBox"]["NoSpace"], nSpace))
		return
	end
	if Item_ChkMulItem(nItemId, nItemId, 1) and Item_DelMulItem(nItemId, nItemId, 1) then
		local tReward = RewardTemplate_NewRandom(tOnTimeGamble_Reward, nItemId)
		local sRewardName = tReward[1]["tAward"][1]["RewardName"]
		local sReward = string.format(tOnTimeGamble_Text[nItemId]["RewardMsgBox"], sRewardName)
		Sys_MsgBox(sReward)
	end
	
end
--使用幸运凭证
function OnTimeGamble_UseBigReward(nItemId)
	local nUserId = Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["OnTimeGamble"]["BigRewardDelTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem() then
			User_TalkChannel2005(tOnTimeGamble_Text[nItemId]["TimeOut"], nUserId)
		return
		end
	end
	
	--增加联系客服选项
	User_SendWebDialog(tOnTimeGamble_Data["Web"]["ConnectGM"], nUserId)
end

----------------------------------NPC部分---------------------------------------------

--lady of bliss幸运女神 23789
tNpcFace[6269] = 260
tNpcGossip[23789] = tNpcGossip[23789] or DefaultNpc:new{}
tNpcGossip[23789]["OptionHidden"] = 1
tNpcGossip[23789]["DialogueText"] = tOnTimeGamble_Text[23789]
--活动中 玩家满足条件 1-1
tNpcGossip[23789]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[23789]["tOption1-1"] = {111, 112}
tNpcGossip[23789]["OptionFunc111"] = "OnTimeGamble_GetItem</N>23789"
tNpcGossip[23789]["OptionPoint112"] = "1-2"
tNpcGossip[23789]["ChkFunc1-1"] = function()
	if Sys_ChkDayTime(tActivityTime["OnTimeGamble"]["DayTime"]) then
		tNpcGossip[23789]["tOption1-1"] = {111, 112}
	else
		tNpcGossip[23789]["tOption1-1"] = {112}
	end
	return Sys_ChkFullTime(tActivityTime["OnTimeGamble"]["ActTime"])
end
--活动规则 1-2
tNpcGossip[23789]["Text1-2"] = {121, 122, 123, 124, 125, 126}
tNpcGossip[23789]["tOption1-2"] = {121}
tNpcGossip[23789]["OptionPoint121"] = "1-1"

--财运女神 23790
tNpcFace[6270] = 238
tNpcGossip[23790] = tNpcGossip[23790] or DefaultNpc:new{}
tNpcGossip[23790]["OptionHidden"] = 1
tNpcGossip[23790]["DialogueText"] = tOnTimeGamble_Text[23790]
--活动中 玩家满足条件 1-1
tNpcGossip[23790]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117}
tNpcGossip[23790]["tOption1-1"] = {111, 112}
tNpcGossip[23790]["OptionFunc111"] = "OnTimeGamble_GetItem</N>23790"
tNpcGossip[23790]["OptionPoint112"] = "1-2"
tNpcGossip[23790]["ChkFunc1-1"] = function()
	--显示剩余金币包数量
	local nGlobal = tOnTimeGamble_Data["Global"]
	local nLeft = (1000 - Get_SysDynaGlobalData(nGlobal, 0))
	tNpcGossip[23790]["Text114"] = string.format(tOnTimeGamble_Text[23790]["Text114"], nLeft)
	if Sys_ChkDayTime(tActivityTime["OnTimeGamble"]["DayTime"]) then
		tNpcGossip[23790]["tOption1-1"] = {111, 112}
	else
		tNpcGossip[23790]["tOption1-1"] = {112}
	end
	return Sys_ChkFullTime(tActivityTime["OnTimeGamble"]["ActTime"])
end
--活动规则 1-2
tNpcGossip[23790]["Text1-2"] = {121, 122, 123, 124, 125, 126}
tNpcGossip[23790]["tOption1-2"] = {121}
tNpcGossip[23790]["OptionPoint121"] = "1-1"

---------------------------------物品部分---------------------------------------------

--普通转盘
tItem[3312056] = tItem[3312056] or {}
tItem[3312056]["Function"] = function(nItemId,sItemName)
	OnTimeGamble_UseItem(nItemId)
end
--幸运星转盘
tItem[3312057] = tItem[3312057] or {}
tItem[3312057]["Function"] = function(nItemId,sItemName)
	OnTimeGamble_UseItem(nItemId)
end

--幸运凭证
tItemFace[3312058] = 623
tItem[3312058] = tItem[3312058] or {}
-- tItem[3312058]["OptionHidden"] = 1
tItem[3312058]["DialogueText"] = tOnTimeGamble_Text[3312058]
tItem[3312058]["Text1-1"] = {111, 112}
tItem[3312058]["tOption1-1"] = {111, 112}
tItem[3312058]["OptionFunc111"] = "OnTimeGamble_UseBigReward</N>3312058"

--至尊幸运礼盒
tItem[3312059] = tItem[3312059] or {}
tItem[3312059]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tOnTimeGamble_Reward[nItemId])
end

tItemFace[3312055] = 1996

-------------------------------时间自检-----------------------------------------------

local tOnTimeGamble_TimeCheck = {}
	--清前一天数据
	tOnTimeGamble_TimeCheck[1] = {}
	tOnTimeGamble_TimeCheck[1]["ActivityTime"] = tActivityTime["OnTimeGamble"]["ActTime"]
	tOnTimeGamble_TimeCheck[1]["Type"] = 6
	tOnTimeGamble_TimeCheck[1]["TimeType"] = 4
	tOnTimeGamble_TimeCheck[1]["Time"] = "18:27 18:28"
	tOnTimeGamble_TimeCheck[1]["Func"] = OnTimeGamble_Clear
	table.insert(tSystemTime_InitialData, tOnTimeGamble_TimeCheck[1])
	--公告提示 删除清数据标记
	tOnTimeGamble_TimeCheck[2] = {}
	tOnTimeGamble_TimeCheck[2]["ActivityTime"] = tActivityTime["OnTimeGamble"]["ActTime"]
	tOnTimeGamble_TimeCheck[2]["Type"] = 6
	tOnTimeGamble_TimeCheck[2]["TimeType"] = 4
	tOnTimeGamble_TimeCheck[2]["Time"] = "18:29 18:29"
	tOnTimeGamble_TimeCheck[2]["Func"] = OnTimeGamble_Broadcast
	table.insert(tSystemTime_InitialData, tOnTimeGamble_TimeCheck[2])
	-- 删除清数据标记
	tOnTimeGamble_TimeCheck[3] = {}
	tOnTimeGamble_TimeCheck[3]["ActivityTime"] = tActivityTime["OnTimeGamble"]["ActTime"]
	tOnTimeGamble_TimeCheck[3]["Type"] = 6
	tOnTimeGamble_TimeCheck[3]["TimeType"] = 4
	tOnTimeGamble_TimeCheck[3]["Time"] = "18:29 18:31"
	tOnTimeGamble_TimeCheck[3]["Func"] = OnTimeGamble_ClearMark
	table.insert(tSystemTime_InitialData, tOnTimeGamble_TimeCheck[3])
	
	
