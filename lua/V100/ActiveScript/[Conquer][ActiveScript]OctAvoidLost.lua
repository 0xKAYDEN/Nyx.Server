------------------------------------------------------------------------------------
--Name：            180827[英文征服][活动脚本]10月节后防流失礼包活动
--Creator:      蔡颖静
--Created:     2018/08/27
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--前缀：OctAvoidLost

-- logid
-- 12001149

-- 掩码说明
-- stc(182,27) 上线获得普通礼包
-- stc(182,47) 上线获得梯度礼包
-- stc(182,48) 上线获得VIP礼包
-- stc(182,28) 3310631 打开情况
-- stc(182,29) 3310632 /3310633 打开情况
-- stc(182,30) 3310634/3310635/3310636 打开情况

-- 52954 3310632 普天同庆礼包 0转80级到1转140级
---- data0 免试金牌 3301905 活动期间单服限量20个
---- data1 龙血精石 3008994 活动期间单服限量80个
---- data2 灵宝葫芦 729388 活动期间单服限量3个
-- 52955 3310633 普天同庆精装包 2转及以上奖励
---- data0 小抽奖券礼包 3008856 活动期间单服限量20个
---- data1 龙珠 1088000 活动期间单服限量20个
---- data2 固化石 723694 活动期间单服限量10个
---- data3 赤练石+6 730006 活动期间单服限量1个

----------------------------------表配置部分--------------------------------------------
local tOctAvoidLost_Data = {}
	
	-- 时间
	tOctAvoidLost_Data["AwardTime"] = tActivityTime["OctAvoidLost"]["AwardTime"]
	tOctAvoidLost_Data["NormalPackTime"] = tActivityTime["OctAvoidLost"]["NormalPackTime"]
	tOctAvoidLost_Data["GradientPackTime"] = tActivityTime["OctAvoidLost"]["GradientPackTime"]
	tOctAvoidLost_Data["VIPPackTime"] = tActivityTime["OctAvoidLost"]["VIPPackTime"]

	-- 等级
	tOctAvoidLost_Data["Level"]= 80
	tOctAvoidLost_Data["Level1"]= 15
	tOctAvoidLost_Data["Metempsychosis"] = {}
	tOctAvoidLost_Data["Metempsychosis"][1] = 0
	tOctAvoidLost_Data["Metempsychosis"][2] = 2
	
	-- 光效
	tOctAvoidLost_Data["Effect"] = "angelwing"

	-- 掩码
	tOctAvoidLost_Data["Stc"] = {}
	-- stc(182,27) 上线获得三个礼包
	tOctAvoidLost_Data["Stc"]["Login"] = {}
	tOctAvoidLost_Data["Stc"]["Login"][1]={}
	tOctAvoidLost_Data["Stc"]["Login"][1]["EventType"] = 182
	tOctAvoidLost_Data["Stc"]["Login"][1]["DataType"] = 27
	tOctAvoidLost_Data["Stc"]["Login"][1]["Complete"] = 1
	tOctAvoidLost_Data["Stc"]["Login"][2] = {}
	tOctAvoidLost_Data["Stc"]["Login"][2]["EventType"] = 182
	tOctAvoidLost_Data["Stc"]["Login"][2]["DataType"] = 47
	tOctAvoidLost_Data["Stc"]["Login"][2]["Complete"] = 1
	tOctAvoidLost_Data["Stc"]["Login"][3] = {}
	tOctAvoidLost_Data["Stc"]["Login"][3]["EventType"] = 182
	tOctAvoidLost_Data["Stc"]["Login"][3]["DataType"] = 48
	tOctAvoidLost_Data["Stc"]["Login"][3]["Complete"] = 1
	-- stc(182,28) 3310631 打开情况
	tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"] = {}
	tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["EventType"] = 182
	tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["DataType"] = 28
	tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["Complete"] = 30
	-- stc(182,29) 3310632 打开情况
	tOctAvoidLost_Data["Stc"]["GradientPack"] = {}
	tOctAvoidLost_Data["Stc"]["GradientPack"]["EventType"] = 182
	tOctAvoidLost_Data["Stc"]["GradientPack"]["DataType"] = 29
	tOctAvoidLost_Data["Stc"]["GradientPack"]["RewardData"] = 1
	tOctAvoidLost_Data["Stc"]["GradientPack"]["RewardTotalData"] = 10
	-- stc(182,30) 3310633 打开情况
	tOctAvoidLost_Data["Stc"]["VIPPack"] = {}
	tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"] = 182
	tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"] = 30
	
	tOctAvoidLost_Data["GlobalId"] = {}
	-- 80184 3310632 普天同庆礼包 0转80级到1转140级
	tOctAvoidLost_Data["GlobalId"]["Low"] = 52954
	-- 80185 3310632 普天同庆礼包 2转及以上奖励
	tOctAvoidLost_Data["GlobalId"]["High"] = 52955
	
	
	-- log
	tOctAvoidLost_Data["Log"] = {}
	tOctAvoidLost_Data["Log"]["DeleteNormalPackOverdue"] = "0,0,3310631,1,12001149,1,0,0"
	tOctAvoidLost_Data["Log"]["DeleteGradientPackOverdue"] = "0,0,%d,1,12001149,1,0,0"
	tOctAvoidLost_Data["Log"]["DeleteGradientPackWithAward"] = "0,0,%d,1,12001149,2,0,0"
	tOctAvoidLost_Data["Log"]["DeleteVIPPackOverdue"] = "0,0,%d,1,12001149,1,0,0"
	tOctAvoidLost_Data["Log"]["DeleteVIPPackHaveReceived"] = "0,0,%d,1,12001149,2,0,0"
	tOctAvoidLost_Data["Log"]["EmoneyLog"]={}
	tOctAvoidLost_Data["Log"]["EmoneyLog"][3310632]="350	21722	0	0	1	"
	tOctAvoidLost_Data["Log"]["EmoneyLog"][3310633]="350	21724	0	0	1	"
	
	local tOctAvoidLost_Reward = {}
	-- 上线获得3000天石（赠）礼包
	tOctAvoidLost_Reward["Login"] = {}
	tOctAvoidLost_Reward["Login"][1] = {}
	tOctAvoidLost_Reward["Login"][1]["RewardItem"] = {}
	tOctAvoidLost_Reward["Login"][1]["RewardItem"][1] = {}
	tOctAvoidLost_Reward["Login"][1]["RewardItem"][1]["Id"] = 3310631
	tOctAvoidLost_Reward["Login"][1]["RewardItem"][1]["Attr"] = "0 1"
	tOctAvoidLost_Reward["Login"][1]["LogId"] = 12001149
	tOctAvoidLost_Reward["Login"][1]["EmoneyLog"] = "350	21719	0	0	1	"
	tOctAvoidLost_Reward["Login"][2] = {}
	tOctAvoidLost_Reward["Login"][2]["RewardItem"]={}
	tOctAvoidLost_Reward["Login"][2]["RewardItem"][1] = {}
	tOctAvoidLost_Reward["Login"][2]["RewardItem"][1]["Id"] = 3310632
	tOctAvoidLost_Reward["Login"][2]["RewardItem"][1]["Attr"] = "0 1"
	tOctAvoidLost_Reward["Login"][2]["LogId"] = 12001149
	tOctAvoidLost_Reward["Login"][2]["EmoneyLog"] = "350	21721	0	0	1	"
	tOctAvoidLost_Reward["Login"][3] = {}
	tOctAvoidLost_Reward["Login"][3]["RewardItem"]={}
	tOctAvoidLost_Reward["Login"][3]["RewardItem"][1] = {}
	tOctAvoidLost_Reward["Login"][3]["RewardItem"][1]["Id"] = 3310633
	tOctAvoidLost_Reward["Login"][3]["RewardItem"][1]["Attr"] = "0 1"
	tOctAvoidLost_Reward["Login"][3]["LogId"] = 12001149
	tOctAvoidLost_Reward["Login"][3]["EmoneyLog"] = "350	21723	0	0	1	"
	tOctAvoidLost_Reward["Login"][4] = {}
	tOctAvoidLost_Reward["Login"][4]["RewardItem"]={}
	tOctAvoidLost_Reward["Login"][4]["RewardItem"][1] = {}
	tOctAvoidLost_Reward["Login"][4]["RewardItem"][1]["Id"] = 3310634
	tOctAvoidLost_Reward["Login"][4]["RewardItem"][1]["Attr"] = "0 1"
	tOctAvoidLost_Reward["Login"][4]["LogId"] = 12001149
	tOctAvoidLost_Reward["Login"][4]["EmoneyLog"] = "350	21725	0	0	1	"
	tOctAvoidLost_Reward["Login"][5] = {}
	tOctAvoidLost_Reward["Login"][5]["RewardItem"]={}
	tOctAvoidLost_Reward["Login"][5]["RewardItem"][1] = {}
	tOctAvoidLost_Reward["Login"][5]["RewardItem"][1]["Id"] = 3310635
	tOctAvoidLost_Reward["Login"][5]["RewardItem"][1]["Attr"] = "0 1"
	tOctAvoidLost_Reward["Login"][5]["LogId"] = 12001149
	tOctAvoidLost_Reward["Login"][5]["EmoneyLog"] = "350	21727	0	0	1	"
	tOctAvoidLost_Reward["Login"][6] = {}
	tOctAvoidLost_Reward["Login"][6]["RewardItem"]={}
	tOctAvoidLost_Reward["Login"][6]["RewardItem"][1] = {}
	tOctAvoidLost_Reward["Login"][6]["RewardItem"][1]["Id"] = 3310636
	tOctAvoidLost_Reward["Login"][6]["RewardItem"][1]["Attr"] = "0 1"
	tOctAvoidLost_Reward["Login"][6]["LogId"] = 12001149
	tOctAvoidLost_Reward["Login"][6]["EmoneyLog"] = "350	21729	0	0	1	"
	
	
		-- 3310631 3000天石（赠）礼包
	tOctAvoidLost_Reward[3310631] = {}
	tOctAvoidLost_Reward[3310631][1] = {}
	tOctAvoidLost_Reward[3310631][1]["EventType"] = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["EventType"]
	tOctAvoidLost_Reward[3310631][1]["DataType"] = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["DataType"]
	tOctAvoidLost_Reward[3310631][1]["RewardData"] = 1
	tOctAvoidLost_Reward[3310631][1]["RewardTotalData"] = 30
	tOctAvoidLost_Reward[3310631][1]["RewardDelay"] = 1
	tOctAvoidLost_Reward[3310631][1]["RewardTimeType"] = 4
	tOctAvoidLost_Reward[3310631][1]["RewardEMoneyMono"] = {}
	tOctAvoidLost_Reward[3310631][1]["RewardEMoneyMono"]["Value"] = 100
	tOctAvoidLost_Reward[3310631][1]["RewardEMoneyMono"]["EMoneyMono"] = tOctAvoidLost_Text["SystemTips"]["EMonoMoneyFull"]
	tOctAvoidLost_Reward[3310631][1]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310631][1]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310631][1]["HaveReceive"] = tOctAvoidLost_Text["SystemTips"]["OnceaDay"]
	tOctAvoidLost_Reward[3310631][1]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310631][1]["EmoneyLog"] = "350	21720	0	0	1	"
	
	tOctAvoidLost_Reward[3310631][2] = {}
	tOctAvoidLost_Reward[3310631][2]["EventType"] = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["EventType"]
	tOctAvoidLost_Reward[3310631][2]["DataType"] = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["DataType"]
	tOctAvoidLost_Reward[3310631][2]["RewardData"] = 1
	tOctAvoidLost_Reward[3310631][2]["RewardTotalData"] = 30
	tOctAvoidLost_Reward[3310631][2]["RewardDelay"] = 1
	tOctAvoidLost_Reward[3310631][2]["RewardTimeType"] = 4
	tOctAvoidLost_Reward[3310631][2]["RewardEMoneyMono"] = {}
	tOctAvoidLost_Reward[3310631][2]["RewardEMoneyMono"]["Value"] = 100
	tOctAvoidLost_Reward[3310631][2]["RewardEMoneyMono"]["EMoneyMono"] = tOctAvoidLost_Text["SystemTips"]["EMonoMoneyFull"]
	tOctAvoidLost_Reward[3310631][2]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310631][2]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310631][2]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310631][2]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310631][2]["DeleteItem"][1]["Id"] = 3310631
	tOctAvoidLost_Reward[3310631][2]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310631][2]["EmoneyLog"] = "350	21720	0	0	1	"

	-- 3310632 普天同庆礼包
	tOctAvoidLost_Reward[3310632] = {}
	-- 0转80级到1转140级奖励礼包
	tOctAvoidLost_Reward[3310632]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310632]["ItemChanceSum"] = 10000
	
	-- 100%给
	tOctAvoidLost_Reward[3310632][1] = {}
	tOctAvoidLost_Reward[3310632][1]["RandomItemChanceType"] = 1
	tOctAvoidLost_Reward[3310632][1]["RewardItem"] = {}
	-- 流星卷 720027	3	Monopoly 0
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][1]["Id"] = 720027
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][1]["Attr"] = "0 3 3"
	-- 赤炼石+1 730001	3	Monopoly 0
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][2] = {}
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][2]["Id"] = 730001
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][2]["Attr"] = "0 3 3"
	-- 经验球 723700	5	Monopoly 0
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][3] = {}
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][3]["Id"] = 723700
	tOctAvoidLost_Reward[3310632][1]["RewardItem"][3]["Attr"] = "0 5 3"
	-- 概率给
	-- 马匹+3 3007283	1	20.0%	Monopoly 9
	tOctAvoidLost_Reward[3310632][2] = {}
	tOctAvoidLost_Reward[3310632][2]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][2]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310632][2]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][2]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][2]["RewardItem"][1]["Id"] = 3007283
	tOctAvoidLost_Reward[3310632][2]["RewardItem"][1]["Attr"] = "0 1"
	-- 赤炼石+3 730003	1	20.0%	Monopoly 0
	tOctAvoidLost_Reward[3310632][3] = {}
	tOctAvoidLost_Reward[3310632][3]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][3]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310632][3]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][3]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][3]["RewardItem"][1]["Id"] = 730003
	tOctAvoidLost_Reward[3310632][3]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 修行值书 723342	1	20.0%	Monopoly 0
	tOctAvoidLost_Reward[3310632][4] = {}
	tOctAvoidLost_Reward[3310632][4]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][4]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310632][4]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][4]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][4]["RewardItem"][1]["Id"] = 723342
	tOctAvoidLost_Reward[3310632][4]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 良品天怒宝石 700102	1	20.0%	Monopoly 0
	tOctAvoidLost_Reward[3310632][5] = {}
	tOctAvoidLost_Reward[3310632][5]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][5]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310632][5]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][5]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][5]["RewardItem"][1]["Id"] = 700102
	tOctAvoidLost_Reward[3310632][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 2000气力值 3300136	1	10.0%	Monopoly 9
	tOctAvoidLost_Reward[3310632][6] = {}
	tOctAvoidLost_Reward[3310632][6]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][6]["ItemChance"] = 1000
	tOctAvoidLost_Reward[3310632][6]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][6]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][6]["RewardItem"][1]["Id"] = 3300136
	tOctAvoidLost_Reward[3310632][6]["RewardItem"][1]["Attr"] = "0 1"
	-- 免试金牌 723701	1	0.5%	Monopoly 0
	tOctAvoidLost_Reward[3310632][7] = {}
	tOctAvoidLost_Reward[3310632][7]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][7]["ItemChance"] = 50
	tOctAvoidLost_Reward[3310632][7]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["Low"]
	tOctAvoidLost_Reward[3310632][7]["Pos"] = 0
	tOctAvoidLost_Reward[3310632][7]["MaxData"] = 20
	tOctAvoidLost_Reward[3310632][7]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310632][7]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][7]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][7]["RewardItem"][1]["Id"] = 723701
	tOctAvoidLost_Reward[3310632][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- "修为值500(B)"	3008315	1	8.0%	Monopoly 11
	tOctAvoidLost_Reward[3310632][8] = {}
	tOctAvoidLost_Reward[3310632][8]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][8]["ItemChance"] = 800
	tOctAvoidLost_Reward[3310632][8]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][8]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][8]["RewardItem"][1]["Id"] = 3008315
	tOctAvoidLost_Reward[3310632][8]["RewardItem"][1]["Attr"] = "0 1"
	-- 龙血精石 3008994	2	1.0%	Monopoly 9
	tOctAvoidLost_Reward[3310632][9] = {}
	tOctAvoidLost_Reward[3310632][9]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][9]["ItemChance"] = 100
	tOctAvoidLost_Reward[3310632][9]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["Low"]
	tOctAvoidLost_Reward[3310632][9]["Pos"] = 1
	tOctAvoidLost_Reward[3310632][9]["MaxData"] = 40
	tOctAvoidLost_Reward[3310632][9]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310632][9]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][9]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][9]["RewardItem"][1]["Id"] = 3008994
	tOctAvoidLost_Reward[3310632][9]["RewardItem"][1]["Attr"] = "0 2"
	-- 灵宝葫芦 2100025	1	0.5%	Monopoly 0
	tOctAvoidLost_Reward[3310632][10] = {}
	tOctAvoidLost_Reward[3310632][10]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][10]["ItemChance"] = 50
	tOctAvoidLost_Reward[3310632][10]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["Low"]
	tOctAvoidLost_Reward[3310632][10]["Pos"] = 2
	tOctAvoidLost_Reward[3310632][10]["MaxData"] = 3
	tOctAvoidLost_Reward[3310632][10]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310632][10]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][10]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][10]["RewardItem"][1]["Id"] = 2100025
	tOctAvoidLost_Reward[3310632][10]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 单服限制满了给
	tOctAvoidLost_Reward[3310632][11] = {}
	tOctAvoidLost_Reward[3310632][11]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310632][11]["ItemChance"] = 0
	tOctAvoidLost_Reward[3310632][11]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310632][11]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310632][11]["RewardItem"][1]["Id"] = 730003
	tOctAvoidLost_Reward[3310632][11]["RewardItem"][1]["Attr"] = "0 1 3"
	
--3310633 普天同庆精装包
	tOctAvoidLost_Reward[3310633] = {}
	-- 0转80级到1转140级奖励礼包
	tOctAvoidLost_Reward[3310633]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310633]["ItemChanceSum"] = 10000
	-- 100%给
	tOctAvoidLost_Reward[3310633][1] = {}
	tOctAvoidLost_Reward[3310633][1]["RandomItemChanceType"] = 1
	tOctAvoidLost_Reward[3310633][1]["RewardItem"] = {}
		-- 黄色神纹精粹（赠）*5 4050001	5	Monopoly 9
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][1]["Id"] = 4050001
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][1]["Attr"] = "0 5 3"
	-- 赤炼石+3（赠） 730003	1	Monopoly 0
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][2] = {}
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][2]["Id"] = 730003
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][2]["Attr"] = "0 1 3"
	-- 马匹+3（赠） 3007283	1	Monopoly 9
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][3] = {}
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][3]["Id"] = 3007283
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][3]["Attr"] = "0 1"
	-- 明亮星陨石 3009001	1	两天时效	Monopoly 9
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][4] = {}
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][4]["Id"] = 3009001
	tOctAvoidLost_Reward[3310633][1]["RewardItem"][4]["Attr"] = "0 1 0 2880 1"
	-- 概率给
	-- 龙血精石 3008994	2	20.0%	Monopoly 9
	tOctAvoidLost_Reward[3310633][2] = {}
	tOctAvoidLost_Reward[3310633][2]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][2]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310633][2]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][2]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][2]["RewardItem"][1]["Id"] = 3008994
	tOctAvoidLost_Reward[3310633][2]["RewardItem"][1]["Attr"] = "0 2"
	-- 3000气力值 3200348	1	20.0%	Monopoly 11
	tOctAvoidLost_Reward[3310633][3] = {}
	tOctAvoidLost_Reward[3310633][3]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][3]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310633][3]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][3]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][3]["RewardItem"][1]["Id"] = 3200348
	tOctAvoidLost_Reward[3310633][3]["RewardItem"][1]["Attr"] = "0 1"
	-- 日常任务重置符 3001407	2	20.0%	Monopoly 0
	tOctAvoidLost_Reward[3310633][4] = {}
	tOctAvoidLost_Reward[3310633][4]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][4]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310633][4]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][4]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][4]["RewardItem"][1]["Id"] = 3001407
	tOctAvoidLost_Reward[3310633][4]["RewardItem"][1]["Attr"] = "0 2 3"
	-- 清心符（不可兑换天石的那种） 720128	3	20.0%	Monopoly 0
	tOctAvoidLost_Reward[3310633][5] = {}
	tOctAvoidLost_Reward[3310633][5]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][5]["ItemChance"] = 2000
	tOctAvoidLost_Reward[3310633][5]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][5]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][5]["RewardItem"][1]["Id"] = 720128
	tOctAvoidLost_Reward[3310633][5]["RewardItem"][1]["Attr"] = "0 3 3"
	-- 赤练石+4 730004	2	10.0%	Monopoly 0
	tOctAvoidLost_Reward[3310633][6] = {}
	tOctAvoidLost_Reward[3310633][6]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][6]["ItemChance"] = 1000
	tOctAvoidLost_Reward[3310633][6]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][6]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][6]["RewardItem"][1]["Id"] = 730004
	tOctAvoidLost_Reward[3310633][6]["RewardItem"][1]["Attr"] = "0 2 3"
	-- 小抽奖券礼包 724002	2	5%	Monopoly 9
	tOctAvoidLost_Reward[3310633][7] = {}
	tOctAvoidLost_Reward[3310633][7]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][7]["ItemChance"] = 500
	tOctAvoidLost_Reward[3310633][7]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["High"]
	tOctAvoidLost_Reward[3310633][7]["Pos"] = 0
	tOctAvoidLost_Reward[3310633][7]["MaxData"] = 10
	tOctAvoidLost_Reward[3310633][7]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310633][7]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][7]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][7]["RewardItem"][1]["Id"] = 724002
	tOctAvoidLost_Reward[3310633][7]["RewardItem"][1]["Attr"] = "0 2"
	-- 龙珠 1088000	1	4.45%	Monopoly 0
	tOctAvoidLost_Reward[3310633][8] = {}
	tOctAvoidLost_Reward[3310633][8]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][8]["ItemChance"] = 445
	tOctAvoidLost_Reward[3310633][8]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["High"]
	tOctAvoidLost_Reward[3310633][8]["Pos"] = 1
	tOctAvoidLost_Reward[3310633][8]["MaxData"] = 20
	tOctAvoidLost_Reward[3310633][8]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310633][8]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][8]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][8]["RewardItem"][1]["Id"] = 1088000
	tOctAvoidLost_Reward[3310633][8]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 固化石 723694	1	0.05%	Monopoly 0
	tOctAvoidLost_Reward[3310633][9] = {}
	tOctAvoidLost_Reward[3310633][9]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][9]["ItemChance"] = 5
	tOctAvoidLost_Reward[3310633][9]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["High"]
	tOctAvoidLost_Reward[3310633][9]["Pos"] = 2
	tOctAvoidLost_Reward[3310633][9]["MaxData"] = 10
	tOctAvoidLost_Reward[3310633][9]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310633][9]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][9]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][9]["RewardItem"][1]["Id"] = 723694
	tOctAvoidLost_Reward[3310633][9]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 赤练石+6 730006	1	0.5%	Monopoly 0
	tOctAvoidLost_Reward[3310633][10] = {}
	tOctAvoidLost_Reward[3310633][10]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][10]["ItemChance"] = 50
	tOctAvoidLost_Reward[3310633][10]["GlobalId"] = tOctAvoidLost_Data["GlobalId"]["High"]
	tOctAvoidLost_Reward[3310633][10]["Pos"] = 3
	tOctAvoidLost_Reward[3310633][10]["MaxData"] = 1
	tOctAvoidLost_Reward[3310633][10]["FullIndex"] = 11
	tOctAvoidLost_Reward[3310633][10]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][10]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][10]["RewardItem"][1]["Id"] = 730006
	tOctAvoidLost_Reward[3310633][10]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 单服限制满了给
	tOctAvoidLost_Reward[3310633][11] = {}
	tOctAvoidLost_Reward[3310633][11]["RandomItemChanceType"] = 2
	tOctAvoidLost_Reward[3310633][11]["ItemChance"] = 0
	tOctAvoidLost_Reward[3310633][11]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310633][11]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310633][11]["RewardItem"][1]["Id"] = 3001407
	tOctAvoidLost_Reward[3310633][11]["RewardItem"][1]["Attr"] = "0 2 3"
	
	-- 4级贵宾十月礼包	3310634	
	tOctAvoidLost_Reward[3310634] = {}
	--二哈将军绑定神佑 200619	1	赠，1%神佑	15天时效
	tOctAvoidLost_Reward[3310634][1] = {}
	tOctAvoidLost_Reward[3310634][1]["EventType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"]
	tOctAvoidLost_Reward[3310634][1]["DataType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	tOctAvoidLost_Reward[3310634][1]["RewardData"] = 1
	tOctAvoidLost_Reward[3310634][1]["RewardTotalData"] = 1
	tOctAvoidLost_Reward[3310634][1]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310634][1]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310634][1]["RewardItem"][1]["Id"] = 200619
	tOctAvoidLost_Reward[3310634][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tOctAvoidLost_Reward[3310634][1]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310634][1]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310634][1]["DeleteItem"][1]["Id"] = 3310634
	tOctAvoidLost_Reward[3310634][1]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310634][1]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310634][1]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310634][1]["EmoneyLog"] = "350	21726	0	0	1	"
	-- 萨摩王子绑定神佑	200618	1	赠，1%神佑	15天时效
	tOctAvoidLost_Reward[3310634][2] = {}
	tOctAvoidLost_Reward[3310634][2]["EventType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"]
	tOctAvoidLost_Reward[3310634][2]["DataType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	tOctAvoidLost_Reward[3310634][2]["RewardData"] = 1
	tOctAvoidLost_Reward[3310634][2]["RewardTotalData"] = 1
	tOctAvoidLost_Reward[3310634][2]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310634][2]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310634][2]["RewardItem"][1]["Id"] = 200618
	tOctAvoidLost_Reward[3310634][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tOctAvoidLost_Reward[3310634][2]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310634][2]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310634][2]["DeleteItem"][1]["Id"] = 3310634
	tOctAvoidLost_Reward[3310634][2]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310634][2]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310634][2]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310634][2]["EmoneyLog"] = "350	21726	0	0	1	"
--5级贵宾十月礼包 3310635
--ImperialRobe 192615 1 赠 30天 1%神佑
	tOctAvoidLost_Reward[3310635] = {}
	tOctAvoidLost_Reward[3310635][1] = {}
	tOctAvoidLost_Reward[3310635][1]["EventType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"]
	tOctAvoidLost_Reward[3310635][1]["DataType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	tOctAvoidLost_Reward[3310635][1]["RewardData"] = 1
	tOctAvoidLost_Reward[3310635][1]["RewardTotalData"] = 1
	tOctAvoidLost_Reward[3310635][1]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310635][1]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310635][1]["RewardItem"][1]["Id"] = 192615
	tOctAvoidLost_Reward[3310635][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctAvoidLost_Reward[3310635][1]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310635][1]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310635][1]["DeleteItem"][1]["Id"] = 3310635
	tOctAvoidLost_Reward[3310635][1]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310635][1]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310635][1]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310635][1]["EmoneyLog"] = "350	21728	0	0	1	"
--ImperialRobe 193195 1 赠 30天 1%神佑
	tOctAvoidLost_Reward[3310635][2] = {}
	tOctAvoidLost_Reward[3310635][2]["EventType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"]
	tOctAvoidLost_Reward[3310635][2]["DataType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	tOctAvoidLost_Reward[3310635][2]["RewardData"] = 1
	tOctAvoidLost_Reward[3310635][2]["RewardTotalData"] = 1
	tOctAvoidLost_Reward[3310635][2]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310635][2]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310635][2]["RewardItem"][1]["Id"] = 193195
	tOctAvoidLost_Reward[3310635][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctAvoidLost_Reward[3310635][2]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310635][2]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310635][2]["DeleteItem"][1]["Id"] = 3310635
	tOctAvoidLost_Reward[3310635][2]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310635][2]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310635][2]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310635][2]["EmoneyLog"] = "350	21728	0	0	1	"
	
--3310636 6级贵宾十月礼包 
--SoulofSword 188185 1 赠 30天 1%神佑
	tOctAvoidLost_Reward[3310636] = {}
	tOctAvoidLost_Reward[3310636][1] = {}
	tOctAvoidLost_Reward[3310636][1]["EventType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"]
	tOctAvoidLost_Reward[3310636][1]["DataType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	tOctAvoidLost_Reward[3310636][1]["RewardData"] = 1
	tOctAvoidLost_Reward[3310636][1]["RewardTotalData"] = 1
	tOctAvoidLost_Reward[3310636][1]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310636][1]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310636][1]["RewardItem"][1]["Id"] = 188185
	tOctAvoidLost_Reward[3310636][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctAvoidLost_Reward[3310636][1]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310636][1]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310636][1]["DeleteItem"][1]["Id"] = 3310636
	tOctAvoidLost_Reward[3310636][1]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310636][1]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310636][1]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310636][1]["EmoneyLog"] = "350	21730	0	0	1	"
--ColorOfWind 192425 1 赠 30天 1%神佑
	tOctAvoidLost_Reward[3310636][2] = {}
	tOctAvoidLost_Reward[3310636][2]["EventType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"]
	tOctAvoidLost_Reward[3310636][2]["DataType"] = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	tOctAvoidLost_Reward[3310636][2]["RewardData"] = 1
	tOctAvoidLost_Reward[3310636][2]["RewardTotalData"] = 1
	tOctAvoidLost_Reward[3310636][2]["RewardItem"] = {}
	tOctAvoidLost_Reward[3310636][2]["RewardItem"][1] = {}
	tOctAvoidLost_Reward[3310636][2]["RewardItem"][1]["Id"] = 192425
	tOctAvoidLost_Reward[3310636][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tOctAvoidLost_Reward[3310636][2]["DeleteItem"] = {}
	tOctAvoidLost_Reward[3310636][2]["DeleteItem"][1] = {}
	tOctAvoidLost_Reward[3310636][2]["DeleteItem"][1]["Id"] = 3310636
	tOctAvoidLost_Reward[3310636][2]["RewardEffect"] = {}
	tOctAvoidLost_Reward[3310636][2]["RewardEffect"]["Effect"] = tOctAvoidLost_Data["Effect"]
	tOctAvoidLost_Reward[3310636][2]["LogId"] = 12001149
	tOctAvoidLost_Reward[3310636][2]["EmoneyLog"] = "350	21730	0	0	1	"
----------------------------------逻辑部分-----------------------------------------------
--上线触发
function OctAvoidLost_GetNormalPack()
	-- 判断时间
	if not Sys_ChkFullTime(tOctAvoidLost_Data["AwardTime"]) then
		return
	end
	-- 判断掩码
	local nCPBEventType = tOctAvoidLost_Data["Stc"]["Login"][1]["EventType"]
	local nCPBDataType = tOctAvoidLost_Data["Stc"]["Login"][1]["DataType"]
	local nGradientEventType = tOctAvoidLost_Data["Stc"]["Login"][2]["EventType"]
	local nGradientDataType = tOctAvoidLost_Data["Stc"]["Login"][2]["DataType"]
	local nVIPEventType = tOctAvoidLost_Data["Stc"]["Login"][3]["EventType"]
	local nVIPDataType = tOctAvoidLost_Data["Stc"]["Login"][3]["DataType"]
	local nComplete = tOctAvoidLost_Data["Stc"]["Login"][1]["Complete"]
	if Task_ChkStcValue(nCPBEventType,nCPBDataType,">=",nComplete) and 
		Task_ChkStcValue(nGradientEventType,nGradientDataType,">=",nComplete) and
		Task_ChkStcValue(nVIPEventType,nVIPDataType,">=",nComplete) then
		return
	end
--3000天石（赠）礼包
	if Task_ChkStcValue(nCPBEventType,nCPBDataType,"<",nComplete) then
		-- 判断背包
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["LoginSpace"])
			return
		end
		Task_SetStatistic(nCPBEventType,nCPBDataType,nComplete,1)
		RewardTemplate_UseItem(tOctAvoidLost_Reward["Login"][1])
	end
--VIP礼包
	if Task_ChkStcValue(nVIPEventType,nVIPDataType,"<",nComplete) then
		-- 判断VIP等级
		local nVip = Get_UserVip()
		if nVip>=4 then
			-- 判断背包
			if not User_CheckLeftSpace(1) then
				Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["LoginSpace"])
				return
			end
			Task_SetStatistic(nVIPEventType,nVIPDataType,nComplete,1)
			RewardTemplate_UseItem(tOctAvoidLost_Reward["Login"][nVip])
		end
	end
--阶梯礼包
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tOctAvoidLost_Data["Level"],tOctAvoidLost_Data["Metempsychosis"][1]) then
		return
	end
	local nIndex = 2
	local nUserId = Get_UserId()
	local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	if nUserMetempsychosis >= tOctAvoidLost_Data["Metempsychosis"][2] then
		nIndex = 3
	end
	if Task_ChkStcValue(nGradientEventType,nGradientDataType,"<",nComplete) then
		-- 判断背包
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["LoginSpace"])
			return
		end
		Task_SetStatistic(nGradientEventType,nGradientDataType,nComplete,1)
		RewardTemplate_UseItem(tOctAvoidLost_Reward["Login"][nIndex])
	end
end
	
-- 普通礼包
function OctAvoidLost_EmoneyMonoPack(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tOctAvoidLost_Data["NormalPackTime"]) then
		if Item_DelItem(nItemId) then 
			User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["OutTime"])
			Sys_SaveActionFestivalLog(tOctAvoidLost_Data["Log"]["DeleteNormalPackOverdue"])
		end
		return
	end
		-- 判断时间 前
	if CommonFunc_GetBeforeActivityTime(tOctAvoidLost_Data["NormalPackTime"]) then
		Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["BeforeTime"])
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tOctAvoidLost_Data["Level1"],tOctAvoidLost_Data["Metempsychosis"][2]) then
		Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["NoLev"])
		return
	end
	-- 判断赠点上限
	local nIndex = 1
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tOctAvoidLost_Reward[nItemId][nIndex]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["EMonoMoneyFull"])
		return
	end
	-- 判断掩码
	local nEventType = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["EventType"]
	local nDataType = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["DataType"]
	local nComplete = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["Complete"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	local nTotalData = (nData - nData%10000)/10000
	if nTotalData == (nComplete-1) then
		nIndex = 2
		RewardTemplate_UseItemAndMsg(tOctAvoidLost_Reward[nItemId][nIndex])
		return
	elseif nTotalData >= nComplete then
		if Item_DelItem(nItemId) then 
			return
		end 
	end
	-- 给奖
	RewardTemplate_UseItemAndMsg(tOctAvoidLost_Reward[nItemId][nIndex])
end

--打开阶梯礼包
function OctAvoidLost_GradientPack(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tOctAvoidLost_Data["GradientPackTime"]) then
		return User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["BeforeTime"])
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tOctAvoidLost_Data["GradientPackTime"]) then
		if Item_DelItem(nItemId) then 
			User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["OutTime"])
			local sLog= string.format(tOctAvoidLost_Data["Log"]["DeleteGradientPackOverdue"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	-- 判断等级
	-- if not User_JudgeLevelAndMetempsychosis(tOctAvoidLost_Data["Level"],tOctAvoidLost_Data["Metempsychosis"][1]) then
		-- return
	-- end
	-- local nIndex = 1
	-- local nUserId = Get_UserId()
	-- local nUserMetempsychosis = Get_UserMetempsychosis(nUserId)
	-- if nUserMetempsychosis >= tOctAvoidLost_Data["Metempsychosis"][2] then
		-- nIndex = 2
	-- end
	-- 判断掩码
	local nEventType = tOctAvoidLost_Data["Stc"]["GradientPack"]["EventType"]
	local nDataType = tOctAvoidLost_Data["Stc"]["GradientPack"]["DataType"]
	local nSingleData = tOctAvoidLost_Data["Stc"]["GradientPack"]["RewardData"]
	local nTotalData = tOctAvoidLost_Data["Stc"]["GradientPack"]["RewardTotalData"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000
	if Task_StcInterval(nEventType,nDataType,1,4) then
		nNowSingleData = 0
		nData = nNowTotalData*10000 + nNowSingleData
		Task_SetStatistic(nEventType,nDataType,nData,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	-- 礼包可最多打开10次
	if nNowTotalData >= nTotalData then
		if Item_DelItem(nItemId) then
			local sLog= string.format(tOctAvoidLost_Data["Log"]["DeleteGradientPackWithAward"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	-- 每天有且仅能打开1次
	if nNowSingleData >= nSingleData then
		Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["OnceaDay"])
		return
	end
	-- 判断背包 第10次比前9次少1个背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tOctAvoidLost_Reward,nItemId)
	if nNowTotalData >= (nTotalData-1) then
		nSpace = nSpace - 1
	end
	local sMsg = string.format(tOctAvoidLost_Text["SystemTips"]["NoSpace"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(sMsg)
		return
	end
	-- 给奖
	nNowSingleData = nNowSingleData + 1
	nNowTotalData = nNowTotalData + 1
	local nNewData = nNowTotalData*10000 + nNowSingleData
	if nNowTotalData >= nTotalData then
		if Item_DelItem(nItemId) then 
			local sLog=string.format(tOctAvoidLost_Data["Log"]["DeleteGradientPackWithAward"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end
	end
	Task_SetStatistic(nEventType,nDataType,nNewData,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	if RewardTemplate_NewRandom(tOctAvoidLost_Reward,nItemId) then 
		Sys_SaveEmoneyBuy(tOctAvoidLost_Data["Log"]["EmoneyLog"][nItemId])
		User_EffectAdd("self",tOctAvoidLost_Data["Effect"])
		return
	end
end 

function OctAvoidLost_VIPPack(nItemId,nIndex)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tOctAvoidLost_Data["VIPPackTime"]) then
		return User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["BeforeTime"])
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tOctAvoidLost_Data["VIPPackTime"]) then
		if Item_DelItem(nItemId) then 
			User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["OutTime"])
			local sLog=string.format(tOctAvoidLost_Data["Log"]["DeleteVIPPackOverdue"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end 
		return
	end
	-- 判断掩码
	local nEventType = tOctAvoidLost_Data["Stc"]["VIPPack"]["EventType"] 
	local nDataType = tOctAvoidLost_Data["Stc"]["VIPPack"]["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,">",0) then
		if Item_DelItem(nItemId) then 
			local sLog=string.format(tOctAvoidLost_Data["Log"]["DeleteVIPPackHaveReceived"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		return
		end 
	end
	if RewardTemplate_UseItemAndMsg(tOctAvoidLost_Reward[nItemId][nIndex]) then 
		return
	end
end 

function OctAvoidLost_ChkPack(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tOctAvoidLost_Data["GradientPackTime"]) then
		return User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["BeforeTime"])
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tOctAvoidLost_Data["GradientPackTime"]) then
		if Item_DelItem(nItemId) then
			User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["OutTime"])
			local sLog=string.format(tOctAvoidLost_Data["Log"]["DeleteGradientPackOverdue"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end 
		return
	end
	-- 判断掩码
	local nEventType = tOctAvoidLost_Data["Stc"]["GradientPack"]["EventType"]
	local nDataType = tOctAvoidLost_Data["Stc"]["GradientPack"]["DataType"]
	local nSingleData = tOctAvoidLost_Data["Stc"]["GradientPack"]["RewardData"]
	local nTotalData = tOctAvoidLost_Data["Stc"]["GradientPack"]["RewardTotalData"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	-- 对掩码值进行分解，取出总的次数跟今天的次数
	local nNowSingleData = nData%10000
	local nNowTotalData = (nData - nNowSingleData)/10000
	if Task_StcInterval(nEventType,nDataType,1,4) then
		nNowSingleData = 0
		nData = nNowTotalData*10000 + nNowSingleData
		Task_SetStatistic(nEventType,nDataType,nData,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	if nNowSingleData>=1 then 
		return Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["OnceaDay"])
	end
	-- 礼包可最多打开10次
	if nNowTotalData <= (nTotalData-1) then
		tItem[nItemId]["Text111"]=string.format(tOctAvoidLost_Text[nItemId]["Text111"],(nNowTotalData+1))
		tItem[nItemId]["OptionFunc1"]="OctAvoidLost_GradientPack</N>" .. nItemId
		if nNowTotalData == 9 then 
			LinkItemGossipFunc_New(nItemId,"1-2")
		else
		LinkItemGossipFunc_New(nItemId,"1-1")
		end 
	end
end 

function OctAvoidLost_ChkVIPPack(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tOctAvoidLost_Data["VIPPackTime"]) then
		return User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["BeforeTime"])
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tOctAvoidLost_Data["VIPPackTime"]) then
		if Item_DelItem(nItemId) then 
			User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["OutTime"])
			local sLog=string.format(tOctAvoidLost_Data["Log"]["DeleteVIPPackOverdue"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
		end 
		return
	end
	tItem[nItemId]["Option1"]=tOctAvoidLost_Text[nItemId]["Option1"]
	tItem[nItemId]["OptionFunc1"]="OctAvoidLost_VIPPack</N>" .. nItemId .. "</N>1"
	tItem[nItemId]["Option2"]=tOctAvoidLost_Text[nItemId]["Option2"]
	tItem[nItemId]["OptionFunc2"]="OctAvoidLost_VIPPack</N>" .. nItemId .. "</N>2"
	LinkItemGossipFunc_New(nItemId,"1-1")
end 
--------------------------------------物品配置-------------------------------------------
-- 3310631 3000天石（赠）礼包
tItemFace[3310631] = 1547
tItem[3310631] = tItem[3310631] or {}
tItem[3310631]["DialogueText"] = tOctAvoidLost_Text[3310631]
tItem[3310631]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tOctAvoidLost_Data["NormalPackTime"]) then
		return User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["BeforeTime"])
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tOctAvoidLost_Data["NormalPackTime"]) then
		if Item_DelItem(nItemId) then 
			User_TalkChannel2005(tOctAvoidLost_Text["SystemTips"]["OutTime"])
			Sys_SaveActionFestivalLog(tOctAvoidLost_Data["Log"]["DeleteNormalPackOverdue"])
		end
		return
	end
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tOctAvoidLost_Data["Level1"],tOctAvoidLost_Data["Metempsychosis"][2]) then
		Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["NoLev"])
		return
	end
	-- 判断赠点上限
	local nIndex = 1
	local nUserId = Get_UserId()
	local nEmoney = Get_UserMonoEMoney(nUserId)
	local nAddEmoney = tOctAvoidLost_Reward[nItemId][nIndex]["RewardEMoneyMono"]["Value"]
	if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["EMonoMoneyFull"])
		return
	end
	-- 判断掩码
	local nEventType = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["EventType"]
	local nDataType = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["DataType"]
	local nComplete = tOctAvoidLost_Data["Stc"]["EmoneyMonoPack"]["Complete"]
	local nData = Get_UserStatisticValue(nEventType,nDataType)
	local nTotalData = (nData - nData%10000)/10000
	local nNowSingleData = nData%10000
	if Task_StcInterval(nEventType,nDataType,1,4) then
		nNowSingleData = 0
	end
	if nNowSingleData>=1 then 
		return Sys_MsgBox(tOctAvoidLost_Text["SystemTips"]["OnceaDay"])
	end
	if nTotalData <= (nComplete-1) then
		tItem[3310631]["Text111"]=string.format(tOctAvoidLost_Text[3310631]["Text111"],(nTotalData+1))
		if nTotalData == 29 then
			LinkItemGossipFunc_New(nItemId,"1-2")
		else
			LinkItemGossipFunc_New(nItemId,"1-1")
		end 
	end 
end 
tItem[3310631]["Text1-1"] = {111}
tItem[3310631]["tOption1-1"] = {1,2}
tItem[3310631]["OptionFunc1"] = "OctAvoidLost_EmoneyMonoPack</N>3310631"

tItem[3310631]["Text1-2"] = {121}
tItem[3310631]["tOption1-2"] = {1,2}

-- 3310632 GloriousPack
tItemFace[3310632] = 1033
tItem[3310632] = tItem[3310632] or {}
tItem[3310632]["DialogueText"] = tOctAvoidLost_Text[3310632]
tItem[3310632]["Function"] = function(nItemId,sItemName)
	OctAvoidLost_ChkPack(nItemId)
end
tItem[3310632]["Text1-1"] = {111,112,113}
tItem[3310632]["tOption1-1"] = {1,2}

tItem[3310632]["Text1-2"] = {121,112,113}
tItem[3310632]["tOption1-2"] = {1,2}
--普天同庆精装包
tItemFace[3310633] = 963
tItem[3310633] = tItem[3310633] or {}
tItem[3310633]["DialogueText"] = tOctAvoidLost_Text[3310633]
tItem[3310633]["Function"] = function(nItemId,sItemName)
	OctAvoidLost_ChkPack(nItemId)
end
tItem[3310633]["Text1-1"] = {111,112,113}
tItem[3310633]["tOption1-1"] = {1,2}

tItem[3310633]["Text1-2"] = {121,112,113}
tItem[3310633]["tOption1-2"] = {1,2}

--4级贵宾十月礼包
tItemFace[3310634] = 1755
tItem[3310634] = tItem[3310634] or {}
tItem[3310634]["DialogueText"] = tOctAvoidLost_Text[3310634]
tItem[3310634]["Function"] = function(nItemId,sItemName)
	OctAvoidLost_ChkVIPPack(nItemId)
end
	
tItem[3310634]["Text1-1"] = {111}
tItem[3310634]["tOption1-1"] = {1,2}

--5级贵宾十月礼包
tItemFace[3310635] = 1756
tItem[3310635] = tItem[3310635] or {}
tItem[3310635]["DialogueText"] = tOctAvoidLost_Text[3310635]
tItem[3310635]["Function"] = function(nItemId,sItemName)
	OctAvoidLost_ChkVIPPack(nItemId)
end
	
tItem[3310635]["Text1-1"] = {111}
tItem[3310635]["tOption1-1"] = {1,2}

--5级贵宾十月礼包
tItemFace[3310636] = 1757
tItem[3310636] = tItem[3310636] or {}
tItem[3310636]["DialogueText"] = tOctAvoidLost_Text[3310636]
tItem[3310636]["Function"] = function(nItemId,sItemName)
	OctAvoidLost_ChkVIPPack(nItemId)
end
	
tItem[3310636]["Text1-1"] = {111}
tItem[3310636]["tOption1-1"] = {1,2}

--------------------------------------上线触发-------------------------------------------
table.insert(tSystem_PlayLogin_Func,OctAvoidLost_GetNormalPack)